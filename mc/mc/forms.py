from django import forms
from appmc.models import Profile, Appointment, ClinicHistory
from django.forms import ModelForm


class UserForm(forms.ModelForm):
    class Meta:
        model = Profile
        fields = '__all__'

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)

        self.fields['id'].widget.attrs.update({
            'class': 'form-control',
        })

        self.fields['role'].widget.attrs.update({
            'class': 'form-control',
        })

        self.fields['user'].widget.attrs.update({
            'class': 'form-control',
        })

        self.fields['doc_user'].widget.attrs.update({
            'class': 'form-control',
        })

        self.fields['typeDocument_user'].widget.attrs.update({
            'class': 'form-control',
        })

        self.fields['date_of_birth'].widget.attrs.update({
            'class': 'form-control',
        })
        self.fields['age_user'].widget.attrs.update({
            'class': 'form-control',
        })
        self.fields['direction_user'].widget.attrs.update({
            'class': 'form-control',
        })

        self.fields['telephone_user'].widget.attrs.update({
            'class': 'form-control',
        })


class AppointmentForm(forms.ModelForm):
    class Meta:
        model = Appointment
        fields = '__all__'

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)

        self.fields['Profile'].widget.attrs.update({
            'class': 'form-control',

        })

        self.fields['appointment_date'].widget.attrs.update({
            'class': 'form-control',
        })

        self.fields['appointment_time'].widget.attrs.update({
            'class': 'form-control',
        })

        self.fields['appointment_type'].widget.attrs.update({
            'class': 'form-control',
        })

        self.fields['appointment_status'].widget.attrs.update({
            'class': 'form-control',
        })


class ClinicHistoryForm(forms.ModelForm):
    class Meta:
        model = ClinicHistory
        fields = '__all__'

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)

        self.fields['number_history'].widget.attrs.update({
            'class': 'form-control',

        })

        self.fields['blood_type'].widget.attrs.update({
            'class': 'form-control',
        })

        self.fields['creation_date'].widget.attrs.update({
            'class': 'form-control',
        })

        self.fields['Profile'].widget.attrs.update({
            'class': 'form-control',
        })

        self.fields['Medicine'].widget.attrs.update({
            'class': 'form-control',
        })


class RegisterForm(forms.Form):
    username = forms.CharField(required=True, min_length=4, max_length=50, widget=forms.TextInput(attrs={
        'class': 'form-control',
        'id': 'username',
        'placeholder': 'Username'
    }))
    email = forms.EmailField(required=True, widget=forms.EmailInput(attrs={
        'class': 'form-control',
        'id': 'email',
        'placeholder': 'nombre@gmail.com'
    }))
    password = forms.CharField(required=True, widget=forms.PasswordInput(attrs={
        'class': 'form-control',
        'placeholder': '*************'
    }))


def clean_username(self):
    username = self.cleaned_data.get('username')

    if User.objects.filter(username=username).exists():
        raise forms.ValidationError('El usuario ya existe')

    return username


def clean_email(self):
    email = self.cleaned_data.get('email')

    if User.objects.filter(email=email).exists():
        raise forms.ValidationError('El email ya existe')

    return email


def clean_password(self):
    password = self.cleaned_data.get('password')

    if User.objects.filter(password=password).exists():
        raise forms.ValidationError('La contraseña ya existe')

    return password

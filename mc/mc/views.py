import smtplib

from django.conf import settings
from django.contrib import messages
from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.decorators import login_required
from django.contrib.auth.models import User

from django.shortcuts import get_object_or_404, redirect, render
from django.template.loader import render_to_string
from django.contrib.auth.decorators import permission_required

from appmc.models import Medicine, Profile, ClinicHistory, CartMedicines
from mc.forms import RegisterForm

from .forms import *
from .forms import RegisterForm
from .utils import get_or_create_cart
from django.core.mail import EmailMessage
from email.message import EmailMessage


"""
Los @ sobre cada funcion se llama decorador que no es mas que una funcion 
llamada direfente
"""

# VISTA CARRITO DE COMPRAS

def cart(request):
    # request.session['cart_id']=None
    cart = get_or_create_cart(request)
    medicine = cart.medicines.all()

    return render(request, 'carts/listcart.html', {
        'cart':cart,
        'medicine': medicine
    })

def add(request):
    cart = get_or_create_cart(request)
    medicine = get_object_or_404(Medicine, pk=request.POST.get('medicine_id'))
    quantity =int(request.POST.get('quantity', 1))


    # cart.medicines.add(medicine, through_defaults={
    #     'quantity': quantity
    # })

    cart_medicine = CartMedicines.objects.create_or_update_quantity(cart=cart,medicine=medicine,quantity=quantity )

    return render(request, 'carts/add.html', {
        'medicine': medicine
    })

def remove(request):
    cart = get_or_create_cart(request)
    # medicine = Medicine.objects.get(pk=request.POST.get('medicine_id'))
    medicine = get_object_or_404(Medicine, pk=request.POST.get('medicine_id'))

    cart.medicines.remove(medicine)

    return redirect('cart')

def index(request):
    return render(request, 'index.html', {
        # context
    })


def login_view(request):
    if request.method == 'POST':
        username = request.POST.get('username')
        password = request.POST.get('password')
        user = authenticate(username=username, password=password)
        if user:
            login(request, user)
            messages.success(request, 'Bienvenido {}'.format(user.username))
            return redirect('indexasistente')

        else:
            messages.error(request, 'Usuario o contraseña incorrectos')
    return render(request, 'auth-signin.html', {

    })


def logout_view(request):
    logout(request)
    messages.success(request, 'Sesion finalizada correctamente')
    return redirect('login')


def register(request):
    form = RegisterForm(request.POST or None)

    if request.method == 'POST' and form.is_valid():
        name_user = request.POST.get('nombre')
        lastName_user = request.POST.get('apellido')
        username = form.cleaned_data.get('username')
        email = form.cleaned_data.get('email')
        password = form.cleaned_data.get('password')

        user = User.objects.create_user(
            username=username, email=email, password=password)
        user.is_staff = True
        user.is_superuser = True
        user.first_name = name_user
        user.last_name = lastName_user
        user.save()

        if user:
            login(request, user)
            messages.success(request, 'Usuario creado exitosamente')
            remitente = "medicconsutlsoft23@gmail.com"
            destinatario = email
            email_password = "ufhddiihdlhlavxc"
            mensaje = "Registro usuario Exitoso"

            message = EmailMessage()
            message['Subject'] = mensaje
            message['From'] = remitente
            message['To'] = destinatario
            message.set_content(f"""Hola {name_user} {lastName_user}

            !Tu cuenta ha sido creada exitosamente con MediConsult! 

            Entra ya a http://127.0.0.1:8000/login/ y disfruta de todos nuestros beneficios.

            Recuerda que tu usuario es {username}
            
            """)

            smtp = smtplib.SMTP("smtp.gmail.com", port=587)
            smtp.starttls()
            smtp.login(remitente, email_password)
            smtp.sendmail(remitente, destinatario, message.as_string())
            smtp.quit()
            return redirect('login')

    return render(request, 'register.html', {
        'form': form
    })


def contact(request):
    if request.method == "POST":
        name = request.POST['name']
        email = request.POST['email']
        subject = request.POST['subject']
        message = request.POST['message']
        
        template = render_to_string('email_template.html', {
            'name': name,
            'email': email,
            'message': message
        })
    
        email = EmailMessage(
            subject,
            template,
            settings.EMAIL_HOST_USER,
            ['medicconsutlsoft23@gmail.com']
        )
    
        email.fail_silently = False
        email.send()
    
    return render(request, 'contactenos.html',{

    })


@login_required
def indexpaciente(request):
    return render(request, 'Paciente/indexpaciente.html', {
        # context
    })


@login_required
def perfilpaciente(request):
    return render(request, 'Paciente/perfilpaciente.html', {
        # context
    })


@login_required
def regiscitaspaciente(request):
    return render(request, 'Paciente/regiscitaspaciente.html', {
        # context
    })


@login_required
def consultcitaspaciente(request):
    return render(request, 'Paciente/consultcitaspaciente.html', {
        # context
    })


@login_required
def consulthispaciente(request):
    return render(request, 'Paciente/consulthispaciente.html', {
        # context
    })


@login_required
def regispagospaciente(request):
    return render(request, 'Paciente/regispagospaciente.html', {
        # context
    })


@login_required
def consultpagospaciente(request):
    return render(request, 'Paciente/consultpagospaciente.html', {
        # context
    })

#================================== VISTAS ASISTENTE (FUNCIONES)==================================
@login_required
def indexasistente(request):
    return render(request, 'Asistente/index_asistente.html', {
    })


@login_required
def perfilasistente(request):
    return render(request, 'Asistente/perfil_asistente.html', {
    })

# ====================================================
# CRUD Usuario
@login_required
def list(request):
    profile = Profile.objects.all()
    return render(
        request, "Asistente/ConsultarPaciente.html",
        {"profile": profile})


@login_required
@permission_required('appmc.add_profile', login_url='SinAcceso')
def create(request):
    if request.method == "POST":
        messages.success(request, 'Usuario registrado')
        User_form = UserForm(request.POST)
        if User_form .is_valid():
            User_form .save()
            return redirect('consultarPaciente')
    else:
        User_form = UserForm()

    return render(
        request, 'Asistente/RegistroPaciente.html',
        {
            'User_form': User_form
        }
    )

@login_required
def update(request, id):
    profile = Profile.objects.filter(id=id).first()
    return render(request, 'Asistente/actualizarPaciente.html', {
        'profile': profile
    })

@login_required
def edit(request):
    if request.method == 'POST':
        id = request.POST.get('id')
        id_user = request.POST.get('iduser')
        first_name = request.POST.get('nombre')
        last_name = request.POST.get('apellido')
        doc_user = request.POST.get('NumDoc')
        typeDocument_user = request.POST.get('tipDoc')
        age_user = request.POST.get('edad')
        direction_user = request.POST.get('direccion')
        email = request.POST.get('correo')

        usuario = User.objects.get(id=id_user)
        usuario.first_name = first_name
        usuario.last_name = last_name
        usuario.email = email
        usuario.save()

        profile = Profile.objects.get(id=id)
        profile.doc_user = doc_user
        profile.typeDocument_user = typeDocument_user
        profile.age_user = age_user
        profile.direction_user = direction_user
        profile.save()

        return redirect('consultarPaciente')

@login_required
def delete(request, id, id_user):
    profile = Profile.objects.get(id=id)
    user= User.objects.get(id=id_user)
    try:
        profile.delete()
        user.delete()
        messages.success(request, '¡Usuario Eliminado!')
    except:
        pass
    return redirect('consultarPaciente')


# ====================================================

# ====================================================
# CRUD Cita
@login_required
def listCita(request):
    Appointments = Appointment.objects.all()
    return render(
        request, "Asistente/ConsultarCita.html",
        {"Appointments": Appointments})

@login_required
def createCita(request):
    if request.method == "POST":
        messages.success(request, 'Cita registrada')
        Appointment_form = AppointmentForm(request.POST)
        if Appointment_form .is_valid():
            Appointment_form .save()
            return redirect('consultarcita')
    else:
        Appointment_form = AppointmentForm()

    return render(
        request, 'Asistente/RegistroCita.html',
        {
            'Appointment_form': Appointment_form
        }
    )

@login_required
def updateCita(request, id):
    cita = Appointment.objects.filter(id=id).first()
    return render(request, 'Asistente/actualizarCita.html', {
        'cita': cita
    })

@login_required
def editCita(request):
    if request.method == 'POST':
        id = request.POST.get('id')
        Profile = request.POST.get('Usuario')
        appointment_date = request.POST.get('FechaCita')
        appointment_time = request.POST.get('HoraCita')
        appointment_type = request.POST.get('TipoCita')
        appointment_status = request.POST.get('EstadoCita')

        cita = Appointment.objects.get(id=id)

        cita.appointment_date = appointment_date
        cita.appointment_time = appointment_time
        cita.appointment_type = appointment_type
        cita.appointment_status = appointment_status
        cita.save()

        return redirect('consultarcita')

@login_required
def deleteCita(request, id):
    cita = Appointment.objects.get(id=id)
    try:
        cita.delete()
        messages.success(request, '¡Cita Eliminada!')
    except:
        pass
    return redirect('consultarcita')


# ====================================================
# ====================================================
# CONSULTAR historia Clinica
@login_required
def consultarHistoriacli(request):
    clinicHistory = ClinicHistory.objects.all()
    return render(
        request, 'Asistente/ConsultarHistoria.html',
        {"ClinicHistory": clinicHistory})


@login_required
def registroPago(request):
    return render(request, 'Asistente/RegistroPago.html', {
    })


@login_required
def consultarPago(request):
    return render(request, 'Asistente/ConsultarPago.html', {
    })


@login_required
def RegistrarMedicamento(request):
    # organizara  los registros del mas reciente al mas antiguo
    medicines = Medicine.objects.all().order_by('-id')

    return render(request, 'Asistente/RegistrarMedicamento.html', {
        'message': 'Listado de productor',
        'medicines': medicines
    })

@login_required
def acceso (request):
    user = request.user if request.user.is_authenticated else None
    profile = Profile.objects.get(user=user)
    return render(request, "acceso.html", {
        'profile': profile
    })

 #==================================VISTAS MEDICO(FUNCIONES)==================================
@login_required
def indexmedico(request):
    return render(request, 'medico/index_medico.html', {
    })


@login_required
def perfilmedico(request):
    return render(request, 'medico/perfil_medico.html', {
    })


@login_required
def consultaPaciente(request):
    profile = Profile.objects.all()
    return render(request, 'Medico/ConsultarPaciente.html', {
        "profile": profile
    })


@login_required
def consultar_cita(request):
    Appointments = Appointment.objects.all()
    return render(request, 'Medico/ConsultarCita.html', {
        "Appointments": Appointments
    })

@login_required
def consultar_Historia(request):
    clinicHistory = ClinicHistory.objects.all()
    return render(request, 'Medico/ConsultarHistoria.html', {
        "ClinicHistory": clinicHistory
    })


@login_required
def registroHistoria(request):
    if request.method == "POST":
        messages.success(request, 'Historia Clinica registrada')
        ClinicHistory_form = ClinicHistoryForm(request.POST)
        if ClinicHistory_form .is_valid():
            ClinicHistory_form .save()
            return redirect('consultar_Historia')
    else:
        ClinicHistory_form = ClinicHistoryForm()

    return render(
        request, 'Medico/RegistroHistoria.html',
        {
            'ClinicHistory_form': ClinicHistoryForm
        }
    )

@login_required
def deleteHistoria(request, number_history):
    clinicHistory = ClinicHistory.objects.get(number_history=number_history)
    try:
        clinicHistory.delete()
        messages.success(request, '¡Historia Clinica Eliminada!')
    except:
        pass
    return redirect('consultar_Historia')

@login_required
def actualizarHistoria(request, number_history):
    clinicHistory = ClinicHistory.objects.filter(number_history=number_history).first()
    return render(request, 'Medico/actualizarHistoria.html', {
        'clinicHistory': clinicHistory
    })

@login_required
def editHistoria(request):
    if request.method == 'POST':
        number_history = request.POST.get('id')
        blood_type = request.POST.get('grupsan')
        creation_date = request.POST.get('FechaCre')
        Profile = request.POST.get('Usuario')
        Medicine = request.POST.get('Medicina')

        clinicHistory = ClinicHistory.objects.get(number_history=number_history)

        clinicHistory.blood_type  = blood_type 
        clinicHistory.creation_date = creation_date
    
        clinicHistory.save()

        return redirect('consultar_Historia')


@login_required
def consultaPago(request):
    return render(request, 'Medico/ConsultarPago.html', {
    })

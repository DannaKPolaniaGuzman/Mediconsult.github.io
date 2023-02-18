import uuid
from enum import unique
from types import MemberDescriptorType

from django.contrib.auth.models import User
from django.db import models
from django.db.models.signals import pre_save
from django.db.models.signals import post_save
from django.db.models.signals import m2m_changed
from django.utils.html import format_html
from django.utils.text import slugify
from django.utils.translation import gettext_lazy as _
import decimal
'''MODULO USUARIO'''

class Profile(models.Model):
    class RoleUser(models.IntegerChoices):
        ADMIN = 0, _('Administrador')
        ASSISTANT = 1, _('Asistente')
        DOCTOR = 2, _('Medico')
        PATIENT = 3, _('Paciente')

    class TypeDocument(models.IntegerChoices):
        RC= 0, _('Registro civil')
        TI = 1, _('Tarjeta Identidad')
        CC = 2, _('Cedula Ciudadania')
        CE = 3, _('Cedula Extranjeria')
    
    id = models.PositiveIntegerField(verbose_name='id', primary_key=True)
    role = models.PositiveIntegerField(default=RoleUser.PATIENT, choices=RoleUser.choices, verbose_name="Rol")
    user = models.OneToOneField(User,on_delete=models.CASCADE, verbose_name="Usuario" )
    doc_user = models.PositiveIntegerField(verbose_name='Numero de Documento')
    typeDocument_user = models.PositiveIntegerField(default=TypeDocument.TI, choices=TypeDocument.choices,  verbose_name="Tipo Documento")
    date_of_birth = models.DateField(verbose_name="Fecha nacimiento")
    age_user =  models.PositiveIntegerField(verbose_name="Edad")
    direction_user = models.CharField(max_length=200, verbose_name="Direccion")
    telephone_user =  models.PositiveIntegerField (verbose_name="Telefono")

    def __str__(self):
        return str(self.user)

    class Meta:
        verbose_name = 'Usuario'
        verbose_name_plural = 'Usuarios'
        db_table = 'usuario'
        ordering = ['doc_user']

'''MODULO MEDICO'''
class Medical(models.Model):
    location =  models.CharField (max_length=255, verbose_name="Consultorio")
    balance =  models.PositiveIntegerField (verbose_name="Sueldo")

    Profile= models.ForeignKey(Profile, on_delete = models.CASCADE, verbose_name="Usuario") 
    

    def __int__(self):
        return self.id

    class Meta:
        verbose_name = 'Medico'
        verbose_name_plural = 'Medicos'
        db_table = 'medico'
        ordering = ['id']

'''MODULO MEDICAMENTO'''

class Medicine(models.Model):
    name_medicine = models.CharField(max_length=50, verbose_name="Nombre Medicamento")
    description = models.TextField(verbose_name="Descripción Medicamento")
    fabrication_date= models.DateField( verbose_name="Fecha Fabricación")
    expiration_date= models.DateField( verbose_name="Fecha Vencimiento")
    quantity=  models.PositiveIntegerField( verbose_name="Cantidad")
    price =  models.PositiveIntegerField( verbose_name="Precio del medicamento")
    presentation = models.CharField(max_length=100, verbose_name="Presentacion")
    slug = models.SlugField(null=False, blank=False, unique=True)
    image = models.ImageField(upload_to='media', null=True, blank=True,verbose_name='Imagen del medicamento')

    #def save(self, *args, **kwargs): #SLUGS AUTOMATICOS
    #    self.slug = slugify(self.name_medicine)
    #    super(Medicine, self).save(*args, **kwargs)
    
    def show_image(self):
        return format_html('<img src={} width="100" /> ', self.image.url)

    class Meta:
        verbose_name = 'Medicamento'
        verbose_name_plural = 'Medicamentos'
        db_table = 'medicamento'
        ordering = ['id']
#Funcion con callback y pre save, viene siendo lo mismo que la funcion pasada comentada coo save.
def set_slug(sender, instance, *args, **kwargs): #callback
    if instance.name_medicine and not instance.slug:
        slug = slugify(instance.name_medicine)
        #asis e genera un slug unico en la BD
        while Medicine.objects.filter(slug=slug).exists():
            slug = slugify(
                '{}-{}'.format(instance.name_medicine, str(uuid.uuid4()) [:8] ) #8 caracteres
            )

        instance.slug = slug

pre_save.connect(set_slug, sender=Medicine)

'''MODULO HISTORIA CLINICA'''

class ClinicHistory(models.Model):
    number_history=  models.PositiveIntegerField (verbose_name="Id historia")
    blood_type = models.CharField(max_length=3, verbose_name="Grupo sanguineo")
    creation_date = models.DateField(verbose_name="Fecha Creación")

    Profile = models.OneToOneField(Profile, on_delete = models.CASCADE, verbose_name="Usuario")   
    Medicine = models.ForeignKey(Medicine, on_delete = models.CASCADE, verbose_name="Medicina") 

    def __int__(self):
        return self.Profile

    class Meta:
        verbose_name = 'Historia Clinica'
        verbose_name_plural = 'Historias Clinicas'
        db_table = 'historiaclinica'
        ordering = ['Profile']

'''MODULO ALERGIAS'''

class Allergies(models.Model):
    allergie = models.CharField(max_length=255, verbose_name="Alergias")

    ClinicHistory= models.ForeignKey(ClinicHistory, on_delete = models.CASCADE, verbose_name="Historia Clinica") 

    def __int__(self):
        return self.id

    class Meta:
        verbose_name = 'Alergia'
        verbose_name_plural = 'Alergias'
        db_table = 'alergia'
        ordering = ['id']

'''MODULO ORDENES HISTORIAS'''

class OrderHistory(models.Model):
    external_order= models.CharField(max_length=60, verbose_name="Ordenes externas")

    ClinicHistory= models.ForeignKey(ClinicHistory, on_delete = models.CASCADE, verbose_name="Historia Clinica") 

    def __int__(self):
        return self.ClinicHistory

    class Meta:
        verbose_name = 'Orden Historia'
        verbose_name_plural = 'Ordenes Historias'
        db_table = 'ordeneshistoria'
        ordering = ['id']

'''MODULO ANTECEDENTES'''

class Background(models.Model):
    disease= models.CharField(max_length=255, verbose_name="Enfermedades")
    observation= models.TextField( verbose_name="Observaciones")
   
    ClinicHistory= models.ForeignKey(ClinicHistory, on_delete = models.CASCADE, verbose_name="Historia Clinica") 

    def __int__(self):
        return self.ClinicHistory

    class Meta:
        verbose_name = 'Antecedente'
        verbose_name_plural = 'Antecedentes'
        db_table = 'antecedente'
        ordering = ['id']

'''MODULO TRATAMIENTO'''

class Treatment(models.Model):
    detail_treatment= models.TextField(verbose_name="Detalle del Tratamiento")
    duration_treatment= models.TextField(verbose_name="Duracion del Tratamiento")
    date_treatment= models.DateField( verbose_name="Fecha Tratamiento")

    ClinicHistory= models.ForeignKey(ClinicHistory, on_delete = models.CASCADE, verbose_name="Historia Clinica") 

    def __int__(self):
        return self.ClinicHistoryme

    class Meta:
        verbose_name = 'Tratamiento'
        verbose_name_plural = 'Tratamientos'
        db_table = 'tratamiento'
        ordering = ['id']

'''MODULO AVANCE TRATAMIENTO'''

class EvolutionTreatment(models.Model):
    evolution_date= models.DateField( verbose_name="Fecha Evolucion")
    evolution_time= models.TimeField( verbose_name="Hora Evolucion")
    state = models.CharField(max_length=45, verbose_name="Estado")
    procedure_performed = models.CharField(max_length=45, verbose_name="Procedimiento realizado")

    Treatment= models.ForeignKey(Treatment, on_delete = models.CASCADE, verbose_name="Tratamiento") 

    def __int__(self):
        return self.Treatment

    class Meta:
        verbose_name = 'Evolucion Tratamiento'
        verbose_name_plural = 'Evoluciones Tratamientos'
        db_table = 'evolucionestratamiento'
        ordering = ['id']

'''MODULO CARTA DENTAL'''

class DentalChart(models.Model):
    analysis= models.TextField(verbose_name="Analisis")
    diagnosis = models.TextField(verbose_name="Diagnostico")

    ClinicHistory= models.ForeignKey(ClinicHistory, on_delete = models.CASCADE, verbose_name="Historia Clinica") 

    def __int__(self):
        return self.ClinicHistory

    class Meta:
        verbose_name = 'Carta Dental'
        verbose_name_plural = 'Cartas Dentales'
        db_table = 'cartadental'
        ordering = ['id']

'''MODULO DIENTE PACIENTE'''

class PatientTooth(models.Model):
    odontogram= models.TextField(verbose_name="Odontograma")

    DentalChart= models.ForeignKey(DentalChart, on_delete = models.CASCADE, verbose_name="Carta Dental") 
    EvolutionTreatment= models.ForeignKey(EvolutionTreatment, on_delete = models.CASCADE, verbose_name="Evolucion del tratamiento") 

    def __int__(self):
        return self.id

    class Meta:
        verbose_name = 'Diente Paciente'
        verbose_name_plural = 'Dientes Pacientes'
        db_table = 'dientespacientes'
        ordering = ['id']


'''MODULO CITAS MEDICAS'''
class Appointment(models.Model):
    class StatusAppointment(models.IntegerChoices):
        REGISTRADA = 0, _('Registrada')
        REPROGRAMADA = 1, _('Reprogramada')
        CANCELADA = 2, _('Cancelada')

    appointment_date= models.DateField( verbose_name="Fecha Cita")
    appointment_time= models.TimeField( verbose_name="Hora Cita")
    appointment_type=  models.CharField( max_length=100, verbose_name="Tipo de Cita")
    appointment_status = models.PositiveIntegerField(default=StatusAppointment.REGISTRADA, choices=StatusAppointment.choices,  verbose_name="Estado Cita")

    Profile = models.ForeignKey(Profile, on_delete = models.CASCADE, verbose_name="Usuario")  
    

    def __int__(self):
        return self.Profile

    class Meta:
        verbose_name = 'Agendamiento de Cita'
        verbose_name_plural = 'Agendamientos de Cita'
        db_table = 'cita'
        ordering = ['id']


'''MODULO PAGO'''

class Payment(models.Model):
    payment_date= models.DateField( verbose_name="Fecha Pago")
    payment_time= models.TimeField( verbose_name="Hora Pago")
    appointment_date= models.DateField( verbose_name="Fecha Cita")
    value = models.PositiveIntegerField (verbose_name="Valor de la cita")
    identity_user = models.PositiveIntegerField(verbose_name='Numero de Documento')
    proof_of_payment = models.FileField( max_length=100, verbose_name="Comprobante de pago")

    Appointment = models.ForeignKey(Appointment, on_delete = models.CASCADE, verbose_name="Cita") 

    def __int__(self):
        return self.id

    class Meta:
        verbose_name = 'Pago'
        verbose_name_plural = 'Pagos'
        db_table = 'pago'
        ordering = ['id']

'''MODULO CARRITO'''
class Cart(models.Model): 
    cart_id = models.CharField(max_length=100, null=False, blank=False, unique=True)
    user= models.ForeignKey(User, null=True, blank=True, on_delete = models.CASCADE, verbose_name="Usuario")
    medicines = models.ManyToManyField(Medicine, through='CartMedicines')
    subtotal = models.DecimalField(default =0.0, max_digits=8 , decimal_places=2)
    total = models.DecimalField(default =0.0, max_digits=8 , decimal_places=2)
    created_at = models.DateTimeField(auto_now_add=True)

    FEE = 0.005 # 0.5%

    def __str__(self):
        return self.cart_id

    class Meta:
        verbose_name = 'Carrito'
        verbose_name_plural = 'Carritos'
        db_table = 'Carro'
        ordering = ['id']
    
    def update_totals(self):
        self.update_subtotal()
        self.update_total()
    
    def update_subtotal(self):
        self.subtotal = sum([ 
           cp.quantity * cp.medicine.price for cp in self.medicines_related()
         ])
        self.save()

    def update_total(self):
        self.total = self.subtotal + (self.subtotal * decimal.Decimal(Cart.FEE))
        self.save()

    def medicines_related(self):
        return self.cartmedicines_set.select_related('medicine')

class CartMedicinesManager(models.Manager):

        def create_or_update_quantity(self, cart, medicine, quantity=1):
            object, created = self.get_or_create(cart=cart, medicine=medicine)

            if not created:
                quantity = object.quantity + quantity
                
            object.update_quantity(quantity)    
            return object


class CartMedicines(models.Model):
    cart = models.ForeignKey(Cart, on_delete=models.CASCADE)
    medicine = models.ForeignKey(Medicine, on_delete=models.CASCADE)
    quantity = models.PositiveIntegerField(default=1)
    created_at = models.DateTimeField(auto_now_add=True)

    objects = CartMedicinesManager()

    def update_quantity(self, quantity=1):
        self.quantity = quantity
        self.save()

def set_cart_id(sender, instance, *args, **kwargs):
    if not instance.cart_id:
        instance.cart_id = str(uuid.uuid4())

def update_totals(sender, instance, action, *args, **kwargs):
    if action == 'post_add' or action == 'post_remove' or action == 'post_clear':
        instance.update_totals()

def post_save_update_totals(sender, instance, *args, **kwargs):
    instance.cart.update_totals()

pre_save.connect(set_cart_id, sender=Cart)
post_save.connect(post_save_update_totals, sender=CartMedicines)
m2m_changed.connect(update_totals,sender=Cart.medicines.through )




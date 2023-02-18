from django.contrib import admin
from import_export import resources
from import_export.admin import ImportExportModelAdmin

from . models import Allergies, Background, ClinicHistory, DentalChart, EvolutionTreatment, Medicine, OrderHistory, PatientTooth, Treatment, Profile, Medical, Appointment, Payment, Cart

admin.site.register(Profile)
admin.site.register(Cart)
admin.site.register(Medical)
#admin.site.register(Medicine)
#admin.site.register(ClinicHistory)
admin.site.register(Allergies)
admin.site.register(OrderHistory)
admin.site.register(Background)
admin.site.register(Treatment)
admin.site.register(EvolutionTreatment)
admin.site.register(DentalChart)
admin.site.register(PatientTooth)
#admin.site.register(Payment)
admin.site.register(Appointment)

""" DE ESTA MANERA SE UTILIZA EL IMPORT
class ProductResource(resources.ModelResource):
    class Meta:
        model = Product
        fields = ('name', 'price', 'category')//campos de la clase 
        export
        """
"""@admin.register(ClinicHistory)
class HistoryAdmin:
    class """

@admin.register(ClinicHistory) #Los @ se llaman decoradores
class ClinicHistoryAdmin(ImportExportModelAdmin):
    list_display = ['number_history','blood_type', 'Profile', 'Medicine','creation_date' ]
    list_display_links = ['number_history',"creation_date" ]
    list_editable = ['Medicine']
    search_fields = ['User']

class ClinicResource(resources.ModelResource):
    class Meta:
        model = ClinicHistory
        fields = ('number_history','blood_type', 'Profile', 'Medicine','creation_date') 
        #export

@admin.register(Payment)
class PaymentAdmin(ImportExportModelAdmin):
    list_display = ['payment_date','payment_time', 'appointment_date', 'value','identity_user','proof_of_payment', 'Appointment' ]
    list_display_links = ['payment_date','identity_user']
    list_editable = ['value','proof_of_payment']
    search_fields = ['identity_user']

class PaymentResource(resources.ModelResource):
    class Meta:
        model = Payment
        fields = ('payment_date','payment_time', 'appointment_date', 'value','identity_user','proof_of_payment', 'Appointment') 
        #export

@admin.register(Medicine)
class MedicineAdmin(admin.ModelAdmin):
    fields = ('name_medicine', 'description', 'fabrication_date','expiration_date','quantity','price','presentation','image')
    list_display = ['name_medicine','description','slug', 'fabrication_date', 'expiration_date','quantity','price', 'presentation', 'show_image' ]
    list_display_links = ['description' ]
    list_editable = ['quantity','price']
    search_fields = ['presentation']
    
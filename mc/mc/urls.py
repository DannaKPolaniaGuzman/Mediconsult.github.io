
from django.conf import settings
from django.conf.urls.static import static
from django.contrib import admin
from django.contrib.auth.views import (PasswordResetCompleteView,
                                       PasswordResetConfirmView,
                                       PasswordResetDoneView,
                                       PasswordResetView)
from django.urls import include, path, re_path

from appmc.views import MedicineListView

from . import views

urlpatterns = [
    path('admin/', admin.site.urls, name="admin"),
    path('', views.index, name="index"),
    path('login/', views.login_view, name='login'),
    path('logout', views.logout_view, name='logout'),
    path('register', views.register, name='register'),
    path('contact/', views.contact, name='contact'),
    path('medicine/', include('appmc.urls')),

    # urls carrito
    path('carrito/', views.cart, name='cart'),
    path('agregar/', views.add, name='agregar'),
    path('eliminar', views.remove, name='remove'),

    # URLS CONTACT
    path('reset/password_reset', PasswordResetView.as_view(template_name='registration/password_reset_forms.html',
                                                           email_template_name="registration/password_reset_email.html"), name='password_reset'),

    path('reset/password_reset_done', PasswordResetDoneView.as_view(template_name='registration/password_reset_done.html'),
         name='password_reset_done'),

    re_path(r'^reset/(?P<uidb64>[0-9A-za-z_\-]+)/(?P<token>.+)/$',
            PasswordResetConfirmView.as_view(template_name='registration/password_reset_confirm.html'), name='password_reset_confirm'),

    path('reset/done', PasswordResetCompleteView.as_view(template_name='registration/password_reset_complete.html'),
         name='password_reset_complete'),

    # urls PACIENTE
    path('indexpaciente/', views.indexpaciente, name="indexpaciente"),
    path('perfilpaciente/', views.perfilpaciente, name="perfilpaciente"),
    path('regiscitaspaciente/', views.regiscitaspaciente,
         name="regiscitaspaciente"),
    path('consultcitaspaciente/', views.consultcitaspaciente,
         name="consultcitaspaciente"),
    path('consulthispaciente/', views.consulthispaciente,
         name="consulthispaciente"),
    path('regispagospaciente/', views.regispagospaciente,
         name="regispagospaciente"),
    path('consultpagospaciente/', views.consultpagospaciente,
         name="consultpagospaciente"),

    # urls ASISTENTE

    path('index_asistente', views.indexasistente, name='indexasistente'),
    path('perfil_asistente', views.perfilasistente, name='perfilasistente'),

    path('Registro_UsuariosPa', views.create, name='registroPaciente'),
    path('Consultar_UsuariosPa', views.list, name='consultarPaciente'),
    path('delete/<int:id><int:id_user>', views.delete, name='eliminarPaciente'),
    path('edit/', views.edit, name='actualizarPaciente'),
    path('mostrar/<int:id>', views.update, name='mostrarPaciente'),


    path('Registro_Cita', views.createCita, name='registroCita'),
    path('ConsultarCita', views.listCita, name='consultarcita'),
    path('Eliminar/<int:id>', views.deleteCita, name='eliminarCita'),
    path('Editar/', views.editCita, name='actualizarCita'),
    path('MostrarCita/<int:id>', views.updateCita, name='mostrarCita'),

    path('ConsultarHistoria', views.consultarHistoriacli, name='consultarHistoria'),

    path('Registro_Pago', views.registroPago, name='registroPago'),
    path('ConsultarPago', views.consultarPago, name='consultarPago'),

    path('RegistrarMedicamento', MedicineListView.as_view(),
         name='RegistrarMedicamento'),

    path('sinacceso', views.acceso, name = 'SinAcceso'),


    # urls MEDICO

    path('index_medico', views.indexmedico, name='indexmedico'),
    path('perfil_medico', views.perfilmedico, name='perfilmedico'),

    path('ConsultarPaciente', views.consultaPaciente, name='consultaPaciente'),

    path('Consultar_Cita', views.consultar_cita, name='consultar_cita'),

    path('Registro_Cita', views.createCita, name='registroCita'),
    path('ConsultarCita', views.listCita, name='consultarcita'),
    path('Eliminar/<int:id>', views.deleteCita, name='eliminarCita'),
    path('Editar/', views.editCita, name='actualizarCita'),
    path('MostrarCita/<int:id>', views.updateCita, name='mostrarCita'),

    path('RegistrarHistoria', views.registroHistoria, name='registroHistoria'),
    path('Consultar_Historia', views.consultar_Historia, name='consultar_Historia'),
    path('EliminarHistoria/<int:number_history>', views.deleteHistoria, name='eliminarHistoria'),
    path('EditarHistoria/', views.editHistoria, name='actualizarHistoria'),
    path('MostrarHistoria/<int:number_history>', views.actualizarHistoria, name='mostrarHistoria'),

    path('ConsultarPago', views.consultaPago, name='consultaPago'),


]

if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL,
                          document_root=settings.MEDIA_ROOT)

# Generated by Django 4.1.3 on 2022-11-15 01:28

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name='Appointment',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('appointment_date', models.DateField(verbose_name='Fecha Cita')),
                ('appointment_time', models.TimeField(verbose_name='Hora Cita')),
                ('appointment_type', models.CharField(max_length=100, verbose_name='Tipo de Cita')),
                ('appointment_status', models.PositiveIntegerField(choices=[(0, 'Registrada'), (1, 'Reprogramada'), (2, 'Cancelada')], default=0, verbose_name='Estado Cita')),
            ],
            options={
                'verbose_name': 'Agendamiento de Cita',
                'verbose_name_plural': 'Agendamientos de Cita',
                'db_table': 'cita',
                'ordering': ['id'],
            },
        ),
        migrations.CreateModel(
            name='Cart',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('cart_id', models.CharField(max_length=100, unique=True)),
                ('subtotal', models.DecimalField(decimal_places=2, default=0.0, max_digits=8)),
                ('total', models.DecimalField(decimal_places=2, default=0.0, max_digits=8)),
                ('created_at', models.DateTimeField(auto_now_add=True)),
            ],
            options={
                'verbose_name': 'Carrito',
                'verbose_name_plural': 'Carritos',
                'db_table': 'Carro',
                'ordering': ['id'],
            },
        ),
        migrations.CreateModel(
            name='ClinicHistory',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('number_history', models.PositiveIntegerField(verbose_name='Id historia')),
                ('blood_type', models.CharField(max_length=3, verbose_name='Grupo sanguineo')),
                ('creation_date', models.DateField(verbose_name='Fecha Creación')),
            ],
            options={
                'verbose_name': 'Historia Clinica',
                'verbose_name_plural': 'Historias Clinicas',
                'db_table': 'historiaclinica',
                'ordering': ['Profile'],
            },
        ),
        migrations.CreateModel(
            name='DentalChart',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('analysis', models.TextField(verbose_name='Analisis')),
                ('diagnosis', models.TextField(verbose_name='Diagnostico')),
                ('ClinicHistory', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='appmc.clinichistory', verbose_name='Historia Clinica')),
            ],
            options={
                'verbose_name': 'Carta Dental',
                'verbose_name_plural': 'Cartas Dentales',
                'db_table': 'cartadental',
                'ordering': ['id'],
            },
        ),
        migrations.CreateModel(
            name='EvolutionTreatment',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('evolution_date', models.DateField(verbose_name='Fecha Evolucion')),
                ('evolution_time', models.TimeField(verbose_name='Hora Evolucion')),
                ('state', models.CharField(max_length=45, verbose_name='Estado')),
                ('procedure_performed', models.CharField(max_length=45, verbose_name='Procedimiento realizado')),
            ],
            options={
                'verbose_name': 'Evolucion Tratamiento',
                'verbose_name_plural': 'Evoluciones Tratamientos',
                'db_table': 'evolucionestratamiento',
                'ordering': ['id'],
            },
        ),
        migrations.CreateModel(
            name='Medicine',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name_medicine', models.CharField(max_length=50, verbose_name='Nombre Medicamento')),
                ('description', models.TextField(verbose_name='Descripción Medicamento')),
                ('fabrication_date', models.DateField(verbose_name='Fecha Fabricación')),
                ('expiration_date', models.DateField(verbose_name='Fecha Vencimiento')),
                ('quantity', models.PositiveIntegerField(verbose_name='Cantidad')),
                ('price', models.PositiveIntegerField(verbose_name='Precio del medicamento')),
                ('presentation', models.CharField(max_length=100, verbose_name='Presentacion')),
                ('slug', models.SlugField(unique=True)),
                ('image', models.ImageField(blank=True, null=True, upload_to='media', verbose_name='Imagen del medicamento')),
            ],
            options={
                'verbose_name': 'Medicamento',
                'verbose_name_plural': 'Medicamentos',
                'db_table': 'medicamento',
                'ordering': ['id'],
            },
        ),
        migrations.CreateModel(
            name='Treatment',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('detail_treatment', models.TextField(verbose_name='Detalle del Tratamiento')),
                ('duration_treatment', models.TextField(verbose_name='Duracion del Tratamiento')),
                ('date_treatment', models.DateField(verbose_name='Fecha Tratamiento')),
                ('ClinicHistory', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='appmc.clinichistory', verbose_name='Historia Clinica')),
            ],
            options={
                'verbose_name': 'Tratamiento',
                'verbose_name_plural': 'Tratamientos',
                'db_table': 'tratamiento',
                'ordering': ['id'],
            },
        ),
        migrations.CreateModel(
            name='Profile',
            fields=[
                ('id', models.PositiveIntegerField(primary_key=True, serialize=False, verbose_name='id')),
                ('role', models.PositiveIntegerField(choices=[(0, 'Administrador'), (1, 'Asistente'), (2, 'Medico'), (3, 'Paciente')], default=3, verbose_name='Rol')),
                ('doc_user', models.PositiveIntegerField(verbose_name='Numero de Documento')),
                ('typeDocument_user', models.PositiveIntegerField(choices=[(0, 'Registro civil'), (1, 'Tarjeta Identidad'), (2, 'Cedula Ciudadania'), (3, 'Cedula Extranjeria')], default=1, verbose_name='Tipo Documento')),
                ('date_of_birth', models.DateField(verbose_name='Fecha nacimiento')),
                ('age_user', models.PositiveIntegerField(verbose_name='Edad')),
                ('direction_user', models.CharField(max_length=200, verbose_name='Direccion')),
                ('telephone_user', models.PositiveIntegerField(verbose_name='Telefono')),
                ('user', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL, verbose_name='Usuario')),
            ],
            options={
                'verbose_name': 'Usuario',
                'verbose_name_plural': 'Usuarios',
                'db_table': 'usuario',
                'ordering': ['doc_user'],
            },
        ),
        migrations.CreateModel(
            name='Payment',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('payment_date', models.DateField(verbose_name='Fecha Pago')),
                ('payment_time', models.TimeField(verbose_name='Hora Pago')),
                ('appointment_date', models.DateField(verbose_name='Fecha Cita')),
                ('value', models.PositiveIntegerField(verbose_name='Valor de la cita')),
                ('identity_user', models.PositiveIntegerField(verbose_name='Numero de Documento')),
                ('proof_of_payment', models.FileField(upload_to='', verbose_name='Comprobante de pago')),
                ('Appointment', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='appmc.appointment', verbose_name='Cita')),
            ],
            options={
                'verbose_name': 'Pago',
                'verbose_name_plural': 'Pagos',
                'db_table': 'pago',
                'ordering': ['id'],
            },
        ),
        migrations.CreateModel(
            name='PatientTooth',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('odontogram', models.TextField(verbose_name='Odontograma')),
                ('DentalChart', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='appmc.dentalchart', verbose_name='Carta Dental')),
                ('EvolutionTreatment', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='appmc.evolutiontreatment', verbose_name='Evolucion del tratamiento')),
            ],
            options={
                'verbose_name': 'Diente Paciente',
                'verbose_name_plural': 'Dientes Pacientes',
                'db_table': 'dientespacientes',
                'ordering': ['id'],
            },
        ),
        migrations.CreateModel(
            name='OrderHistory',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('external_order', models.CharField(max_length=60, verbose_name='Ordenes externas')),
                ('ClinicHistory', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='appmc.clinichistory', verbose_name='Historia Clinica')),
            ],
            options={
                'verbose_name': 'Orden Historia',
                'verbose_name_plural': 'Ordenes Historias',
                'db_table': 'ordeneshistoria',
                'ordering': ['id'],
            },
        ),
        migrations.CreateModel(
            name='Medical',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('location', models.CharField(max_length=255, verbose_name='Consultorio')),
                ('balance', models.PositiveIntegerField(verbose_name='Sueldo')),
                ('Profile', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='appmc.profile', verbose_name='Usuario')),
            ],
            options={
                'verbose_name': 'Medico',
                'verbose_name_plural': 'Medicos',
                'db_table': 'medico',
                'ordering': ['id'],
            },
        ),
        migrations.AddField(
            model_name='evolutiontreatment',
            name='Treatment',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='appmc.treatment', verbose_name='Tratamiento'),
        ),
        migrations.AddField(
            model_name='clinichistory',
            name='Medicine',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='appmc.medicine', verbose_name='Medicina'),
        ),
        migrations.AddField(
            model_name='clinichistory',
            name='Profile',
            field=models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, to='appmc.profile', verbose_name='Usuario'),
        ),
        migrations.CreateModel(
            name='CartMedicines',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('quantity', models.PositiveIntegerField(default=1)),
                ('created_at', models.DateTimeField(auto_now_add=True)),
                ('cart', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='appmc.cart')),
                ('medicine', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='appmc.medicine')),
            ],
        ),
        migrations.AddField(
            model_name='cart',
            name='medicines',
            field=models.ManyToManyField(through='appmc.CartMedicines', to='appmc.medicine'),
        ),
        migrations.AddField(
            model_name='cart',
            name='user',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL, verbose_name='Usuario'),
        ),
        migrations.CreateModel(
            name='Background',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('disease', models.CharField(max_length=255, verbose_name='Enfermedades')),
                ('observation', models.TextField(verbose_name='Observaciones')),
                ('ClinicHistory', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='appmc.clinichistory', verbose_name='Historia Clinica')),
            ],
            options={
                'verbose_name': 'Antecedente',
                'verbose_name_plural': 'Antecedentes',
                'db_table': 'antecedente',
                'ordering': ['id'],
            },
        ),
        migrations.AddField(
            model_name='appointment',
            name='Profile',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='appmc.profile', verbose_name='Usuario'),
        ),
        migrations.CreateModel(
            name='Allergies',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('allergie', models.CharField(max_length=255, verbose_name='Alergias')),
                ('ClinicHistory', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='appmc.clinichistory', verbose_name='Historia Clinica')),
            ],
            options={
                'verbose_name': 'Alergia',
                'verbose_name_plural': 'Alergias',
                'db_table': 'alergia',
                'ordering': ['id'],
            },
        ),
    ]

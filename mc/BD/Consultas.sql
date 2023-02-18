Use ConsultorioMedico;

/*CONSULTAS*/
SELECT * FROM Usuario WHERE Rol_Usuario= 'Medico';
SELECT * FROM Usuario WHERE Rol_Usuario= 'Paciente';
SELECT * FROM Usuario WHERE Rol_Usuario= 'Asistente';
SELECT * FROM Usuario ORDER BY Rol_Usuario ASC;
SELECT * FROM Ocupacion ORDER BY Id_Usuario ASC;
SELECT * FROM Medicamento ORDER BY Id_Medicamento ASC;
SELECT * FROM Especialidad;
SELECT * FROM Historia_Clinica ORDER BY Id_Historia ASC;
SELECT * FROM Ordenes_Historia ORDER BY Id_Historia ASC;
SELECT * FROM Alergias_Historia ORDER BY Id_Historia ASC;
SELECT * FROM Medico_Historia ORDER BY Id_Usuario_Medico ASC;
SELECT * FROM Pago;
SELECT * FROM Telefono;
SELECT * FROM Cita ORDER BY Id_Cita	ASC;
SELECT * FROM Servicio ORDER BY Id_Servicio ASC;
SELECT * FROM Pago;
SELECT * FROM Usuario,Especialidad where Rol_Usuario= 'Medico';

-- CONSULTAS MULTITABLA-------------------------------------------------------------------------------------

-- USUARIOS--------------------------------------------------------------------------------------------------

/*La consulta consiste en buscar a los medicos con la especialidad en medicina general y con el tiempo de experiencia que este entre los 2 y 3 años y posteriormente que consiga las descripciones realizadas al paciente  */

SELECT U.Id_Usuario, U.Nombre_Usuario, U.Apellido_Usuario, Telefono.Telefono_Usuario,
Especialidad.Nombre_Especialidad, Especialidad.Tiempo_Experiencia, Historia_Clinica.Descripcion, Historia_Clinica.Id_Usuario_Paciente FROM Usuario U
LEFT JOIN Telefono ON U.Id_Usuario=Telefono.Id_Usuario
LEFT JOIN Historia_Clinica ON U.Id_Usuario=Historia_Clinica.Id_Usuario_Medico  
LEFT JOIN Especialidad ON U.Id_Usuario=Especialidad.Id_Usuario 
WHERE Especialidad.Nombre_Especialidad like '%Medicina General%' and Especialidad.Tiempo_Experiencia between '2 años' and '7 años';

-- HISTORIA_CLINICA---------------------------------------------------------------------------------------------
/* La consulta incluye 5 tablas que son historia clinica  usuarios medicamentos alergias y telefono nos  arrojara los datos de intereses en este caso es el grupo sanguineo alergias del paciente  medicamentos que trata y el telefono de ocntacto*/
SELECT Historia_Clinica.Id_Historia,Usuario.Id_Usuario, Historia_Clinica.Grupo_Sanguineo_RH , Alergias_Historia.Alergias, Usuario.Nombre_Usuario, Usuario.Apellido_Usuario,    Medicamento.Nombre_Medicamento, Medicamento.Fecha_Vencimiento ,Telefono.Telefono_Usuario, Usuario.Correo_Usuario  FROM Historia_Clinica
LEFT JOIN Usuario ON Usuario.Id_Usuario=Historia_Clinica.Id_Usuario_Paciente
LEFT JOIN Medicamento ON Medicamento.Id_Medicamento=Historia_Clinica.Id_Medicamento
LEFT JOIN Alergias_Historia ON Alergias_Historia.Id_Historia=Historia_Clinica.Id_Historia
LEFT JOIN Telefono ON Telefono.Id_Usuario=Usuario.Id_Usuario
where Historia_Clinica.Grupo_Sanguineo_RH LIKE '%+';


-- CITA-----------------------------------------------------------------------------------------------------------

/* Se necesita saber las citas medicas que se realizaron en un año y que superen los 12.000  ya que necesitan saber cuantas citas se hicieron en ese lapso de  tiempo*/

SELECT Usuario.Nombre_Usuario, Cita.Fecha_Cita, Cita.Hora_cita, Servicio.Nombre_Servicio, Pago.Valor FROM Usuario
RIGHT JOIN Cita ON Usuario.Id_Usuario = Cita.Id_Usuario_Paciente
RIGHT JOIN Servicio ON Servicio.Id_Cita = Cita.Id_Cita
RIGHT JOIN Pago ON Pago.Id_Servicio= Servicio.Id_Servicio
WHERE Cita.Fecha_Cita between '2021-03-01 ' and '2022-03-31'  and Pago.Valor>=12000;

-- PAGO-----
/*En la consulta de pago decidimos que el paciente tuviera el constó de la consulta por  facilidad de pago*/

SELECT  Historia_Clinica.Id_Historia, Usuario.Id_Usuario, Usuario.Nombre_Usuario, Usuario.Apellido_Usuario,
Usuario.Rol_Usuario, Cita.Id_Cita,  Servicio.Pago_Servicio , Servicio.Id_Servicio, Pago.Valor, sum(Valor*0.03) as incremento, sum(Valor+Valor*0.03) as precioFinal  FROM Historia_Clinica  
RIGHT JOIN Usuario ON Usuario.Id_Usuario=Historia_Clinica.Id_Usuario_Paciente
RIGHT JOIN Cita ON Cita.Id_Usuario_Paciente=Usuario.Id_Usuario
RIGHT JOIN Servicio ON Servicio.Id_Servicio=Cita.Id_Cita
RIGHT JOIN Pago ON Servicio.Id_Cita =Pago.Id_Pago  group by Id_Historia, Id_Usuario, Nombre_Usuario,Apellido_Usuario, Rol_Usuario, Cita.Id_Cita,  Pago_Servicio , Servicio.Id_Servicio, Pago.Valor 








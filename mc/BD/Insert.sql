Use ConsultorioMedico;

/* ====================================================================ROLES==================================================================== */
select* from roles;
INSERT INTO roles (idroles, RolUsuario) VALUES (1, 'Administrador');
INSERT INTO roles (idroles, RolUsuario) VALUES (2, 'Asistente');
INSERT INTO roles (idroles, RolUsuario) VALUES (3, 'Medico');
INSERT INTO roles (idroles, RolUsuario) VALUES (4, 'Paciente');
/* ====================================================================USUARIOS==================================================================== */
Select * from Usuario ;

-- Administrador --------
INSERT INTO Usuario (IdUsuario, NombreUsuario, ApellidoUsuario, TipoDocumento, EdadUsuario, CorreoUsuario, PasswordUsuario,  DireccionUsuario, idRol) 
VALUES(1019008912, 'Jackson', 'Guevara Martinez', 'Cédula de ciudadanía', 35, 'software11@gmail.com', 'CLAVE11', 'kr 125 A 158-02', 1);

-- Asistente --------
INSERT INTO Usuario (IdUsuario, NombreUsuario, ApellidoUsuario, TipoDocumento, EdadUsuario, CorreoUsuario, PasswordUsuario,  DireccionUsuario,idRol) 
VALUES (1019008916, 'Diana Carolina', 'Herrera Casallas', 'Cédula de ciudadanía', 32,  'software15@gmail.com', 'CLAVE15', 'av boyaca con centro comercial el eden', 2);
 
-- Medicos --------
INSERT INTO Usuario (IdUsuario, NombreUsuario, ApellidoUsuario, TipoDocumento, EdadUsuario, CorreoUsuario, PasswordUsuario,  DireccionUsuario, idRol) 
VALUES(1019008915, 'Yuly Andrea', 'Renteria Novoa', 'Cédula de ciudadanía', 28, 'software14@gmail.com', 'CLAVE14', 'Cra 26 calle 42', 3);
INSERT INTO Usuario (IdUsuario, NombreUsuario, ApellidoUsuario, TipoDocumento, EdadUsuario, CorreoUsuario, PasswordUsuario,  DireccionUsuario, idRol) 
VALUES(1019008917,  'Martha Cecilia', 'Bernal Rodriguez', 'Cédula de ciudadanía', 25, 'software16@gmail.com', 'CLAVE16', 'av boyaca con centro comercial el eden', 3);
INSERT INTO Usuario (IdUsuario, NombreUsuario, ApellidoUsuario, TipoDocumento, EdadUsuario, CorreoUsuario, PasswordUsuario,  DireccionUsuario, idRol) 
VALUES(1019008918,  'Luis Fernando', 'Bohorquez Lopez', 'Cédula de ciudadanía', 27, 'software17@gmail.com', 'CLAVE17', 'CL 53 B NO 85 E 31 CALASANS APT 244 BLOQ 10', 3);

-- Pacientes --------
-- cedula ciudadania---
INSERT INTO Usuario (IdUsuario, NombreUsuario, ApellidoUsuario, TipoDocumento, EdadUsuario, CorreoUsuario, PasswordUsuario,  DireccionUsuario,idRol) 
VALUES(1019008910, 'Camila', 'Velasquez Miranda','Cédula de ciudadanía', 23,  'software09@gmail.com', 'CLAVE9', 'cll 184b 182 B 02',4);
INSERT INTO Usuario (IdUsuario, NombreUsuario, ApellidoUsuario, TipoDocumento, EdadUsuario, CorreoUsuario, PasswordUsuario,  DireccionUsuario,idRol) 
VALUES(1019008911, 'Luisa', 'Carrillo Escobar', 'Cédula de ciudadanía', 29, 'software10@gmail.com', 'CLAVE10', 'kr 180b 125 C 02',4);
INSERT INTO Usuario (IdUsuario, NombreUsuario, ApellidoUsuario, TipoDocumento, EdadUsuario, CorreoUsuario, PasswordUsuario,  DireccionUsuario,idRol) 
VALUES(1019008913, 'Ricardo', 'Sanchez Lopez', 'Cédula de ciudadanía', 45, 'software12@gmail.com', 'CLAVE12', 'cll 80 sentido oriente occidente al frente del titan', 4);
INSERT INTO Usuario (IdUsuario, NombreUsuario, ApellidoUsuario, TipoDocumento, EdadUsuario, CorreoUsuario, PasswordUsuario,  DireccionUsuario,idRol)   
VALUES(1019008919, 'Dany Rodrigo', 'Castrillon Amaya', 'Cédula de ciudadanía', 30,'software18@gmail.com', 'CLAVE18', 'Calle 28 # 100 133 Valle del lili Unidad montemadero Apto 404 torre 1', 4);
INSERT INTO Usuario (IdUsuario, NombreUsuario, ApellidoUsuario, TipoDocumento, EdadUsuario, CorreoUsuario, PasswordUsuario,  DireccionUsuario,idRol)  
VALUES(1019008920, 'Gilma', 'Agudelo Benitez', 'Cédula de ciudadanía', 45, 'software19@gmail.com',  'CLAVE19', 'alle 28 # 100 133 Valle del lili Unidad montemadero Apto 404 torre 1', 4);
INSERT INTO Usuario (IdUsuario, NombreUsuario, ApellidoUsuario, TipoDocumento, EdadUsuario, CorreoUsuario, PasswordUsuario,  DireccionUsuario,idRol)  
VALUES(1019008921, 'vladimir', 'Gonzalez Muñoz', 'Cédula de ciudadanía', 28, 'software20@gmail.com', 'CLAVE20',  'CL 27 B NO 15 17 SAVEDRA GALINDO', 4);
INSERT INTO Usuario (IdUsuario, NombreUsuario, ApellidoUsuario, TipoDocumento, EdadUsuario, CorreoUsuario, PasswordUsuario,  DireccionUsuario,idRol)  
VALUES(1019008922, 'Jacqueline', 'Meneses Jimenez', 'Cédula de ciudadanía', 29, 'software21@gmail.com', 'CLAVE21', 'cra 27 #14C-45 brr santa elena', 4);
INSERT INTO Usuario (IdUsuario, NombreUsuario, ApellidoUsuario, TipoDocumento, EdadUsuario, CorreoUsuario, PasswordUsuario,  DireccionUsuario,idRol)  
VALUES(1019008923, 'Maria Fernanda', 'Leon', 'Cédula de ciudadanía', 28, 'software22@gmail.com',  'CLAVE22', 'KR 112 48 92 BOCHALEMA PINO K112',4);
INSERT INTO Usuario (IdUsuario, NombreUsuario, ApellidoUsuario, TipoDocumento, EdadUsuario, CorreoUsuario, PasswordUsuario,  DireccionUsuario,idRol)  
VALUES(1019008924, 'Adriana Isabel', 'Ortega Hernandez', 'Cédula de ciudadanía',  29, 'software23@gmail.com', 'CLAVE23', 'CL 43 A NO 50 91 BRR CIUDAD 2 MIL',4);
INSERT INTO Usuario (IdUsuario, NombreUsuario, ApellidoUsuario, TipoDocumento, EdadUsuario, CorreoUsuario, PasswordUsuario,  DireccionUsuario,idRol) 
VALUES(1019008925, 'Maria Mery', 'Linares Ciprian','Cédula de ciudadanía', 31,  'software24@gmail.com', 'CLAVE24', 'calle 80 #109-13',4);
INSERT INTO Usuario (IdUsuario, NombreUsuario, ApellidoUsuario, TipoDocumento, EdadUsuario, CorreoUsuario, PasswordUsuario,  DireccionUsuario,idRol)  
VALUES(1019008926,  'Claudia Cecilia', 'Correa Mejia', 'Cédula de ciudadanía', 33,  'software25@gmail.com',  'CLAVE25', 'KR 35 CON 42', 4);
INSERT INTO Usuario (IdUsuario, NombreUsuario, ApellidoUsuario, TipoDocumento, EdadUsuario, CorreoUsuario, PasswordUsuario,  DireccionUsuario,idRol) 
VALUES(1019008927, 'William', 'Saveedra','Cédula de ciudadanía', 29,  'software26@gmail.com', 'CLAVE26', 'Calle 66 # 1 a 30 Metropolitano Altos del parque', 4);
INSERT INTO Usuario (IdUsuario, NombreUsuario, ApellidoUsuario, TipoDocumento, EdadUsuario, CorreoUsuario, PasswordUsuario,  DireccionUsuario,idRol)  
VALUES(1019008928, 'Weimar Andres', 'Tello Saa', 'Cédula de ciudadanía', 25,  'software27@gmail.com', 'CLAVE27', 'Clle 55 44 31 barrio morichal de confandi', 4);
INSERT INTO Usuario (IdUsuario, NombreUsuario, ApellidoUsuario, TipoDocumento, EdadUsuario, CorreoUsuario, PasswordUsuario,  DireccionUsuario,idRol)  
VALUES(1019008929, 'Beatris', 'Mejia', 'Cédula de ciudadanía', 28, 'software28@gmail.com', 'CLAVE28', 'BRR CRISTALESKR 35 A NO 11 B OESTE 105 EDIFICIO ALTOS DE CRISTALES', 4);
INSERT INTO Usuario (IdUsuario, NombreUsuario, ApellidoUsuario, TipoDocumento, EdadUsuario, CorreoUsuario, PasswordUsuario,  DireccionUsuario,idRol) 
VALUES(1019008930, 'Carolina', 'Serrano','Cédula de ciudadanía', 27,  'software29@gmail.com',  'CLAVE29', 'DIAGONAL 23 NO.12D-38 BARRIO COLSEGURO', 4);
INSERT INTO Usuario (IdUsuario, NombreUsuario, ApellidoUsuario, TipoDocumento, EdadUsuario, CorreoUsuario, PasswordUsuario,  DireccionUsuario,idRol)  
VALUES(1019008931,'Lady Vanessa', 'Casilimas Ramirez', 'Cédula de ciudadanía', 25,  'software30@gmail.com', 'CLAVE30', 'CL 25 CON KR 11 TULUA', 4);
INSERT INTO Usuario (IdUsuario, NombreUsuario, ApellidoUsuario, TipoDocumento, EdadUsuario, CorreoUsuario, PasswordUsuario,  DireccionUsuario,idRol)  
VALUES(1019008932, 'Johan Stiven', 'Torres Uzuriaga',  'Cédula de ciudadanía', 31,  'software31@gmail.com',  'CLAVE31', 'cra 2 #13- 36', 4);
INSERT INTO Usuario (IdUsuario, NombreUsuario, ApellidoUsuario, TipoDocumento, EdadUsuario, CorreoUsuario, PasswordUsuario,  DireccionUsuario,idRol)   
VALUES(1019008933, 'Javier Antonio', 'Salinas Salinas', 'Cédula de ciudadanía', 36,  'software32@gmail.com', 'CLAVE32', 'calle 42 #40- 37',4);
INSERT INTO Usuario (IdUsuario, NombreUsuario, ApellidoUsuario, TipoDocumento, EdadUsuario, CorreoUsuario, PasswordUsuario,  DireccionUsuario, idRol)  
VALUES(1019008934, 'Michael Andres', 'Gaviria Chico', 'Cédula de ciudadanía', 45,  'software33@gmail.com', 'CLAVE33', 'cll 70 al pie del cai',4);
INSERT INTO Usuario (IdUsuario, NombreUsuario, ApellidoUsuario, TipoDocumento, EdadUsuario, CorreoUsuario, PasswordUsuario,  DireccionUsuario, idRol)  
VALUES(1019008935, 'Laura', 'Bedolla', 'Cédula de ciudadanía',  85,  'software34@gmail.com', 'CLAVE34', 'Cra 35 # 10 23 Panamericano', 4);

-- Tarjeta Identidad---
INSERT INTO Usuario (IdUsuario, NombreUsuario, ApellidoUsuario, TipoDocumento, EdadUsuario, CorreoUsuario, PasswordUsuario,  DireccionUsuario, idRol)    
VALUES(1019008936, 'Juan David', 'Giraldo', 'Tarjeta Identidad', 17,  'software35@gmail.com', 'CLAVE35', 'CALLE 15A # 17-12', 4);
INSERT INTO Usuario (IdUsuario, NombreUsuario, ApellidoUsuario, TipoDocumento, EdadUsuario, CorreoUsuario, PasswordUsuario,  DireccionUsuario, idRol)    
VALUES(1019008937, 'Henulver', 'Velez Rodriguez', 'Tarjeta Identidad', 16, 'software36@gmail.com', 'CLAVE36', 'CARRERA 11A CALLE 2D SUR -29', 4);
INSERT INTO Usuario (IdUsuario, NombreUsuario, ApellidoUsuario, TipoDocumento, EdadUsuario, CorreoUsuario, PasswordUsuario,  DireccionUsuario, idRol)   
VALUES(1019008938, 'Javier', 'Narvaez', 'Tarjeta Identidad', 15, 'software37@gmail.com', 'CLAVE37', 'Av paso ancho con calle 105', 4);
INSERT INTO Usuario (IdUsuario, NombreUsuario, ApellidoUsuario, TipoDocumento, EdadUsuario, CorreoUsuario, PasswordUsuario,  DireccionUsuario, idRol)   
VALUES(1019008939, 'Hugo Alejandro', 'Chaves Cabrera',  'Tarjeta Identidad', 10,  'software38@gmail.com', 'CLAVE38', 'Av paso ancho con calle 105', 4);
INSERT INTO Usuario (IdUsuario, NombreUsuario, ApellidoUsuario, TipoDocumento, EdadUsuario, CorreoUsuario, PasswordUsuario,  DireccionUsuario, idRol)   
VALUES(1019008962,  'Danna Paola', 'hurtado ruiz', 'Tarjeta Identidad', 11, 'software01@gmail.com', 'CLAVE1', 'cll 138b 125 A 02', 4);
INSERT INTO Usuario (IdUsuario, NombreUsuario, ApellidoUsuario, TipoDocumento, EdadUsuario, CorreoUsuario, PasswordUsuario,  DireccionUsuario, idRol)   
VALUES(1019008963,  'Eduardo Andres', 'Murillo', 'Tarjeta Identidad', 12, 'software02@gmail.com', 'CLAVE2', 'KR 128b 125 A 02', 4);
INSERT INTO Usuario (IdUsuario, NombreUsuario, ApellidoUsuario, TipoDocumento, EdadUsuario, CorreoUsuario, PasswordUsuario,  DireccionUsuario, idRol)   
VALUES(1019008964, 'Juan Pablo', 'Lopez Gonzales',  'Tarjeta Identidad', 12, 'software03@gmail.com', 'CLAVE3',  'cll 118b 125 A 03',4);
INSERT INTO Usuario (IdUsuario, NombreUsuario, ApellidoUsuario, TipoDocumento, EdadUsuario, CorreoUsuario, PasswordUsuario,  DireccionUsuario, idRol)   
VALUES(1019008965, 'Jhon', 'García Peña',  'Tarjeta Identidad', 15, 'software04@gmail.com',  'CLAVE4', 'cll 140a 205A 02',4);
INSERT INTO Usuario (IdUsuario, NombreUsuario, ApellidoUsuario, TipoDocumento, EdadUsuario, CorreoUsuario, PasswordUsuario,  DireccionUsuario, idRol)   
VALUES(1019008966,  'Maira', 'García Rubiano',  'Tarjeta Identidad', 14,  'software05@gmail.com', 'CLAVE5', 'kr 138b 125 A 02',4);
INSERT INTO Usuario (IdUsuario, NombreUsuario, ApellidoUsuario, TipoDocumento, EdadUsuario, CorreoUsuario, PasswordUsuario,  DireccionUsuario, idRol)    
VALUES(1019008967, 'stefania', 'florez escobar', 'Tarjeta Identidad', 16, 'software06@gmail.com', 'CLAVE6',  'cll 10b 125 A 02',4);
INSERT INTO Usuario (IdUsuario, NombreUsuario, ApellidoUsuario, TipoDocumento, EdadUsuario, CorreoUsuario, PasswordUsuario,  DireccionUsuario, idRol)   
VALUES(1019008968, 'Sonia Jalveidi', 'Guzman Acosta', 'Tarjeta Identidad', 17, 'software07@gmail.com',  'CLAVE7', 'cll 205b 128 A 02',4);
INSERT INTO Usuario (IdUsuario, NombreUsuario, ApellidoUsuario, TipoDocumento, EdadUsuario, CorreoUsuario, PasswordUsuario,  DireccionUsuario, idRol)   
VALUES(1019008969, 'Felix Villamil', 'monroy garcia', 'Tarjeta Identidad', 13, 'software08@gmail.com', 'CLAVE8', 'cll 186b 50 A 02', 4);
INSERT INTO Usuario (IdUsuario, NombreUsuario, ApellidoUsuario, TipoDocumento, EdadUsuario, CorreoUsuario, PasswordUsuario,  DireccionUsuario, idRol)  
VALUES(1019108914, 'Nicolas Andres', 'Aponte Jalabe',  'Tarjeta Identidad', 10,  'software13@gmail.com', 'CLAVE13', 'AV CALI CON AMERICAS', 4);
INSERT INTO Usuario (IdUsuario, NombreUsuario, ApellidoUsuario, TipoDocumento, EdadUsuario, CorreoUsuario, PasswordUsuario,  DireccionUsuario, idRol) 
VALUES(1029008910, 'Mario Alexander', 'Moreno Bonilla', 'Tarjeta de identidad', 13, 'software48@gmail.com', 'CLAVE 48', 'carrera 95 con 125', 4);
INSERT INTO Usuario (IdUsuario, NombreUsuario, ApellidoUsuario, TipoDocumento, EdadUsuario, CorreoUsuario, PasswordUsuario,  DireccionUsuario, idRol)    
VALUES(1029008918, 'Julian Alejandro', 'Arangulen Gonzalez', 'Tarjeta de identidad', 8, 'software49@gmail.com', 'CLAVE 49', 'KR 95 -85', 4);
INSERT INTO Usuario (IdUsuario, NombreUsuario, ApellidoUsuario, TipoDocumento, EdadUsuario, CorreoUsuario, PasswordUsuario,  DireccionUsuario, idRol)   
VALUES(1029008962,  'Jesica', 'Cardenas Velasquez', 'Tarjeta de identidad',9, 'software40@gmail.com', 'CLAVE 40', 'CLL 139A 120 B 05', 4);
INSERT INTO Usuario (IdUsuario, NombreUsuario, ApellidoUsuario, TipoDocumento, EdadUsuario, CorreoUsuario, PasswordUsuario,  DireccionUsuario, idRol)   
VALUES(1029008963,  'Nicolas Felipe', 'Rojas Pinilla', 'Tarjeta de identidad', 10, 'software41@gmail.com', 'CLAVE 41',  'CLL 132A 158 C15', 4);

-- Cedula Extranjeria----
INSERT INTO Usuario (IdUsuario, NombreUsuario, ApellidoUsuario, TipoDocumento, EdadUsuario, CorreoUsuario, PasswordUsuario,  DireccionUsuario, idRol)   
VALUES(1029008964,  'Leidy Tatiana', 'Moncada', 'Cedula Extranjeria', 23,  'software42@gmail.com', 'CLAVE 42', 'cll 139C ·125A-0 25', 4);
INSERT INTO Usuario (IdUsuario, NombreUsuario, ApellidoUsuario, TipoDocumento, EdadUsuario, CorreoUsuario, PasswordUsuario,  DireccionUsuario, idRol)   
VALUES(1029008965, 'Yeimi Alejandra', 'Vargas Rivera', 'Cedula Extrajeria', 30,  'software43@gmail.com', 'CLAVE 43', 'cll 125 ·130 C- 06', 4);

-- Registro Civil--------------
INSERT INTO Usuario (IdUsuario, NombreUsuario, ApellidoUsuario, TipoDocumento, EdadUsuario, CorreoUsuario, PasswordUsuario,  DireccionUsuario, idRol) 
VALUES(1029008966, 'Eylen Nicole', 'Bocanegra Guzman', 'Registro Civil', 6,  'software44@gmail.com', 'CLAVE 44', 'cll 859 - 2542 #125 A-02', 4);
INSERT INTO Usuario (IdUsuario, NombreUsuario, ApellidoUsuario, TipoDocumento, EdadUsuario, CorreoUsuario, PasswordUsuario,  DireccionUsuario, idRol)
VALUES(1029008967, 'Juan diego', 'Hernandez Qiñonez', 'Registro Civil', 5,  'software45@gmail.com', 'CLAVE 45','carrera 123 #125 - C25', 4);
INSERT INTO Usuario (IdUsuario, NombreUsuario, ApellidoUsuario, TipoDocumento, EdadUsuario, CorreoUsuario, PasswordUsuario,  DireccionUsuario, idRol)   
VALUES(1029008968, 'Rogers Alejandro', 'Mendez Cortez', 'Registro Civil', 5,  'software46@gmail.com', 'CLAVE 46', 'calle 139 B#125A-110', 4);
INSERT INTO Usuario (IdUsuario, NombreUsuario, ApellidoUsuario, TipoDocumento, EdadUsuario, CorreoUsuario, PasswordUsuario,  DireccionUsuario, idRol)
VALUES(1029008969, 'Ana Maria', 'Romero Adrada', 'Registro Civil', 6,  'software47@gmail.com', 'CLAVE 47','cll 125A #140-95C', 4);

-- INSERCCIONES  TELEFONO------------------------------------------------------------------------------------
select * from telefono;
INSERT INTO Telefono(IdUsuario, TelefonoUsuario) VALUES (1019008912, 3142589625);

INSERT INTO Telefono(IdUsuario, TelefonoUsuario) VALUES (1019008916, 3143495088);

INSERT INTO Telefono(IdUsuario, TelefonoUsuario) VALUES (1019008917, 3256804545);
INSERT INTO Telefono(IdUsuario, TelefonoUsuario) VALUES (1019008917, 3012589525);
INSERT INTO Telefono(IdUsuario, TelefonoUsuario) VALUES (1019008918, 3023093548);
INSERT INTO Telefono(IdUsuario, TelefonoUsuario) VALUES (1019008918, 3142155309);
INSERT INTO Telefono(IdUsuario, TelefonoUsuario) VALUES (1019008915, 3016267152);
INSERT INTO Telefono(IdUsuario, TelefonoUsuario) VALUES (1019008915, 3024898282);


INSERT INTO Telefono(IdUsuario, TelefonoUsuario) VALUES (1019008910, 3206866511);
INSERT INTO Telefono(IdUsuario, TelefonoUsuario) VALUES (1019008910, 3212618134);
INSERT INTO Telefono(IdUsuario, TelefonoUsuario) VALUES (1019008911, 3008517007);
INSERT INTO Telefono(IdUsuario, TelefonoUsuario) VALUES (1019008913, 3112518640);
INSERT INTO Telefono(IdUsuario, TelefonoUsuario) VALUES (1019008919, 3102781806);
INSERT INTO Telefono(IdUsuario, TelefonoUsuario) VALUES (1019008920, 3225879452);
INSERT INTO Telefono(IdUsuario, TelefonoUsuario) VALUES (1019008921, 3013113513);
INSERT INTO Telefono(IdUsuario, TelefonoUsuario) VALUES (1019008922, 3002300018);
INSERT INTO Telefono(IdUsuario, TelefonoUsuario) VALUES (1019008923, 3233094626);
INSERT INTO Telefono(IdUsuario, TelefonoUsuario) VALUES (1019008924, 3043740298);
INSERT INTO Telefono(IdUsuario, TelefonoUsuario) VALUES (1019008925, 3148379112);
INSERT INTO Telefono(IdUsuario, TelefonoUsuario) VALUES (1019008926, 3154075863);
INSERT INTO Telefono(IdUsuario, TelefonoUsuario) VALUES (1019008926, 3187030668);
INSERT INTO Telefono(IdUsuario, TelefonoUsuario) VALUES (1019008927, 3125896581);
INSERT INTO Telefono(IdUsuario, TelefonoUsuario) VALUES (1019008928, 3176436303);
INSERT INTO Telefono(IdUsuario, TelefonoUsuario) VALUES (1019008929, 3167418706);
INSERT INTO Telefono(IdUsuario, TelefonoUsuario) VALUES (1019008930, 3225892148);
INSERT INTO Telefono(IdUsuario, TelefonoUsuario) VALUES (1019008931, 3258054369);
INSERT INTO Telefono(IdUsuario, TelefonoUsuario) VALUES (1019008932, 3225882505);
INSERT INTO Telefono(IdUsuario, TelefonoUsuario) VALUES (1019008933, 3105831598);
INSERT INTO Telefono(IdUsuario, TelefonoUsuario) VALUES (1019008934, 3025862515);
INSERT INTO Telefono(IdUsuario, TelefonoUsuario) VALUES (1019008935, 3005861041);
INSERT INTO Telefono(IdUsuario, TelefonoUsuario) VALUES (1019008936, 3259809964);
INSERT INTO Telefono(IdUsuario, TelefonoUsuario) VALUES (1019008937, 3124685409);
INSERT INTO Telefono(IdUsuario, TelefonoUsuario) VALUES (1019008938, 3148741048);
INSERT INTO Telefono(IdUsuario, TelefonoUsuario) VALUES (1019008939, 3155484107);
INSERT INTO Telefono(IdUsuario, TelefonoUsuario) VALUES (1019108914, 3002574812); 
INSERT INTO Telefono(IdUsuario, TelefonoUsuario) VALUES (1019008962, 3187428744);
INSERT INTO Telefono(IdUsuario, TelefonoUsuario) VALUES (1019008963, 3177851690);
INSERT INTO Telefono(IdUsuario, TelefonoUsuario) VALUES (1019008964, 3168241871);
INSERT INTO Telefono(IdUsuario, TelefonoUsuario) VALUES (1019008965, 3258532329);
INSERT INTO Telefono(IdUsuario, TelefonoUsuario) VALUES (1019008966, 3225520851);
INSERT INTO Telefono(IdUsuario, TelefonoUsuario) VALUES (1019008967, 3008704782);
INSERT INTO Telefono(IdUsuario, TelefonoUsuario) VALUES (1019008968, 3258423965);
INSERT INTO Telefono(IdUsuario, TelefonoUsuario) VALUES (1019008969, 3128026362);
INSERT INTO Telefono(IdUsuario, TelefonoUsuario) VALUES (1029008910, 3147520869);
INSERT INTO Telefono(IdUsuario, TelefonoUsuario) VALUES (1029008910, 3154500256);
INSERT INTO Telefono(IdUsuario, TelefonoUsuario) VALUES (1029008918, 3157531590);
INSERT INTO Telefono(IdUsuario, TelefonoUsuario) VALUES (1029008918, 3188520370);
INSERT INTO Telefono(IdUsuario, TelefonoUsuario) VALUES (1029008962, 3170058493);
INSERT INTO Telefono(IdUsuario, TelefonoUsuario) VALUES (1029008963, 3168542605);
INSERT INTO Telefono(IdUsuario, TelefonoUsuario) VALUES (1029008964, 3228596120);
INSERT INTO Telefono(IdUsuario, TelefonoUsuario) VALUES (1029008965, 3158108518);
INSERT INTO Telefono(IdUsuario, TelefonoUsuario) VALUES (1029008966, 3259854110);
INSERT INTO Telefono(IdUsuario, TelefonoUsuario) VALUES (1029008967, 3258881758);
INSERT INTO Telefono(IdUsuario, TelefonoUsuario) VALUES (1029008968, 3175582050);
INSERT INTO Telefono(IdUsuario, TelefonoUsuario) VALUES (1029008969, 3160257925);


-- CONSULTORIO MEDICO -------------
SELECT * FROM MEDICO;
INSERT INTO medico(ubicacionConsultorio,IdUsuarioMedico, sueldo) VALUES('101A Primer pasillo', 1019008915, 2000000);
INSERT INTO medico(ubicacionConsultorio,IdUsuarioMedico, sueldo) VALUES('102A Primer pasillo', 1019008917, 2000000);
INSERT INTO medico(ubicacionConsultorio,IdUsuarioMedico, sueldo) VALUES('103A Primer pasillo', 1019008918, 2500000);


-- INSERCCIONES  MEDICAMENTOS----------------------------------------------------------------------------------------------------------------------
select * from medicamento;
INSERT INTO Medicamento(IdMedicamento, NombreMedicamento, DescripcionMedicamento, FechaFabricacion, FechaVencimiento, Cantidad, Presentacion)
VALUES (0101, ' flúor ', ' Tableta ', ' 2020-01-26 ', ' 2022-01-26 ', ' 500 mg ', ' 20 tabletas ');
INSERT INTO Medicamento(IdMedicamento, NombreMedicamento, DescripcionMedicamento, FechaFabricacion, FechaVencimiento, Cantidad, Presentacion)
VALUES (0103, ' Antiséptico',  ' Tableta soluble o efervescente ' ,  ' 2020-01-26 ' ,  ' 2022-01-26 ', ' 300 mg  ', ' 20 tabletas solubles o efervescentes ');
INSERT INTO Medicamento(IdMedicamento, NombreMedicamento, DescripcionMedicamento, FechaFabricacion, FechaVencimiento, Cantidad, Presentacion)
VALUES (0108, ' antifúnguicos  sódico ', ' Comprimido ', ' 2020-01-26 ', ' 2022-01-26 ', ' 500 mg ', ' 10 comprimidos ');
INSERT INTO Medicamento(IdMedicamento, NombreMedicamento, DescripcionMedicamento, FechaFabricacion, FechaVencimiento, Cantidad, Presentacion)
VALUES (2100, ' clorhexidina  ', ' Solución oral  ', ' 2020-01-26 ', ' 2022-01-26 ', ' 100 mg/ml  ', ' Envase con gotero 15 ml ');
INSERT INTO Medicamento(IdMedicamento, NombreMedicamento, DescripcionMedicamento, FechaFabricacion, FechaVencimiento, Cantidad, Presentacion)
VALUES (2098, ' antifúnguicos  ', ' Tableta sublingual ', ' 2020-01-26 ', ' 2022-01-26 ', ' 0.2 mg  ', ' 10 ó 20 tabletas ');
INSERT INTO Medicamento(IdMedicamento, NombreMedicamento, DescripcionMedicamento, FechaFabricacion, FechaVencimiento, Cantidad, Presentacion)
VALUES (2097, ' tetraciclina  ', ' Solución inyectable', ' 2020-01-26 ', ' 2022-01-26 ', ' 0.30 mg/ ml ', ' 6 ampolletas o frasco ámpula con 1 ml ');
INSERT INTO Medicamento(IdMedicamento, NombreMedicamento, DescripcionMedicamento, FechaFabricacion, FechaVencimiento, Cantidad, Presentacion)
VALUES (4031, ' tetraciclina  ', ' Crema', ' 2020-01-26 ', ' 2022-01-26 ', ' 0.035 g  ', 'Envase con 40 g ');
INSERT INTO Medicamento(IdMedicamento, NombreMedicamento, DescripcionMedicamento, FechaFabricacion, FechaVencimiento, Cantidad, Presentacion)
VALUES (4028, ' clorhexidina ', ' Solución inyectable', ' 2020-01-26 ', ' 2022-01-26 ', ' 100 mg/ 2 ml ', ' 5 ampolletas con 2 ml ');
INSERT INTO Medicamento(IdMedicamento, NombreMedicamento, DescripcionMedicamento, FechaFabricacion, FechaVencimiento, Cantidad, Presentacion)
VALUES (4036, ' tetraciclina  ', ' Solución inyectable', ' 2020-01-26 ', ' 2022-01-26 ', ' 200 µg', ' 1, 5 y 25 frascos ámpula. ');
INSERT INTO Medicamento(IdMedicamento, NombreMedicamento, DescripcionMedicamento, FechaFabricacion, FechaVencimiento, Cantidad, Presentacion)
VALUES (3422, ' Dextropropoxifeno ', ' Cápsula o comprimido', ' 2020-01-26 ', ' 2022-01-26 ', ' 65 mg ', ' 20 cápsulas o comprimidos ');
INSERT INTO Medicamento(IdMedicamento, NombreMedicamento, DescripcionMedicamento, FechaFabricacion, FechaVencimiento, Cantidad, Presentacion)
VALUES (2099, ' tetraciclina  ', ' Solución inyectable', ' 2020-01-26 ', ' 2022-01-26 ', ' 1g ', ' Ampolleta de 2 ml.');
INSERT INTO Medicamento(IdMedicamento, NombreMedicamento, DescripcionMedicamento, FechaFabricacion, FechaVencimiento, Cantidad, Presentacion)
VALUES (2105, ' tetraciclina  ', ' Parche', ' 2020-01-26 ', ' 2022-01-26 ', ' 4.2 mg ', '5 parches');
INSERT INTO Medicamento(IdMedicamento, NombreMedicamento, DescripcionMedicamento, FechaFabricacion, FechaVencimiento, Cantidad, Presentacion)
VALUES (0510, ' Dosificación ', ' inyección intravenosa', ' 2020-01-26 ', ' 2022-01-26 ', ' 65 mg ', ' Ampolleta 4ml ');
INSERT INTO Medicamento(IdMedicamento, NombreMedicamento, DescripcionMedicamento, FechaFabricacion, FechaVencimiento, Cantidad, Presentacion)
VALUES (1019, ' Amoxicilina + ácido clavulánico ', ' Cápsula o comprimido', ' 2020-01-26 ', ' 2022-01-26 ', ' 65 mg ', ' 20 cápsulas o comprimidos ');
INSERT INTO Medicamento(IdMedicamento, NombreMedicamento, DescripcionMedicamento, FechaFabricacion, FechaVencimiento, Cantidad, Presentacion)
VALUES (0303, ' Sulbactam  ', ' Tableta sublingual ', ' 2020-01-26 ', ' 2022-01-26 ', ' 0.2 mg  ', ' 10 ó 20 tabletas ');
INSERT INTO Medicamento(IdMedicamento, NombreMedicamento, DescripcionMedicamento, FechaFabricacion, FechaVencimiento, Cantidad, Presentacion)
VALUES (1918, ' Ampicilina', ' Tableta sublingual ', ' 2020-01-26 ', ' 2022-01-26 ', ' 0.2 mg  ', ' 10 ó 20 tabletas ');


-- INSERCCIONES  HISTORIA_CLINICA---------------------------------------------------------------------------------------------------
sELECT * FROM `consultoriomedico`.`historiaclinica`;

INSERT INTO `consultoriomedico`.`historiaclinica` (`FechaCreacion`, `GrupoSanguineo_RH`, `IdMedicamento`, `IdUsuarioMedico`, `IdUsuarioPaciente`) VALUES ('2020-01-26', 'o+', '101', 1019008915, 1019008966 );
INSERT INTO `consultoriomedico`.`historiaclinica` (`FechaCreacion`, `GrupoSanguineo_RH`, `IdMedicamento`, `IdUsuarioMedico`, `IdUsuarioPaciente`) VALUES ('2020-01-29', 'O+', '103', 1019008915, 1019008967);
INSERT INTO `consultoriomedico`.`historiaclinica` (`FechaCreacion`, `GrupoSanguineo_RH`, `IdMedicamento`, `IdUsuarioMedico`, `IdUsuarioPaciente`) VALUES ('2021-02-28', 'A-', '108', 1019008915, 1019008923);
INSERT INTO `consultoriomedico`.`historiaclinica` (`FechaCreacion`, `GrupoSanguineo_RH`, `IdMedicamento`, `IdUsuarioMedico`, `IdUsuarioPaciente`) VALUES ('2022-08-30', 'AB+', '303', 1019008915, 1019008924);
INSERT INTO `consultoriomedico`.`historiaclinica` (`FechaCreacion`, `GrupoSanguineo_RH`, `IdMedicamento`, `IdUsuarioMedico`, `IdUsuarioPaciente`) VALUES ('2022-01-26', 'AB+', '510', 1019008915, 1019008925);
INSERT INTO `consultoriomedico`.`historiaclinica` (`FechaCreacion`, `GrupoSanguineo_RH`, `IdMedicamento`, `IdUsuarioMedico`, `IdUsuarioPaciente`) VALUES ('2020-01-25', 'O+', '1019', 1019008917, 1019008926);
INSERT INTO `consultoriomedico`.`historiaclinica` (`FechaCreacion`, `GrupoSanguineo_RH`, `IdMedicamento`, `IdUsuarioMedico`, `IdUsuarioPaciente`) VALUES ('2019-10-05', 'O+', '1918', 1019008917, 1019008927);
INSERT INTO `consultoriomedico`.`historiaclinica` (`FechaCreacion`, `GrupoSanguineo_RH`, `IdMedicamento`, `IdUsuarioMedico`, `IdUsuarioPaciente`) VALUES ('2021-04-06', 'O+', '2097', 1019008917, 1019008928);
INSERT INTO `consultoriomedico`.`historiaclinica` (`FechaCreacion`, `GrupoSanguineo_RH`, `IdMedicamento`, `IdUsuarioMedico`, `IdUsuarioPaciente`) VALUES ('2020-03-03', 'O+', '2098', 1019008917, 1019008929);
INSERT INTO `consultoriomedico`.`historiaclinica` (`FechaCreacion`, `GrupoSanguineo_RH`, `IdMedicamento`, `IdUsuarioMedico`, `IdUsuarioPaciente`) VALUES ('2021-12-15', 'O+', '2099', 1019008917, 1019008930);
INSERT INTO `consultoriomedico`.`historiaclinica` (`FechaCreacion`, `GrupoSanguineo_RH`, `IdMedicamento`, `IdUsuarioMedico`, `IdUsuarioPaciente`) VALUES ('2021-09-25', 'O+', '2100', 1019008918, 1019008931);
INSERT INTO `consultoriomedico`.`historiaclinica` (`FechaCreacion`, `GrupoSanguineo_RH`, `IdMedicamento`, `IdUsuarioMedico`, `IdUsuarioPaciente`) VALUES ('2020-05-02', 'O+', '2105', 1019008918, 1019008932);
INSERT INTO `consultoriomedico`.`historiaclinica` (`FechaCreacion`, `GrupoSanguineo_RH`, `IdMedicamento`, `IdUsuarioMedico`, `IdUsuarioPaciente`) VALUES ('2021-03-16', 'A-', '3422', 1019008918, 1019008910);
INSERT INTO `consultoriomedico`.`historiaclinica` (`FechaCreacion`, `GrupoSanguineo_RH`, `IdMedicamento`, `IdUsuarioMedico`, `IdUsuarioPaciente`) VALUES ('2021-08-14', 'B-', '4028', 1019008918, 1019008911);
INSERT INTO `consultoriomedico`.`historiaclinica` (`FechaCreacion`, `GrupoSanguineo_RH`, `IdMedicamento`, `IdUsuarioMedico`, `IdUsuarioPaciente`) VALUES ('2020-01-28', 'A+', '4036', 1019008917, 1019008913);
INSERT INTO `consultoriomedico`.`historiaclinica` (`FechaCreacion`, `GrupoSanguineo_RH`, `IdMedicamento`, `IdUsuarioMedico`, `IdUsuarioPaciente`) VALUES ('2020-01-29', 'A+', '1019', 1019008915, 1019008922);
INSERT INTO `consultoriomedico`.`historiaclinica` (`FechaCreacion`, `GrupoSanguineo_RH`, `IdMedicamento`, `IdUsuarioMedico`, `IdUsuarioPaciente`) VALUES ('2020-01-01', 'A+', '2105', 1019008918, 1019008921);
INSERT INTO `consultoriomedico`.`historiaclinica` (`FechaCreacion`, `GrupoSanguineo_RH`, `IdMedicamento`, `IdUsuarioMedico`, `IdUsuarioPaciente`) VALUES ('2018-09-25', 'AB+', '1918', 1019008917, 1019008920);
INSERT INTO `consultoriomedico`.`historiaclinica` (`FechaCreacion`, `GrupoSanguineo_RH`, `IdMedicamento`, `IdUsuarioMedico`, `IdUsuarioPaciente`) VALUES ('2020-01-26', 'A-', '303', 1019008917, 1019008933);
INSERT INTO `consultoriomedico`.`historiaclinica` (`FechaCreacion`, `GrupoSanguineo_RH`, `IdMedicamento`, `IdUsuarioMedico`, `IdUsuarioPaciente`) VALUES ('2020-01-26', 'O+', '510', 1019008915, 1019008934);
INSERT INTO `consultoriomedico`.`historiaclinica` (`FechaCreacion`, `GrupoSanguineo_RH`, `IdMedicamento`, `IdUsuarioMedico`, `IdUsuarioPaciente`) VALUES ('2020-01-26', 'O+', '4031', 1019008915, 1019008935);
INSERT INTO `consultoriomedico`.`historiaclinica` (`FechaCreacion`, `GrupoSanguineo_RH`, `IdMedicamento`, `IdUsuarioMedico`, `IdUsuarioPaciente`) VALUES ('2020-01-26', 'B+', '4031', 1019008918, 1019008936);
INSERT INTO `consultoriomedico`.`historiaclinica` (`FechaCreacion`, `GrupoSanguineo_RH`, `IdMedicamento`, `IdUsuarioMedico`, `IdUsuarioPaciente`) VALUES ('2020-01-26', 'B+', '4031', 1019008918, 1019008937);
INSERT INTO `consultoriomedico`.`historiaclinica` (`FechaCreacion`, `GrupoSanguineo_RH`, `IdMedicamento`, `IdUsuarioMedico`, `IdUsuarioPaciente`) VALUES ('2020-11-28', 'B-', '103', 1019008917, 1019008938);
INSERT INTO `consultoriomedico`.`historiaclinica` (`FechaCreacion`, `GrupoSanguineo_RH`, `IdMedicamento`, `IdUsuarioMedico`, `IdUsuarioPaciente`) VALUES ('2021-11-03', 'B-', '108', 1019008915, 1019008939);
INSERT INTO `consultoriomedico`.`historiaclinica` (`FechaCreacion`, `GrupoSanguineo_RH`, `IdMedicamento`, `IdUsuarioMedico`, `IdUsuarioPaciente`) VALUES ('2021-06-10', 'O-', '2097', 1019008917, 1019008963);
INSERT INTO `consultoriomedico`.`historiaclinica` (`FechaCreacion`, `GrupoSanguineo_RH`, `IdMedicamento`, `IdUsuarioMedico`, `IdUsuarioPaciente`) VALUES ('2022-05-06', 'A-', '101', 1019008918, 1019008964);
INSERT INTO `consultoriomedico`.`historiaclinica` (`FechaCreacion`, `GrupoSanguineo_RH`, `IdMedicamento`, `IdUsuarioMedico`, `IdUsuarioPaciente`) VALUES ('2022-04-05', 'O-', '101', 1019008915, 1019008965);
INSERT INTO `consultoriomedico`.`historiaclinica` (`FechaCreacion`, `GrupoSanguineo_RH`, `IdMedicamento`, `IdUsuarioMedico`, `IdUsuarioPaciente`) VALUES ('2020-01-26', 'B-', '4031', 1019008918, 1019008966);
INSERT INTO `consultoriomedico`.`historiaclinica` (`FechaCreacion`, `GrupoSanguineo_RH`, `IdMedicamento`, `IdUsuarioMedico`, `IdUsuarioPaciente`) VALUES ('2020-03-26', 'A+', '2097', 1019008918, 1019008967);
INSERT INTO `consultoriomedico`.`historiaclinica` (`FechaCreacion`, `GrupoSanguineo_RH`, `IdMedicamento`, `IdUsuarioMedico`, `IdUsuarioPaciente`) VALUES ('2020-04-26', 'B-', '4031', 1019008918, 1019008968);
INSERT INTO `consultoriomedico`.`historiaclinica` (`FechaCreacion`, `GrupoSanguineo_RH`, `IdMedicamento`, `IdUsuarioMedico`, `IdUsuarioPaciente`) VALUES ('2020-07-26', 'O-', '303', 1019008918, 1019008969);
INSERT INTO `consultoriomedico`.`historiaclinica` (`FechaCreacion`, `GrupoSanguineo_RH`, `IdMedicamento`, `IdUsuarioMedico`, `IdUsuarioPaciente`) VALUES ('2020-01-26', 'A-', '4031', 1019008915, 1019108914);
INSERT INTO `consultoriomedico`.`historiaclinica` (`FechaCreacion`, `GrupoSanguineo_RH`, `IdMedicamento`, `IdUsuarioMedico`, `IdUsuarioPaciente`) VALUES ('2020-05-26', 'A+','4031', 1019008917, 1029008910);
INSERT INTO `consultoriomedico`.`historiaclinica` (`FechaCreacion`, `GrupoSanguineo_RH`, `IdMedicamento`, `IdUsuarioMedico`, `IdUsuarioPaciente`) VALUES ('2020-07-26', 'B-', '510', 1019008918, 1029008918);

INSERT INTO `consultoriomedico`.`historiaclinica` (`FechaCreacion`, `GrupoSanguineo_RH`, `IdMedicamento`, `IdUsuarioMedico`, `IdUsuarioPaciente`) VALUES ('2020-03-23', 'B+', '4031', 1019008918, 1029008962);
INSERT INTO `consultoriomedico`.`historiaclinica` (`FechaCreacion`, `GrupoSanguineo_RH`, `IdMedicamento`, `IdUsuarioMedico`, `IdUsuarioPaciente`) VALUES ('2020-04-25', 'O-', '108', 1019008917, 1029008963);
INSERT INTO `consultoriomedico`.`historiaclinica` (`FechaCreacion`, `GrupoSanguineo_RH`, `IdMedicamento`, `IdUsuarioMedico`, `IdUsuarioPaciente`) VALUES ('2020-07-26', 'A-', '103', 1019008915, 1029008964);
INSERT INTO `consultoriomedico`.`historiaclinica` (`FechaCreacion`, `GrupoSanguineo_RH`, `IdMedicamento`, `IdUsuarioMedico`, `IdUsuarioPaciente`) VALUES ('2020-01-26', 'A+', '2098', 1019008918, 1029008965);
INSERT INTO `consultoriomedico`.`historiaclinica` (`FechaCreacion`, `GrupoSanguineo_RH`, `IdMedicamento`, `IdUsuarioMedico`, `IdUsuarioPaciente`) VALUES ('2020-02-26', 'B-', '2100', 1019008917, 1029008966);
INSERT INTO `consultoriomedico`.`historiaclinica` (`FechaCreacion`, `GrupoSanguineo_RH`, `IdMedicamento`, `IdUsuarioMedico`, `IdUsuarioPaciente`) VALUES ('2020-12-13', 'B+', '2105', 1019008915, 1029008967);
INSERT INTO `consultoriomedico`.`historiaclinica` (`FechaCreacion`, `GrupoSanguineo_RH`, `IdMedicamento`, `IdUsuarioMedico`, `IdUsuarioPaciente`) VALUES ('2020-11-10', 'O+', '101', 1019008918, 1029008968);
INSERT INTO `consultoriomedico`.`historiaclinica` (`FechaCreacion`, `GrupoSanguineo_RH`, `IdMedicamento`, `IdUsuarioMedico`, `IdUsuarioPaciente`) VALUES ('2020-10-20', 'O+', '2097', 1019008915, 1029008969);


-- INSERCCIONES  ORDENES_HISTORIA----------------------------------------------------------------------------------------
SELECT * FROM  OrdenesHistoria;
INSERT INTO OrdenesHistoria (IdHistoria, OrdenesExternas) VALUES (1,'Control Semanal');
INSERT INTO OrdenesHistoria (IdHistoria, OrdenesExternas) VALUES (2,'Control Semanal ');
INSERT INTO OrdenesHistoria (IdHistoria, OrdenesExternas) VALUES (3,'Control Semanal');
INSERT INTO OrdenesHistoria (IdHistoria, OrdenesExternas) VALUES (4,'Medicina General');
INSERT INTO OrdenesHistoria (IdHistoria, OrdenesExternas) VALUES (5,'Control Semanal');
INSERT INTO OrdenesHistoria (IdHistoria, OrdenesExternas) VALUES (6,'Control Semanal');
INSERT INTO OrdenesHistoria (IdHistoria, OrdenesExternas) VALUES (7,'Lavado Oral');
INSERT INTO OrdenesHistoria (IdHistoria, OrdenesExternas) VALUES (8,'Ordenes de calzas');
INSERT INTO OrdenesHistoria (IdHistoria, OrdenesExternas) VALUES (9,'Examenes anesteciologo');
INSERT INTO OrdenesHistoria (IdHistoria, OrdenesExternas) VALUES (10,'Ortodoncia');
INSERT INTO OrdenesHistoria (IdHistoria, OrdenesExternas) VALUES (11,'Control Semanal');
INSERT INTO OrdenesHistoria (IdHistoria, OrdenesExternas) VALUES (12,'Remision  Anesteciologo');
INSERT INTO OrdenesHistoria (IdHistoria, OrdenesExternas) VALUES (13,'Cirugia Plastica');
INSERT INTO OrdenesHistoria (IdHistoria, OrdenesExternas) VALUES (14,'Control Semanal');
INSERT INTO OrdenesHistoria (IdHistoria, OrdenesExternas) VALUES (15,'Examenes Laboratorio');
INSERT INTO OrdenesHistoria (IdHistoria, OrdenesExternas) VALUES (16,'Control Semanal');
INSERT INTO OrdenesHistoria (IdHistoria, OrdenesExternas) VALUES (17,'Ortodoncias');
INSERT INTO OrdenesHistoria (IdHistoria, OrdenesExternas) VALUES (18,'Radiografia Mandubila');
INSERT INTO OrdenesHistoria (IdHistoria, OrdenesExternas) VALUES (19,'Examenes Laboratorio');
INSERT INTO OrdenesHistoria (IdHistoria, OrdenesExternas) VALUES (20,'Ortodoncia');
INSERT INTO OrdenesHistoria (IdHistoria, OrdenesExternas) VALUES (21,'Examenes Laboratorio');
INSERT INTO OrdenesHistoria (IdHistoria, OrdenesExternas) VALUES (22,'Sesiones de Limpieza');
INSERT INTO OrdenesHistoria (IdHistoria, OrdenesExternas) VALUES (23,'Control Semanal');
INSERT INTO OrdenesHistoria (IdHistoria, OrdenesExternas) VALUES (24,'Control mensual');
INSERT INTO OrdenesHistoria (IdHistoria, OrdenesExternas) VALUES (25,'Control mensual');
INSERT INTO OrdenesHistoria (IdHistoria, OrdenesExternas) VALUES (26,'Control Semanal');
INSERT INTO OrdenesHistoria (IdHistoria, OrdenesExternas) VALUES (27,'Control mensual');
INSERT INTO OrdenesHistoria (IdHistoria, OrdenesExternas) VALUES (28,'Control Semanal');
INSERT INTO OrdenesHistoria (IdHistoria, OrdenesExternas) VALUES (29,'Control anual');
INSERT INTO OrdenesHistoria (IdHistoria, OrdenesExternas) VALUES (30,'Control Semanal');

-- INSERCCIONES  ALERGIAS------------------------------------------------------------------------------------
SELECT * FROM  AlergiasHistoria;
INSERT INTO AlergiasHistoria (IdHistoria, Alergias) VALUES (1,'Ninguna');
INSERT INTO AlergiasHistoria (IdHistoria, Alergias) VALUES (2,'Polen ');
INSERT INTO AlergiasHistoria (IdHistoria, Alergias) VALUES (3,'Ninguna');
INSERT INTO AlergiasHistoria (IdHistoria, Alergias) VALUES (4,'Ningunal');
INSERT INTO AlergiasHistoria (IdHistoria, Alergias) VALUES (5,'Latex');
INSERT INTO AlergiasHistoria (IdHistoria, Alergias) VALUES (6,'Mani');
INSERT INTO AlergiasHistoria (IdHistoria, Alergias) VALUES (7,'Ninguna ');
INSERT INTO AlergiasHistoria (IdHistoria, Alergias) VALUES (8,'Oxicodona ');
INSERT INTO AlergiasHistoria (IdHistoria, Alergias) VALUES (9,'Ninguna ');
INSERT INTO AlergiasHistoria (IdHistoria, Alergias) VALUES (10,'Ibuprofeno ');
INSERT INTO AlergiasHistoria (IdHistoria, Alergias) VALUES (11,'Ácido acetilsalicílico');
INSERT INTO AlergiasHistoria (IdHistoria, Alergias) VALUES (12,'Paracetamol  ');
INSERT INTO AlergiasHistoria (IdHistoria, Alergias) VALUES (13,'Ninguna ');
INSERT INTO AlergiasHistoria (IdHistoria, Alergias) VALUES (14,'Ninguna');
INSERT INTO AlergiasHistoria (IdHistoria, Alergias) VALUES (15,'Ninguna ');
INSERT INTO AlergiasHistoria (IdHistoria, Alergias) VALUES (16,'Tramadol');
INSERT INTO AlergiasHistoria (IdHistoria, Alergias) VALUES (17,'Morfina');
INSERT INTO AlergiasHistoria (IdHistoria, Alergias) VALUES (18,'Etofenamato ');
INSERT INTO AlergiasHistoria (IdHistoria, Alergias) VALUES (19,'Ninguna ');
INSERT INTO AlergiasHistoria (IdHistoria, Alergias) VALUES (20,'Ninguna ');
INSERT INTO AlergiasHistoria (IdHistoria, Alergias) VALUES (21,'Tramadol ');
INSERT INTO AlergiasHistoria (IdHistoria, Alergias) VALUES (22,'Tramadol ');
INSERT INTO AlergiasHistoria (IdHistoria, Alergias) VALUES (23,'Ninguna ');
INSERT INTO AlergiasHistoria (IdHistoria, Alergias) VALUES (24,'Ninguna');
INSERT INTO AlergiasHistoria (IdHistoria, Alergias) VALUES (25,'Ninguna ');
INSERT INTO AlergiasHistoria (IdHistoria, Alergias) VALUES (26,'Tramadol');
INSERT INTO AlergiasHistoria (IdHistoria, Alergias) VALUES (27,'Morfina');
INSERT INTO AlergiasHistoria (IdHistoria, Alergias) VALUES (28,'Etofenamato ');
INSERT INTO AlergiasHistoria (IdHistoria, Alergias) VALUES (29,'Ninguna ');
INSERT INTO AlergiasHistoria (IdHistoria, Alergias) VALUES (30,'Ninguna ');
INSERT INTO AlergiasHistoria (IdHistoria, Alergias) VALUES (31,'Ninguna ');
INSERT INTO AlergiasHistoria (IdHistoria, Alergias) VALUES (32,'Ninguna ');
INSERT INTO AlergiasHistoria (IdHistoria, Alergias) VALUES (33,'Ninguna ');
INSERT INTO AlergiasHistoria (IdHistoria, Alergias) VALUES (34,'Ninguna ');
INSERT INTO AlergiasHistoria (IdHistoria, Alergias) VALUES (35,'Ninguna ');
INSERT INTO AlergiasHistoria (IdHistoria, Alergias) VALUES (36,'Ninguna ');
INSERT INTO AlergiasHistoria (IdHistoria, Alergias) VALUES (37,'Polem ');

-- insercciones Medico_Historia------------------------------------------------------------------------------------
select * from  MedicoHistoria;
INSERT INTO MedicoHistoria (IdUsuarioMedico, IdHistoria) VALUES  (1019008915, 1);
INSERT INTO MedicoHistoria (IdUsuarioMedico, IdHistoria) VALUES  (1019008915, 2);
INSERT INTO MedicoHistoria (IdUsuarioMedico, IdHistoria) VALUES  (1019008915, 3);
INSERT INTO MedicoHistoria (IdUsuarioMedico, IdHistoria) VALUES  (1019008915, 4);
INSERT INTO MedicoHistoria (IdUsuarioMedico, IdHistoria) VALUES  (1019008915, 5);
INSERT INTO MedicoHistoria (IdUsuarioMedico, IdHistoria) VALUES  (1019008917, 6);
INSERT INTO MedicoHistoria (IdUsuarioMedico, IdHistoria) VALUES  (1019008917, 7);
INSERT INTO MedicoHistoria (IdUsuarioMedico, IdHistoria) VALUES  (1019008917, 8);
INSERT INTO MedicoHistoria (IdUsuarioMedico, IdHistoria) VALUES  (1019008917, 9);
INSERT INTO MedicoHistoria (IdUsuarioMedico, IdHistoria) VALUES  (1019008917, 10);
INSERT INTO MedicoHistoria (IdUsuarioMedico, IdHistoria) VALUES  (1019008918, 11);
INSERT INTO MedicoHistoria (IdUsuarioMedico, IdHistoria) VALUES  (1019008918, 12);
INSERT INTO MedicoHistoria (IdUsuarioMedico, IdHistoria) VALUES  (1019008918, 13);
INSERT INTO MedicoHistoria (IdUsuarioMedico, IdHistoria) VALUES  (1019008918, 14);
INSERT INTO MedicoHistoria (IdUsuarioMedico, IdHistoria) VALUES  (1019008917, 15);
INSERT INTO MedicoHistoria (IdUsuarioMedico, IdHistoria) VALUES  (1019008915, 16);
INSERT INTO MedicoHistoria (IdUsuarioMedico, IdHistoria) VALUES  (1019008918, 17);
INSERT INTO MedicoHistoria (IdUsuarioMedico, IdHistoria) VALUES  (1019008917, 18);
INSERT INTO MedicoHistoria (IdUsuarioMedico, IdHistoria) VALUES  (1019008917, 19);
INSERT INTO MedicoHistoria (IdUsuarioMedico, IdHistoria) VALUES  (1019008915, 20);
INSERT INTO MedicoHistoria (IdUsuarioMedico, IdHistoria) VALUES  (1019008915, 21);
INSERT INTO MedicoHistoria (IdUsuarioMedico, IdHistoria) VALUES  (1019008918, 22);
INSERT INTO MedicoHistoria (IdUsuarioMedico, IdHistoria) VALUES  (1019008918, 23);
INSERT INTO MedicoHistoria (IdUsuarioMedico, IdHistoria) VALUES  (1019008917, 24);
INSERT INTO MedicoHistoria (IdUsuarioMedico, IdHistoria) VALUES  (1019008915, 25);
INSERT INTO MedicoHistoria (IdUsuarioMedico, IdHistoria) VALUES  (1019008917, 26);
INSERT INTO MedicoHistoria (IdUsuarioMedico, IdHistoria) VALUES  (1019008918, 27);
INSERT INTO MedicoHistoria (IdUsuarioMedico, IdHistoria) VALUES  (1019008915, 28);
INSERT INTO MedicoHistoria (IdUsuarioMedico, IdHistoria) VALUES  (1019008918, 29);
INSERT INTO MedicoHistoria (IdUsuarioMedico, IdHistoria) VALUES  (1019008918, 30);
INSERT INTO MedicoHistoria (IdUsuarioMedico, IdHistoria) VALUES  (1019008918, 31);
INSERT INTO MedicoHistoria (IdUsuarioMedico, IdHistoria) VALUES  (1019008915, 32);
INSERT INTO MedicoHistoria (IdUsuarioMedico, IdHistoria) VALUES  (1019008918, 33);
INSERT INTO MedicoHistoria (IdUsuarioMedico, IdHistoria) VALUES  (1019008918, 34);
INSERT INTO MedicoHistoria (IdUsuarioMedico, IdHistoria) VALUES  (1019008917, 35);
INSERT INTO MedicoHistoria (IdUsuarioMedico, IdHistoria) VALUES  (1019008915, 36);
INSERT INTO MedicoHistoria (IdUsuarioMedico, IdHistoria) VALUES  (1019008918, 37);
INSERT INTO MedicoHistoria (IdUsuarioMedico, IdHistoria) VALUES  (1019008917, 38);
INSERT INTO MedicoHistoria (IdUsuarioMedico, IdHistoria) VALUES  (1019008915, 39);
INSERT INTO MedicoHistoria (IdUsuarioMedico, IdHistoria) VALUES  (1019008918, 40);
INSERT INTO MedicoHistoria (IdUsuarioMedico, IdHistoria) VALUES  (1019008915, 41);

 -- ANTECEDENTESPACIENTE-----------------------------------------------------------------------------
 select * from   `consultoriomedico`.`antecedentespaciente` ;
INSERT INTO `consultoriomedico`.`antecedentespaciente` (`IdAntecedente`, `Enfermedades`, `Observaciones`, `IdHistoria`) VALUES ('100', 'Ninguna', 'Control Semanal', '1');
INSERT INTO `consultoriomedico`.`antecedentespaciente` (`IdAntecedente`, `Enfermedades`, `Observaciones`, `IdHistoria`) VALUES ('101', 'caries', 'Sesiones de limpiezas intensivas', '2');
INSERT INTO `consultoriomedico`.`antecedentespaciente` (`IdAntecedente`, `Enfermedades`, `Observaciones`, `IdHistoria`) VALUES ('102', 'Ninguna', 'Control mensual', '3');
INSERT INTO `consultoriomedico`.`antecedentespaciente` (`IdAntecedente`, `Enfermedades`, `Observaciones`, `IdHistoria`) VALUES ('103', 'Ninguna', 'Control mensual', '4');
INSERT INTO `consultoriomedico`.`antecedentespaciente` (`IdAntecedente`, `Enfermedades`, `Observaciones`, `IdHistoria`) VALUES ('104', 'Ninguna', 'Control anual', '5');
INSERT INTO `consultoriomedico`.`antecedentespaciente` (`IdAntecedente`, `Enfermedades`, `Observaciones`, `IdHistoria`) VALUES ('105', 'Ninguna', 'Control semanal', '6');
INSERT INTO `consultoriomedico`.`antecedentespaciente` (`IdAntecedente`, `Enfermedades`, `Observaciones`, `IdHistoria`) VALUES ('106', 'gingivitis', 'Limpieza profunda de encias en diferentes sesiones', '7');
INSERT INTO `consultoriomedico`.`antecedentespaciente` (`IdAntecedente`, `Enfermedades`, `Observaciones`, `IdHistoria`) VALUES ('107', 'Halitosis', 'Limpiezas y desinfeccion oral', '8');
INSERT INTO `consultoriomedico`.`antecedentespaciente` (`IdAntecedente`, `Enfermedades`, `Observaciones`, `IdHistoria`) VALUES ('108', 'Ninguna', 'Control Semanal', '9');
INSERT INTO `consultoriomedico`.`antecedentespaciente` (`IdAntecedente`, `Enfermedades`, `Observaciones`, `IdHistoria`) VALUES ('109', 'Aftas', 'Estudios Orales', '10');
INSERT INTO `consultoriomedico`.`antecedentespaciente` (`IdAntecedente`, `Enfermedades`, `Observaciones`, `IdHistoria`) VALUES ('110', 'Herpes Labial', 'Control y seguimiento tratamientos', '11');
INSERT INTO `consultoriomedico`.`antecedentespaciente` (`IdAntecedente`, `Enfermedades`, `Observaciones`, `IdHistoria`) VALUES ('111', 'Ninguna', 'Control semanal', '12');
INSERT INTO `consultoriomedico`.`antecedentespaciente` (`IdAntecedente`, `Enfermedades`, `Observaciones`, `IdHistoria`) VALUES ('112', 'Ninguna', 'Control mensual', '13');
INSERT INTO `consultoriomedico`.`antecedentespaciente` (`IdAntecedente`, `Enfermedades`, `Observaciones`, `IdHistoria`) VALUES ('113', 'Caries', 'Planeacion higiene bucal', '14');
INSERT INTO `consultoriomedico`.`antecedentespaciente` (`IdAntecedente`, `Enfermedades`, `Observaciones`, `IdHistoria`) VALUES ('114', 'Caries', 'Planeacion higiene bucal', '15');
INSERT INTO `consultoriomedico`.`antecedentespaciente` (`IdAntecedente`, `Enfermedades`, `Observaciones`, `IdHistoria`) VALUES ('115', 'Ninguna', 'control anual', '16');
INSERT INTO `consultoriomedico`.`antecedentespaciente` (`IdAntecedente`, `Enfermedades`, `Observaciones`, `IdHistoria`) VALUES ('116', 'Piorrea', 'Seguimiento tratamiento bucal', '17');
INSERT INTO `consultoriomedico`.`antecedentespaciente` (`IdAntecedente`, `Enfermedades`, `Observaciones`, `IdHistoria`) VALUES ('117', 'Periodonitits', 'Seguimiento tratamiento bucal', '18');
INSERT INTO `consultoriomedico`.`antecedentespaciente` (`IdAntecedente`, `Enfermedades`, `Observaciones`, `IdHistoria`) VALUES ('118', 'Gingivitis', 'Limpieza profunda de encias en diferentes sesiones', '19');
INSERT INTO `consultoriomedico`.`antecedentespaciente` (`IdAntecedente`, `Enfermedades`, `Observaciones`, `IdHistoria`) VALUES ('119', 'Ninguna', 'control mensual', '20');
INSERT INTO `consultoriomedico`.`antecedentespaciente` (`IdAntecedente`, `Enfermedades`, `Observaciones`, `IdHistoria`) VALUES ('120', 'Ninguna', 'control semanal', '21');
INSERT INTO `consultoriomedico`.`antecedentespaciente` (`IdAntecedente`, `Enfermedades`, `Observaciones`, `IdHistoria`) VALUES ('121', 'Ninguna', 'control anual', '22');
INSERT INTO `consultoriomedico`.`antecedentespaciente` (`IdAntecedente`, `Enfermedades`, `Observaciones`, `IdHistoria`) VALUES ('122', 'Caries', 'Planeacion higiene bucal', '23');
INSERT INTO `consultoriomedico`.`antecedentespaciente` (`IdAntecedente`, `Enfermedades`, `Observaciones`, `IdHistoria`) VALUES ('123', 'Ninguna', 'control mensual', '24');
INSERT INTO `consultoriomedico`.`antecedentespaciente` (`IdAntecedente`, `Enfermedades`, `Observaciones`, `IdHistoria`) VALUES ('124', 'Ninguna', 'control mensual', '25');
INSERT INTO `consultoriomedico`.`antecedentespaciente` (`IdAntecedente`, `Enfermedades`, `Observaciones`, `IdHistoria`) VALUES ('125', 'halitosis', 'Sesiones de limpieza ', '26');
INSERT INTO `consultoriomedico`.`antecedentespaciente` (`IdAntecedente`, `Enfermedades`, `Observaciones`, `IdHistoria`) VALUES ('126', 'Caries', 'Planeacion higiene bucal', '27');
INSERT INTO `consultoriomedico`.`antecedentespaciente` (`IdAntecedente`, `Enfermedades`, `Observaciones`, `IdHistoria`) VALUES ('127', 'Ninguna', 'control semanal', '28');
INSERT INTO `consultoriomedico`.`antecedentespaciente` (`IdAntecedente`, `Enfermedades`, `Observaciones`, `IdHistoria`) VALUES ('128', 'Ninguna', 'control mensual', '29');
INSERT INTO `consultoriomedico`.`antecedentespaciente` (`IdAntecedente`, `Enfermedades`, `Observaciones`, `IdHistoria`) VALUES ('129', 'Ninguna', 'control mensual', '30');
INSERT INTO `consultoriomedico`.`antecedentespaciente` (`IdAntecedente`, `Enfermedades`, `Observaciones`, `IdHistoria`) VALUES ('130', 'Ninguna', 'control mensual', '31');
INSERT INTO `consultoriomedico`.`antecedentespaciente` (`IdAntecedente`, `Enfermedades`, `Observaciones`, `IdHistoria`) VALUES ('131', 'Caries', 'Planeacion higiene bucal', '32');
INSERT INTO `consultoriomedico`.`antecedentespaciente` (`IdAntecedente`, `Enfermedades`, `Observaciones`, `IdHistoria`) VALUES ('132', 'Caries', 'Planeacion higiene bucal', '33');
INSERT INTO `consultoriomedico`.`antecedentespaciente` (`IdAntecedente`, `Enfermedades`, `Observaciones`, `IdHistoria`) VALUES ('133', 'Caries', 'Planeacion higiene bucal', '34');
INSERT INTO `consultoriomedico`.`antecedentespaciente` (`IdAntecedente`, `Enfermedades`, `Observaciones`, `IdHistoria`) VALUES ('134', 'Caries', 'Planeacion higiene bucal', '35');
INSERT INTO `consultoriomedico`.`antecedentespaciente` (`IdAntecedente`, `Enfermedades`, `Observaciones`, `IdHistoria`) VALUES ('135', 'Caries', 'Planeacion higiene bucal', '36');
INSERT INTO `consultoriomedico`.`antecedentespaciente` (`IdAntecedente`, `Enfermedades`, `Observaciones`, `IdHistoria`) VALUES ('136', 'Ninguna', 'control mensual', '37');
INSERT INTO `consultoriomedico`.`antecedentespaciente` (`IdAntecedente`, `Enfermedades`, `Observaciones`, `IdHistoria`) VALUES ('137', 'Ninguna', 'control semanal', '38');
INSERT INTO `consultoriomedico`.`antecedentespaciente` (`IdAntecedente`, `Enfermedades`, `Observaciones`, `IdHistoria`) VALUES ('138', 'Ninguna', 'control anual', '39');
INSERT INTO `consultoriomedico`.`antecedentespaciente` (`IdAntecedente`, `Enfermedades`, `Observaciones`, `IdHistoria`) VALUES ('139', 'Piorrea', 'Seguimiento tratamiento bucal', '40');
INSERT INTO `consultoriomedico`.`antecedentespaciente` (`IdAntecedente`, `Enfermedades`, `Observaciones`, `IdHistoria`) VALUES ('140', 'Piorrea', 'Seguimiento tratamiento bucal', '41');


-- CARTA DENTAL----------------------------------------------------------------------------------------------------------
Select * from `consultoriomedico`.`cartadental`;
INSERT INTO `consultoriomedico`.`cartadental` (`IdCartaDental`, `AnalisisPaciente`, `Diagnostico`, `IdHistoria`) VALUES ('1', 'Realizar un control semanal de las limpiezas', 'Abrasion', '1');
INSERT INTO `consultoriomedico`.`cartadental` (`IdCartaDental`, `AnalisisPaciente`, `Diagnostico`, `IdHistoria`) VALUES ('2', 'Limpiezas mensuales', 'Atricion', '2');
INSERT INTO `consultoriomedico`.`cartadental` (`IdCartaDental`, `AnalisisPaciente`, `Diagnostico`, `IdHistoria`) VALUES ('3', 'Limpiezas mensuales', 'Apiñamiento', '3');
INSERT INTO `consultoriomedico`.`cartadental` (`IdCartaDental`, `AnalisisPaciente`, `Diagnostico`, `IdHistoria`) VALUES ('4', 'Limpieza profunda', 'Calculos', '4');
INSERT INTO `consultoriomedico`.`cartadental` (`IdCartaDental`, `AnalisisPaciente`, `Diagnostico`, `IdHistoria`) VALUES ('5', 'Necesidad de protesis a talla', 'Protesis Fija', '5');
INSERT INTO `consultoriomedico`.`cartadental` (`IdCartaDental`, `AnalisisPaciente`, `Diagnostico`, `IdHistoria`) VALUES ('6', 'Ratacion a estudio leve', 'Rotacion leve', '6');
INSERT INTO `consultoriomedico`.`cartadental` (`IdCartaDental`, `AnalisisPaciente`, `Diagnostico`, `IdHistoria`) VALUES ('7', 'Rotacion a estudio leve', 'Rotacion moderada', '7');
INSERT INTO `consultoriomedico`.`cartadental` (`IdCartaDental`, `AnalisisPaciente`, `Diagnostico`, `IdHistoria`) VALUES ('8', 'Nivel de la corona compeltado', 'Corona completa', '8');
INSERT INTO `consultoriomedico`.`cartadental` (`IdCartaDental`, `AnalisisPaciente`, `Diagnostico`, `IdHistoria`) VALUES ('9', 'Nivel de desgaste moderado, seguimiento', 'Desgaste moderado superior', '9');
INSERT INTO `consultoriomedico`.`cartadental` (`IdCartaDental`, `AnalisisPaciente`, `Diagnostico`, `IdHistoria`) VALUES ('10', 'Trtamiento aclarador de pigmentacion', 'Pigmentacion', '10');
INSERT INTO `consultoriomedico`.`cartadental` (`IdCartaDental`, `AnalisisPaciente`, `Diagnostico`, `IdHistoria`) VALUES ('11', 'Placa dental', 'Placa ortopedica', '11');
INSERT INTO `consultoriomedico`.`cartadental` (`IdCartaDental`, `AnalisisPaciente`, `Diagnostico`, `IdHistoria`) VALUES ('12', 'Talla inicial protesis', 'talla pre-protesis', '12');
INSERT INTO `consultoriomedico`.`cartadental` (`IdCartaDental`, `AnalisisPaciente`, `Diagnostico`, `IdHistoria`) VALUES ('13', 'Contol mensual', 'Sin alteracion', '13');
INSERT INTO `consultoriomedico`.`cartadental` (`IdCartaDental`, `AnalisisPaciente`, `Diagnostico`, `IdHistoria`) VALUES ('14', 'Manejo de Control Semanal', 'Diastema', '14');
INSERT INTO `consultoriomedico`.`cartadental` (`IdCartaDental`, `AnalisisPaciente`, `Diagnostico`, `IdHistoria`) VALUES ('15', 'Extraccion de diente incluido', 'Diente incluido', '15');
INSERT INTO `consultoriomedico`.`cartadental` (`IdCartaDental`, `AnalisisPaciente`, `Diagnostico`, `IdHistoria`) VALUES ('16', 'Avistamiento de gran erosion', 'Erosion', '16');
INSERT INTO `consultoriomedico`.`cartadental` (`IdCartaDental`, `AnalisisPaciente`, `Diagnostico`, `IdHistoria`) VALUES ('17', 'Control enfermedad cronica ', 'Enfermedad Periodontal', '17');
INSERT INTO `consultoriomedico`.`cartadental` (`IdCartaDental`, `AnalisisPaciente`, `Diagnostico`, `IdHistoria`) VALUES ('18', 'Fractura Superior de nivel superficial', 'Fractura antigua superficial', '18');
INSERT INTO `consultoriomedico`.`cartadental` (`IdCartaDental`, `AnalisisPaciente`, `Diagnostico`, `IdHistoria`) VALUES ('19', 'Manejo gingivitis', 'Retracion gingivial', '19');
INSERT INTO `consultoriomedico`.`cartadental` (`IdCartaDental`, `AnalisisPaciente`, `Diagnostico`, `IdHistoria`) VALUES ('20', 'Control de gresion bucal', 'Gresion', '20');
INSERT INTO `consultoriomedico`.`cartadental` (`IdCartaDental`, `AnalisisPaciente`, `Diagnostico`, `IdHistoria`) VALUES ('21', 'control inteso de palatino', 'Palatino', '21');
INSERT INTO `consultoriomedico`.`cartadental` (`IdCartaDental`, `AnalisisPaciente`, `Diagnostico`, `IdHistoria`) VALUES ('22', 'Hallasgo vestibular inferior', 'Vestibular', '22');
INSERT INTO `consultoriomedico`.`cartadental` (`IdCartaDental`, `AnalisisPaciente`, `Diagnostico`, `IdHistoria`) VALUES ('23', 'Manejo de Control Semanal', 'Diastema', '23');
INSERT INTO `consultoriomedico`.`cartadental` (`IdCartaDental`, `AnalisisPaciente`, `Diagnostico`, `IdHistoria`) VALUES ('24', 'Nivel de desgaste severo, seguimiento', 'Desgaste severo superior', '24');
INSERT INTO `consultoriomedico`.`cartadental` (`IdCartaDental`, `AnalisisPaciente`, `Diagnostico`, `IdHistoria`) VALUES ('25', 'Sellante a fosetas presentes nivel superior', 'Sellante fosetas', '25');
INSERT INTO `consultoriomedico`.`cartadental` (`IdCartaDental`, `AnalisisPaciente`, `Diagnostico`, `IdHistoria`) VALUES ('26', 'Sellante a fisuras presentes nivel inferior', 'Sellante fisuras', '26');
INSERT INTO `consultoriomedico`.`cartadental` (`IdCartaDental`, `AnalisisPaciente`, `Diagnostico`, `IdHistoria`) VALUES ('27', 'Control mensual', 'Sin alteracion', '27');
INSERT INTO `consultoriomedico`.`cartadental` (`IdCartaDental`, `AnalisisPaciente`, `Diagnostico`, `IdHistoria`) VALUES ('28', 'Control mensual', 'Sin alteracion', '28');
INSERT INTO `consultoriomedico`.`cartadental` (`IdCartaDental`, `AnalisisPaciente`, `Diagnostico`, `IdHistoria`) VALUES ('29', 'Control anual', 'Sin alteracion', '29');
INSERT INTO `consultoriomedico`.`cartadental` (`IdCartaDental`, `AnalisisPaciente`, `Diagnostico`, `IdHistoria`) VALUES ('30', 'Control Semanal', 'Hipoplasia', '30');

UPDATE `consultoriomedico`.`cartadental` SET `AnalisisPaciente` = 'Realizar un control semanal ', `Diagnostico` = 'Sin alteracion' WHERE (`IdCartaDental` = '1');
UPDATE `consultoriomedico`.`cartadental` SET `AnalisisPaciente` = 'Control Mensual', `Diagnostico` = 'Sin alteracion' WHERE (`IdCartaDental` = '2');
UPDATE `consultoriomedico`.`cartadental` SET `AnalisisPaciente` = 'Control Mensual', `Diagnostico` = 'Sin alteracion' WHERE (`IdCartaDental` = '3');
UPDATE `consultoriomedico`.`cartadental` SET `AnalisisPaciente` = 'Control Mensual', `Diagnostico` = 'Sin alteracion' WHERE (`IdCartaDental` = '5');
UPDATE `consultoriomedico`.`cartadental` SET `AnalisisPaciente` = 'Control Mensual', `Diagnostico` = 'Sin alteracion' WHERE (`IdCartaDental` = '6');
UPDATE `consultoriomedico`.`cartadental` SET `AnalisisPaciente` = 'Control Semanal', `Diagnostico` = 'Sin alteracion' WHERE (`IdCartaDental` = '11');
UPDATE `consultoriomedico`.`cartadental` SET `AnalisisPaciente` = 'Control Mensual', `Diagnostico` = 'Sin alteracion' WHERE (`IdCartaDental` = '14');
UPDATE `consultoriomedico`.`cartadental` SET `AnalisisPaciente` = 'Control Anual', `Diagnostico` = 'Sin alteracion' WHERE (`IdCartaDental` = '16');
UPDATE `consultoriomedico`.`cartadental` SET `AnalisisPaciente` = 'Control Semanal', `Diagnostico` = 'Sin alteracion' WHERE (`IdCartaDental` = '23');
UPDATE `consultoriomedico`.`cartadental` SET `AnalisisPaciente` = 'Control Mensual', `Diagnostico` = 'Sin alteracion' WHERE (`IdCartaDental` = '24');
UPDATE `consultoriomedico`.`cartadental` SET `AnalisisPaciente` = 'Control Mensual', `Diagnostico` = 'Sin alteracion' WHERE (`IdCartaDental` = '25');
UPDATE `consultoriomedico`.`cartadental` SET `AnalisisPaciente` = 'Control anual', `Diagnostico` = 'Sin alteracion' WHERE (`IdCartaDental` = '26');
UPDATE `consultoriomedico`.`cartadental` SET `Diagnostico` = 'Sin alteracion' WHERE (`IdCartaDental` = '30');
UPDATE `consultoriomedico`.`cartadental` SET `AnalisisPaciente` = 'Control Mensual' WHERE (`IdCartaDental` = '13');

UPDATE `consultoriomedico`.`cartadental` SET `AnalisisPaciente` = 'Cirugia Plastica', `Diagnostico` = 'Cirujia Mandibular' WHERE (`IdCartaDental` = '13');

-- TRATAMIENTO ------------------------------------------------------------------------------------------------------------------
select * from `consultoriomedico`.`tratamiento`;
INSERT INTO `consultoriomedico`.`tratamiento` ( `DetalleTratamiento`, `DuracionTratamiento`, `FechaTratamiento`, `IdHistoria`) VALUES ('Remicion a Control de Medicina General Tratameinto Consulta de mandibula', '18 MESES', '2022-01-04', '4');
INSERT INTO `consultoriomedico`.`tratamiento` ( `DetalleTratamiento`, `DuracionTratamiento`, `FechaTratamiento`, `IdHistoria`) VALUES ('Sesiones Intensas de Lavado Oral', '4 MESES', '2021-05-20', '7');
INSERT INTO `consultoriomedico`.`tratamiento` ( `DetalleTratamiento`, `DuracionTratamiento`, `FechaTratamiento`, `IdHistoria`) VALUES ('Control de Calzas descalcificadas', '1 MESES', '2021-08-31', '8');
INSERT INTO `consultoriomedico`.`tratamiento` (`DetalleTratamiento`, `DuracionTratamiento`, `FechaTratamiento`, `IdHistoria`) VALUES ('Seguimiento Retiro de cordales Inferiores', '3 MESES', '2020-08-05', '9');
INSERT INTO `consultoriomedico`.`tratamiento` (`DetalleTratamiento`, `DuracionTratamiento`, `FechaTratamiento`, `IdHistoria`) VALUES ('Tratamiento Ortodoncia completa', '5 MESES', '2022-06-12', '10');
INSERT INTO `consultoriomedico`.`tratamiento` (`DetalleTratamiento`, `DuracionTratamiento`, `FechaTratamiento`, `IdHistoria`) VALUES ('Seguimiento Retiro de cordales Superiores', '2 MESES', '2020-01-05', '12');
INSERT INTO `consultoriomedico`.`tratamiento` (`DetalleTratamiento`, `DuracionTratamiento`, `FechaTratamiento`, `IdHistoria`) VALUES ('Tratamiento Re ubicacion y moldeamiento de mandibula', '5 MESES', '2019-05-10', '13');
INSERT INTO `consultoriomedico`.`tratamiento` (`DetalleTratamiento`, `DuracionTratamiento`, `FechaTratamiento`, `IdHistoria`) VALUES ('Tratamiento Tejido maxilar superior', '7 MESES', '2021-08-15', '15');
INSERT INTO `consultoriomedico`.`tratamiento` (`DetalleTratamiento`, `DuracionTratamiento`, `FechaTratamiento`, `IdHistoria`) VALUES ('Tratamiento Ortodoncia completa', '4 MESES', '2020-08-19', '17');
INSERT INTO `consultoriomedico`.`tratamiento` (`DetalleTratamiento`, `DuracionTratamiento`, `FechaTratamiento`, `IdHistoria`) VALUES ('Remision de Medicina Generar Tratamiento ubicacion Mandibula', '13 MESES', '2022-04-27', '18');
INSERT INTO `consultoriomedico`.`tratamiento` (`DetalleTratamiento`, `DuracionTratamiento`, `FechaTratamiento`, `IdHistoria`) VALUES ('Tratamiento Tejido maxilar superior', '14 MESES', '2022-08-30', '19');
INSERT INTO `consultoriomedico`.`tratamiento` (`DetalleTratamiento`, `DuracionTratamiento`, `FechaTratamiento`, `IdHistoria`) VALUES ('Tratamiento Ortodoncia Inferior', '18 MESES', '2021-12-15', '20');
INSERT INTO `consultoriomedico`.`tratamiento` (`DetalleTratamiento`, `DuracionTratamiento`, `FechaTratamiento`, `IdHistoria`) VALUES ('Tratamiento Tejido maxilary paladar superior', '11 MESES', '2020-01-26', '21');
INSERT INTO `consultoriomedico`.`tratamiento` (`DetalleTratamiento`, `DuracionTratamiento`, `FechaTratamiento`, `IdHistoria`) VALUES ('Sesiones Intensas de Lavado Oral', '10 MESES', '2020-11-28', '22');

/* evolcuiontratamiento */
INSERT INTO `consultoriomedico`.`evoluciontratamiento` (`FechaEvolucion`, `HoraEvolucion`, `Estado`, `ProcedimientoRealizado`, `IdTratamiento`) VALUES ('2021-06-29', '12:25:07', 'En proceso', 'Segunda Sesion De lavado Intenso', '2');
INSERT INTO `consultoriomedico`.`evoluciontratamiento` ( `FechaEvolucion`, `HoraEvolucion`, `Estado`, `ProcedimientoRealizado`, `IdTratamiento`) VALUES ('2021-09-31', '18:10:02', 'Finalizada', 'Finalizacion Tratamiento Terminado Calzas Descalsificadas', '3');
INSERT INTO `consultoriomedico`.`evoluciontratamiento` ( `FechaEvolucion`, `HoraEvolucion`, `Estado`, `ProcedimientoRealizado`, `IdTratamiento`) VALUES ( '2020-11-05', '13:25:10', 'Finalizada', 'Finalizacion Seguimiento Retiro de cordales Inferiores', '4');
INSERT INTO `consultoriomedico`.`evoluciontratamiento` ( `FechaEvolucion`, `HoraEvolucion`, `Estado`, `ProcedimientoRealizado`, `IdTratamiento`) VALUES ( '2022-09-08', '13:25:18', 'En proceso', 'Procedo en Tratamiento Ortodoncia completa', '5');
INSERT INTO `consultoriomedico`.`evoluciontratamiento` (`FechaEvolucion`, `HoraEvolucion`, `Estado`, `ProcedimientoRealizado`, `IdTratamiento`) VALUES ( '2020-03-05', '08:45:42', 'Finalizada', 'Tratamiento Finalizado Seguimiento Retiro de cordales Superiores', '6');
INSERT INTO `consultoriomedico`.`evoluciontratamiento` (`FechaEvolucion`, `HoraEvolucion`, `Estado`, `ProcedimientoRealizado`, `IdTratamiento`) VALUES ( '2019-07-25', '15:42:21', 'En proceso', 'Tratamiento en proceso Re ubicacion y moldeamiento de mandibula', '7');
INSERT INTO `consultoriomedico`.`evoluciontratamiento` ( `FechaEvolucion`, `HoraEvolucion`, `Estado`, `ProcedimientoRealizado`, `IdTratamiento`) VALUES ( '2021-10-15', '11:36:58', 'En proceso', 'Tratamiento en proceso Tejido maxilar superior', '8');
INSERT INTO `consultoriomedico`.`evoluciontratamiento` ( `FechaEvolucion`, `HoraEvolucion`, `Estado`, `ProcedimientoRealizado`, `IdTratamiento`) VALUES ('2020-09-22', '14:15:15', 'En proceso', 'Tratamiento en proceso Ortodoncia completa', '9');
INSERT INTO `consultoriomedico`.`evoluciontratamiento` (`FechaEvolucion`, `HoraEvolucion`, `Estado`, `ProcedimientoRealizado`, `IdTratamiento`) VALUES ( '2022-07-28', '07:45:00', 'En proceso', 'Tratamiento en proceso ubicacion Mandibula', '10');
INSERT INTO `consultoriomedico`.`evoluciontratamiento` ( `FechaEvolucion`, `HoraEvolucion`, `Estado`, `ProcedimientoRealizado`, `IdTratamiento`) VALUES ( '2022-08-30', '08:47:00', 'Cancelada', 'Cancelado Tratamiento Tejido maxilar superior', '11');
INSERT INTO `consultoriomedico`.`evoluciontratamiento` ( `FechaEvolucion`, `HoraEvolucion`, `Estado`, `ProcedimientoRealizado`, `IdTratamiento`) VALUES ( '2022-04-15', '13:25:00', 'Cancelada', 'Cancelado Tratamiento Ortodoncia Inferior', '12');
INSERT INTO `consultoriomedico`.`evoluciontratamiento` ( `FechaEvolucion`, `HoraEvolucion`, `Estado`, `ProcedimientoRealizado`, `IdTratamiento`) VALUES ( '2020-08-26', '19:25:00', 'En proceso', 'En proceso Tratamiento Tejido maxilary paladar superior', '13');
INSERT INTO `consultoriomedico`.`evoluciontratamiento` ( `FechaEvolucion`, `HoraEvolucion`, `Estado`, `ProcedimientoRealizado`, `IdTratamiento`) VALUES ( '2020-12-28', '09:25:00', 'Cancelada', 'Cancelado Sesiones Intensas de Lavado Oral', '14');
INSERT INTO `consultoriomedico`.`evoluciontratamiento` (`FechaEvolucion`, `HoraEvolucion`, `Estado`, `ProcedimientoRealizado`, `IdTratamiento`) VALUES ( '2022-04-04', '15:45:00', 'Cancelada', 'Cancelacion Tratameintode mandibula', '1');

-- dientepaciente---------------------------------------------------------------------------------------------------------------
 select * from `consultoriomedico`.`dientepaciente`;
INSERT INTO `consultoriomedico`.`dientepaciente` (`Odontograma`, `IDEvolucionTratamiento`, `IDCartaDental`) VALUES ('vesticular 22 obturado', '1', '4');
INSERT INTO `consultoriomedico`.`dientepaciente` (`Odontograma`, `IDEvolucionTratamiento`, `IDCartaDental`) VALUES ('lingulares 81 destrido por caries', '2', '7');
INSERT INTO `consultoriomedico`.`dientepaciente` (`Odontograma`, `IDEvolucionTratamiento`, `IDCartaDental`) VALUES ('Vesticular 55  Izquierdo', '3', '8');
INSERT INTO `consultoriomedico`.`dientepaciente` (`Odontograma`, `IDEvolucionTratamiento`, `IDCartaDental`) VALUES ('Vesticular 62 linguales destruidos por trauma', '4', '9');
INSERT INTO `consultoriomedico`.`dientepaciente` (`Odontograma`, `IDEvolucionTratamiento`, `IDCartaDental`) VALUES ('Vesticular 11 Diente Faltante', '5', '10');
INSERT INTO `consultoriomedico`.`dientepaciente` (`Odontograma`, `IDEvolucionTratamiento`, `IDCartaDental`) VALUES ('Vesticular 37 38 75 izquierdo obturados', '6', '12');
INSERT INTO `consultoriomedico`.`dientepaciente` (`Odontograma`, `IDEvolucionTratamiento`, `IDCartaDental`) VALUES ('Linguales 51 52 amalgama', '7', '13');
INSERT INTO `consultoriomedico`.`dientepaciente` (`Odontograma`, `IDEvolucionTratamiento`, `IDCartaDental`) VALUES ('Vesticular 85 derecho linguales', '8', '15');
INSERT INTO `consultoriomedico`.`dientepaciente` (`Odontograma`, `IDEvolucionTratamiento`, `IDCartaDental`) VALUES ('Lingual 71 Destrido por caries', '9', '17');
INSERT INTO `consultoriomedico`.`dientepaciente` (`Odontograma`, `IDEvolucionTratamiento`, `IDCartaDental`) VALUES ('Vesticular Izquierdo 38 amalagama', '10', '18');
INSERT INTO `consultoriomedico`.`dientepaciente` (`Odontograma`, `IDEvolucionTratamiento`, `IDCartaDental`) VALUES ('Vesticular Superior 13 22 16', '11', '19');
INSERT INTO `consultoriomedico`.`dientepaciente` (`Odontograma`, `IDEvolucionTratamiento`, `IDCartaDental`) VALUES ('Linguales 84 Diente ontructo', '12', '20');
INSERT INTO `consultoriomedico`.`dientepaciente` (`Odontograma`, `IDEvolucionTratamiento`, `IDCartaDental`) VALUES ('Vesticular Izquierdo 37 38 obsturado', '13', '21');
INSERT INTO `consultoriomedico`.`dientepaciente` (`Odontograma`, `IDEvolucionTratamiento`, `IDCartaDental`) VALUES ('Vesticulares Derecho 55 54 obturado', '14', '22');



-- INSERCCIONES  CITAS----------------------------------------------------------------------------------------------------------
SELECT * FROM cita;
INSERT INTO Cita (FechaCita, Horacita, TipoCita, EstadoCita, IdUsuarioPaciente, IdUsuarioMedico) VALUES ('2022-06-22','13:25:25', 'Consulta General','Registrada',1029008966,1019008915);
INSERT INTO Cita (FechaCita, Horacita, TipoCita, EstadoCita, IdUsuarioPaciente, IdUsuarioMedico) VALUES ('2022-06-22','09:58:52', 'Consulta General','Cancelada',1029008967,1019008915);
INSERT INTO Cita (FechaCita, Horacita, TipoCita, EstadoCita, IdUsuarioPaciente, IdUsuarioMedico) VALUES ('2022-06-22','13:10:25', 'Consulta General','Reagendada',1029008968,1019008915);
INSERT INTO Cita (FechaCita, Horacita, TipoCita, EstadoCita, IdUsuarioPaciente, IdUsuarioMedico) VALUES ('2022-06-22','15:25:20', 'Consulta General','Proceso',1029008969,1019008915);
INSERT INTO Cita (FechaCita, Horacita, TipoCita, EstadoCita, IdUsuarioPaciente, IdUsuarioMedico) VALUES ('2022-06-22','07:05:15', 'Consulta General','Proceso',1019008966, 1019008915);
INSERT INTO Cita (FechaCita, Horacita, TipoCita, EstadoCita, IdUsuarioPaciente, IdUsuarioMedico) VALUES ('2022-06-22','10:45:10', 'Consulta General','Cancelada',1019008967, 1019008915);
INSERT INTO Cita (FechaCita, Horacita, TipoCita, EstadoCita, IdUsuarioPaciente, IdUsuarioMedico) VALUES ('2022-06-22','14:25:02', 'Consulta General','Cancelada',1019008923, 1019008915);
INSERT INTO Cita (FechaCita, Horacita, TipoCita, EstadoCita, IdUsuarioPaciente, IdUsuarioMedico) VALUES ('2022-06-22','09:10:12', 'Consulta General','Reagaendada',1019008924, 1019008915);
INSERT INTO Cita (FechaCita, Horacita, TipoCita, EstadoCita, IdUsuarioPaciente, IdUsuarioMedico) VALUES ('2022-06-22','07:10:12', 'Consulta General','Registrada',1019008925, 1019008915);
INSERT INTO Cita (FechaCita, Horacita, TipoCita, EstadoCita, IdUsuarioPaciente, IdUsuarioMedico) VALUES ('2022-06-22','12:10:12', 'Consulta General','Registrada',1019008926, 1019008915);
INSERT INTO Cita (FechaCita, Horacita, TipoCita, EstadoCita, IdUsuarioPaciente, IdUsuarioMedico) VALUES ('2022-06-22','09:10:12', 'Consulta General','Proceso',1019008927, 1019008915);
INSERT INTO Cita (FechaCita, Horacita, TipoCita, EstadoCita, IdUsuarioPaciente, IdUsuarioMedico) VALUES ('2022-06-22','09:20:12', 'Consulta General','Proceso',1019008928, 1019008915);
INSERT INTO Cita (FechaCita, Horacita, TipoCita, EstadoCita, IdUsuarioPaciente, IdUsuarioMedico) VALUES ('2022-06-22','15:45:10', 'Consulta General','Reagendada',1019008931, 1019008915);
INSERT INTO Cita (FechaCita, Horacita, TipoCita, EstadoCita, IdUsuarioPaciente, IdUsuarioMedico) VALUES ('2022-06-22','16:25:02', 'Consulta General','Reagendada',1019008932, 1019008915);
INSERT INTO Cita (FechaCita, Horacita, TipoCita, EstadoCita, IdUsuarioPaciente, IdUsuarioMedico) VALUES ('2022-06-23','16:25:02', 'Consulta General: Limpieza','Reagendada',1019008932, 1019008915);
INSERT INTO Cita (FechaCita, Horacita, TipoCita, EstadoCita, IdUsuarioPaciente, IdUsuarioMedico) VALUES ('2022-06-20','12:05:20 ', 'Consulta General', 'Cancelada' ,1019008969, 1019008915);
INSERT INTO Cita (FechaCita, Horacita, TipoCita, EstadoCita, IdUsuarioPaciente, IdUsuarioMedico) VALUES ('2022-06-23','15:55:55 ', 'Consulta General','Registrada',1019108914,1019008915);


INSERT INTO Cita (FechaCita, Horacita, TipoCita, EstadoCita, IdUsuarioPaciente, IdUsuarioMedico) VALUES ('2022-06-28','15:25:17', 'Ortodoncia','Proceso',1029008965, 1019008917);
INSERT INTO Cita (FechaCita, Horacita, TipoCita, EstadoCita, IdUsuarioPaciente, IdUsuarioMedico) VALUES ('2022-06-28','07:25:10 ', 'Ortodoncia Retiro Bracket','Reagendada',1019108914,1019008917);
INSERT INTO Cita (FechaCita, Horacita, TipoCita, EstadoCita, IdUsuarioPaciente, IdUsuarioMedico) VALUES ('2022-06-28','11:30:40 ', 'Control','Cancelada ',1019008968, 1019008917);
INSERT INTO Cita (FechaCita, Horacita, TipoCita, EstadoCita, IdUsuarioPaciente, IdUsuarioMedico) VALUES ('2022-06-28','11:27:15', 'Ortodoncia Retiro Bracket ','Proceso',1019008969, 1019008917);
INSERT INTO Cita (FechaCita, Horacita, TipoCita, EstadoCita, IdUsuarioPaciente, IdUsuarioMedico) VALUES ('2022-06-28','15:25:17', 'Ortodoncia','Proceso',1019008936, 1019008917);
INSERT INTO Cita (FechaCita, Horacita, TipoCita, EstadoCita, IdUsuarioPaciente, IdUsuarioMedico) VALUES ('2022-06-28','08:25:10 ', 'Ortodoncia Retiro Bracket','Reagendada',1019008935,1019008917);
INSERT INTO Cita (FechaCita, Horacita, TipoCita, EstadoCita, IdUsuarioPaciente, IdUsuarioMedico) VALUES ('2022-06-28','09:30:40 ', 'control','Cancelada ',1019008934, 1019008917);
INSERT INTO Cita (FechaCita, Horacita, TipoCita, EstadoCita, IdUsuarioPaciente, IdUsuarioMedico) VALUES ('2022-06-28','10:27:15', 'Ortodoncia Retiro Bracket ','Proceso',1019008937, 1019008917);
INSERT INTO Cita (FechaCita, Horacita, TipoCita, EstadoCita, IdUsuarioPaciente, IdUsuarioMedico) VALUES ('2022-08-05','12:23:55 ', 'Ortodoncia','Registrada',1019008939, 1019008917);
INSERT INTO Cita (FechaCita, Horacita, TipoCita, EstadoCita, IdUsuarioPaciente, IdUsuarioMedico) VALUES ('2022-08-05','18:23:55 ', 'Control odontologico ','Registrada',1019008964,1019008917);
INSERT INTO Cita (FechaCita, Horacita, TipoCita, EstadoCita, IdUsuarioPaciente, IdUsuarioMedico) VALUES ('2022-08-05','13:23:55 ', 'Ortodoncia Retiro Bracket','Registrada',1019008968, 1019008917);
INSERT INTO Cita (FechaCita, Horacita, TipoCita, EstadoCita, IdUsuarioPaciente, IdUsuarioMedico) VALUES ('2022-06-22','13:02:14 ', 'Ortodoncia','Proceso',1019008938, 1019008917);

INSERT INTO Cita (FechaCita, Horacita, TipoCita, EstadoCita, IdUsuarioPaciente, IdUsuarioMedico) VALUES ('2022-07-05','10:23:55 ', 'Retiro de cordales Superiores ','Registrada',1019008937, 1019008918);
INSERT INTO Cita (FechaCita, Horacita, TipoCita, EstadoCita, IdUsuarioPaciente, IdUsuarioMedico) VALUES ('2022-09-04','09:30:55 ', 'Retiro de cordales Inferiores','Registrada',1019008938, 1019008918);
INSERT INTO Cita (FechaCita, Horacita, TipoCita, EstadoCita, IdUsuarioPaciente, IdUsuarioMedico) VALUES ('2022-07-05','08:23:55 ', 'Retiro de cordales Superiores ','Registrada',1019008939, 1019008918);
INSERT INTO Cita (FechaCita, Horacita, TipoCita, EstadoCita, IdUsuarioPaciente, IdUsuarioMedico) VALUES ('2022-09-04','12:30:55 ', 'Retiro de cordales Inferiores','Registrada',1019008928, 1019008918);
INSERT INTO Cita (FechaCita, Horacita, TipoCita, EstadoCita, IdUsuarioPaciente, IdUsuarioMedico) VALUES ('2022-07-05','13:23:55 ', 'Retiro de cordales Superiores ','Registrada',1019008929, 1019008918);
INSERT INTO Cita (FechaCita, Horacita, TipoCita, EstadoCita, IdUsuarioPaciente, IdUsuarioMedico) VALUES ('2022-09-04','15:30:55 ', 'Retiro de cordales Inferiores','Registrada',1019008924, 1019008918);


-- INSERCCIONES  PAGO------------------------------ELECTRONICO------------------------------------------------------
Select * from `consultoriomedico`.`comprobantepago`;
INSERT INTO `consultoriomedico`.`comprobantepago` (`Valor`, `FechaPago`, `HoraPago`, `FechaCita`,  `NumeroIdentificacion`, `IdCita`) VALUES ('15000', '2022-03-19', '13:25:12', '2022-06-22',  '1019008966', '1');
INSERT INTO `consultoriomedico`.`comprobantepago` (`Valor`, `FechaPago`, `HoraPago`, `FechaCita`,  `NumeroIdentificacion`, `IdCita`) VALUES ('7000', '2022-05-28', '07:08:55', '2022-05-28',  '1019008967',  '2');
INSERT INTO `consultoriomedico`.`comprobantepago` (`Valor`, `FechaPago`, `HoraPago`, `FechaCita`,  `NumeroIdentificacion`, `IdCita`) VALUES ('15000', '2021-12-30', '15:20:15', '2021-12-28',  '1019008926', '3');
INSERT INTO `consultoriomedico`.`comprobantepago` (`Valor`, `FechaPago`, `HoraPago`, `FechaCita`,  `NumeroIdentificacion`, `IdCita`) VALUES ('65000', '2022-05-27', '17:09:22', '2022-05-25', '1019008927', '4');
INSERT INTO `consultoriomedico`.`comprobantepago` (`Valor`, `FechaPago`, `HoraPago`, `FechaCita`,  `NumeroIdentificacion`, `IdCita`) VALUES ('105000', '2022-03-15', '09:36:12', '2022-03-10',  '1019008928', '5');
INSERT INTO `consultoriomedico`.`comprobantepago` (`Valor`, `FechaPago`, `HoraPago`, `FechaCita`,  `NumeroIdentificacion`, `IdCita`) VALUES ('7000', '2021-02-27', '07:50:22', '2021-02-27', '1019008930',  '6');
INSERT INTO `consultoriomedico`.`comprobantepago` (`Valor`, `FechaPago`, `HoraPago`, `FechaCita`,  `NumeroIdentificacion`, `IdCita`) VALUES ('12000', '2022-03-30', '15:22:45', '2022-03-30',  '1019008931', '7');
INSERT INTO `consultoriomedico`.`comprobantepago` (`Valor`, `FechaPago`, `HoraPago`, `FechaCita`,  `NumeroIdentificacion`, `IdCita`) VALUES ('10000', '2022-03-08', '2022-03-08', '13:26:50',  '1019008932',  '8');




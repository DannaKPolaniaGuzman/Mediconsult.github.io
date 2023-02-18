CREATE DATABASE ConsultorioMedico;
USE  ConsultorioMedico;

CREATE TABLE roles(
             idroles INT UNSIGNED PRIMARY KEY,
             RolUsuario VARCHAR (255) NOT NULL
             );

CREATE TABLE usuario (
             IdUsuario INT UNSIGNED PRIMARY KEY,
			 NombreUsuario VARCHAR(50) NOT NULL,
             ApellidoUsuario VARCHAR(50) NOT NULL,
             TipoDocumento VARCHAR(255) NOT NULL,
             EdadUsuario INT(2) NOT NULL,
			 CorreoUsuario VARCHAR (255) NOT NULL,
             PasswordUsuario VARCHAR (255) NOT NULL,
             DireccionUsuario VARCHAR (255) NOT NULL,
             IdRol INT UNSIGNED,
             foreign key (IdRol) REFERENCES roles(idroles)
             );

CREATE TABLE permiso(
			 idpermiso INT UNSIGNED  PRIMARY KEY,
             nombre VARCHAR(45),
             rolesId INT UNSIGNED  NOT NULL,
             foreign key (rolesId) REFERENCES roles(idroles)
             );
		
CREATE TABLE roleshaspermiso(
             idper INT UNSIGNED,
			 rolesid INT UNSIGNED,
			 foreign key (idper) REFERENCES permiso(idpermiso),
			 foreign key (rolesid) REFERENCES roles(idroles)
             );
		

CREATE TABLE Telefono(
             IdUsuario INTEGER UNSIGNED  NOT NULL,
             TelefonoUsuario BIGINT UNSIGNED   NULL,
			 FOREIGN KEY (IdUsuario) REFERENCES Usuario (IdUsuario)
);    

		   
CREATE TABLE Medico(
          UbicacionConsultorio VARCHAR(50) NOT NULL,
		  sueldo DOUBLE NOT NULL, 
          IdUsuarioMedico INTEGER UNSIGNED  NOT NULL, 
		  FOREIGN KEY (IdUsuarioMedico) REFERENCES Usuario(IdUsuario)
);


CREATE TABLE Medicamento(
             IdMedicamento INTEGER UNSIGNED  PRIMARY KEY,
             NombreMedicamento VARCHAR(255) NOT NULL,
             DescripcionMedicamento TEXT NOT NULL,
             FechaFabricacion DATE NOT NULL,
			 FechaVencimiento DATE NOT NULL,
			 Cantidad VARCHAR(20)NOT NULL,
			 Presentacion VARCHAR(100) NOT NULL
             );

CREATE TABLE HistoriaClinica(
             IdHistoria INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
             FechaCreacion DATE NOT NULL,
    		 GrupoSanguineo_RH VARCHAR (3),
             IdMedicamento INTEGER UNSIGNED  NOT NULL,
             IdUsuarioMedico INTEGER UNSIGNED NOT NULL,
			 IdUsuarioPaciente INTEGER UNSIGNED NOT NULL,
             FOREIGN KEY(IdMedicamento) REFERENCES Medicamento(IdMedicamento),
             FOREIGN KEY(IdUsuarioMedico) REFERENCES Usuario(IdUsuario),
             FOREIGN KEY(IdUsuarioPaciente) REFERENCES Usuario(IdUsuario)
             );
             
CREATE TABLE AlergiasHistoria(
             IdHistoria INTEGER UNSIGNED NOT NULL,
             Alergias VARCHAR (60) NOT NULL,
             FOREIGN KEY ( IdHistoria ) REFERENCES HistoriaClinica (IdHistoria)
             );      
             
CREATE TABLE MedicoHistoria(
		     IdUsuarioMedico INTEGER UNSIGNED NOT NULL,
             IdHistoria INTEGER UNSIGNED NOT NULL,
			 FOREIGN KEY(IdUsuarioMedico) REFERENCES Usuario(IdUsuario),
             FOREIGN KEY(IdHistoria) REFERENCES HistoriaClinica(IdHistoria)
             );       
             
CREATE TABLE OrdenesHistoria(
             IdHistoria INTEGER UNSIGNED NOT NULL,
             OrdenesExternas VARCHAR (60) NOT NULL,
             FOREIGN KEY (IdHistoria) REFERENCES HistoriaClinica (IdHistoria)
             );  
             
CREATE TABLE AntecedentesPaciente(
             IdAntecedente INTEGER UNSIGNED PRIMARY KEY,
             Enfermedades VARCHAR(45) NOT NULL,
             Observaciones VARCHAR(45),
             IdHistoria INTEGER UNSIGNED NOT NULL,
             FOREIGN KEY (IdHistoria) REFERENCES HistoriaClinica (IdHistoria)
             );
                         
CREATE TABLE CartaDental(
             IdCartaDental BIGINT UNSIGNED PRIMARY KEY,
             AnalisisPaciente VARCHAR(150) NOT NULL,
             Diagnostico VARCHAR(255) NOT NULL,
             IdHistoria INTEGER UNSIGNED NOT NULL,
             FOREIGN KEY (IdHistoria) REFERENCES HistoriaClinica (IdHistoria)
             );
             
CREATE TABLE Tratamiento(
             IdTratamiento INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
             DetalleTratamiento VARCHAR(255) NOT NULL,
             DuracionTratamiento VARCHAR(45) NOT NULL,
             FechaTratamiento DATE NOT NULL,
             IdHistoria INTEGER UNSIGNED NOT NULL,
             FOREIGN KEY (IdHistoria) REFERENCES HistoriaClinica (IdHistoria)
             );
             
CREATE TABLE EvolucionTratamiento(
             IdEvolucionTratamiento BIGINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
             FechaEvolucion DATE NOT NULL,
             HoraEvolucion TIME NOT NULL,
             Estado ENUM ('En proceso', 'Finalizada', 'Cancelada') NOT NULL,
             ProcedimientoRealizado VARCHAR (255) NOT NULL,
             IdTratamiento INTEGER UNSIGNED NOT NULL,
             FOREIGN KEY (IdTratamiento) REFERENCES Tratamiento (IdTratamiento)
             );


CREATE TABLE DientePaciente(
			 IdDiente BIGINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
             Odontograma VARCHAR(30) NOT NULL,
             IDEvolucionTratamiento BIGINT UNSIGNED NOT NULL,
             IDCartaDental BIGINT UNSIGNED NOT NULL,
             FOREIGN KEY (IDEvolucionTratamiento) REFERENCES EvolucionTratamiento (IdEvolucionTratamiento),
             FOREIGN KEY (IDCartaDental) REFERENCES CartaDental (IdCartaDental)
             );

CREATE TABLE Cita(
			 IdCita INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
             FechaCita DATE NOT NULL,
			 Horacita TIME NOT NULL,
             TipoCita VARCHAR(20) NOT NULL,
			 EstadoCita  VARCHAR(15) NOT NULL,
             IdUsuarioPaciente INTEGER UNSIGNED NOT NULL,
             IdUsuarioMedico INTEGER UNSIGNED NOT NULL,
             FOREIGN KEY(IdUsuarioMedico) REFERENCES Usuario(IdUsuario),
             FOREIGN KEY(IdUsuarioPaciente) REFERENCES Usuario(IdUsuario)
             );
		

CREATE TABLE ComprobantePago(
             IdPago INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
             Valor BIGINT UNSIGNED  NOT NULL,
             FechaPago DATE NOT NULL,
             HoraPago TIME NOT NULL,
             FechaCita DATE NOT NULL,
             NumeroIdentificacion INTEGER NULL,
             ComprobantePago VARCHAR(244) NULL,
             IdCita INTEGER UNSIGNED,
             FOREIGN KEY (IdCita) REFERENCES Cita (IdCita)
             );         

-- INDEX---
/* CREATE INDEX indexnombre ON Usuario (NombreUsuario);

CREATE UNIQUE INDEX indextelefono ON Telefono (TelefonoUsuario);

CREATE INDEX indexocupacion ON Ocupacion (NombreOcupacion);

CREATE INDEX indexMedicamento ON Medicamento (NombreMedicamento);
CREATE INDEX indexMediCantidad ON Medicamento (Cantidad);

CREATE INDEX indexHistoriaClinica ON HistoriaClinica (GrupoSanguineoRH);
CREATE  UNIQUE INDEX  indexhi ON HistoriaClinica (IdHistoria, IdUsuarioPaciente,IdUsuarioMedico );

CREATE UNIQUE INDEX indexOrdenesHistoria ON OrdenesHistoria (IdHistoria);
CREATE INDEX indexOrdenesEx ON OrdenesHistoria (OrdenesExternas);

CREATE UNIQUE INDEX indexAlergiasHistoria ON AlergiasHistoria (IdHistoria);
CREATE INDEX indexAlergias ON AlergiasHistoria (Alergias);

CREATE  INDEX  indexCita ON Cita (IdCita, IdUsuarioPaciente, TipoCita);

CREATE  INDEX  index_pago ON Pago (IdServicio, FechaPago, NumeroIdentificacion); */

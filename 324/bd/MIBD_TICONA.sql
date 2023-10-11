-- Crear la base de datos MIBD_TICONA
CREATE DATABASE MIBD_TICONA;

-- Usar la base de datos recién creada
USE MIBD_TICONA;

-- Crear la tabla "Departamento"
CREATE TABLE Departamento (
    IDDepartamento INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(255) NOT NULL
);

-- Crear la tabla "Estudiante"
CREATE TABLE Estudiante (
    IDEstudiante INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(255) NOT NULL,
    Apellido VARCHAR(255) NOT NULL,
    FechaNacimiento DATE,
    IDDepartamento INT,
    Genero VARCHAR(10) NOT NULL, -- "Hombre" o "Mujer"
    Username VARCHAR(50) NOT NULL,
    Password VARCHAR(50) NOT NULL,
    Rol VARCHAR(50)NOT NULL,
    FOREIGN KEY (IDDepartamento) REFERENCES Departamento(IDDepartamento)
);

-- Crear la tabla "Docente"
CREATE TABLE Docente (
    IDDocente INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(255) NOT NULL,
    Apellido VARCHAR(255) NOT NULL,
    Genero VARCHAR(10) NOT NULL, -- "Hombre" o "Mujer"
    Usuario VARCHAR(50) NOT NULL,
    Contraseña VARCHAR(50) NOT NULL
);

-- Crear la tabla "Semestre"
CREATE TABLE Semestre (
    IDSemestre INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(255) NOT NULL
);

-- Crear la tabla "Materia"
CREATE TABLE Materia (
    IDMateria INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(255) NOT NULL,
    Sigla VARCHAR(10),
    IDSemestre INT,
    IDDocente INT,
    FOREIGN KEY (IDDocente) REFERENCES Docente(IDDocente),
    FOREIGN KEY (IDSemestre) REFERENCES Semestre(IDSemestre)
);

-- Crear la tabla "Inscripcion"
CREATE TABLE Inscripcion (
    IDInscripcion INT AUTO_INCREMENT PRIMARY KEY,
    IDEstudiante INT,
    IDMateria INT,
    FOREIGN KEY (IDEstudiante) REFERENCES Estudiante(IDEstudiante),
    FOREIGN KEY (IDMateria) REFERENCES Materia(IDMateria)
);

-- Crear la tabla "Notas"
CREATE TABLE Notas (
    IDNotas INT AUTO_INCREMENT PRIMARY KEY,
    IDEstudiante INT,
    IDMateria INT,
    Calificacion INT,
    FOREIGN KEY (IDEstudiante) REFERENCES Estudiante(IDEstudiante),
    FOREIGN KEY (IDMateria) REFERENCES Materia(IDMateria)
);
--Insertar datos ficticios en la tabla "Departamento"
INSERT INTO Departamento (Nombre) VALUES
    ('la Paz'),
    ('Pando'),
    ('Beni'),
    ('Oruro'),
    ('Potosi'),
    ('Chuquisaca'),
    ('Tarija'),
    ('Cochabamba'),
    ('Santa Cruz');
-- Insertar estudiantes ficticios en la tabla "Estudiante"
-- Insertar 50 estudiantes ficticios en la tabla "Estudiante" con IDDepartamento del 1 al 9
INSERT INTO Estudiante (Nombre, Apellido, FechaNacimiento, IDDepartamento, Genero, Usuario, Contraseña) VALUES
    ('Juan', 'Perez', '1995-03-15', 1, 'Hombre', 'juanperez', 'contraseña123'),
    ('Maria', 'Gomez', '1997-08-21', 2, 'Mujer', 'mariagomez', 'clave456'),
    ('Carlos', 'Lopez', '1996-05-12', 3, 'Hombre', 'carloslopez', 'pwd789'),
    ('Laura', 'Martinez', '1998-02-10', 4, 'Mujer', 'lauramartinez', 'pass123'),
    ('Pedro', 'Rodriguez', '1994-11-25', 5, 'Hombre', 'pedrorodriguez', '456abc'),
    ('Ana', 'Garcia', '1997-07-08', 6, 'Mujer', 'anagarcia', 'mysecret'),
    ('Luis', 'Gonzalez', '1999-09-17', 7, 'Hombre', 'luisgonzalez', 'abcdef'),
    ('Sofia', 'Lopez', '1998-04-12', 8, 'Mujer', 'sofialopez', 's3cr3t'),
    ('David', 'Torres', '1996-06-28', 9, 'Hombre', 'davidtorres', 'david123'),
    ('Elena', 'Sanchez', '1997-03-05', 1, 'Mujer', 'elenasanchez', 'elesan456'),
    ('Juan', 'Garcia', '1998-10-15', 2, 'Hombre', 'juangarcia', 'jg789'),
    ('Maria', 'Lopez', '1995-12-19', 3, 'Mujer', 'marialopez', 'maria123'),
    ('Pedro', 'Perez', '1994-08-02', 4, 'Hombre', 'pedroperez', 'perez456'),
    ('Laura', 'Gomez', '1996-01-30', 5, 'Mujer', 'lauragomez', 'lgomez789'),
    ('Carolina', 'Rodriguez', '1999-07-22', 6, 'Mujer', 'carolinarodriguez', 'carolina123'),
    ('Fernando', 'Martinez', '1997-04-14', 7, 'Hombre', 'fernandomartinez', 'fernando456'),
    ('Ana', 'Torres', '1998-11-09', 8, 'Mujer', 'anatorres', 'atorres789'),
    ('Diego', 'Gonzalez', '1995-09-27', 9, 'Hombre', 'diegogonzalez', 'diego123'),
    ('Gabriela', 'Sanchez', '1996-12-03', 1, 'Mujer', 'gabrielasanchez', 'gs123'),
    ('Javier', 'Lopez', '1999-02-18', 2, 'Hombre', 'javierlopez', 'jlopez456'),
    ('Andrea', 'Rodriguez', '1994-07-21', 3, 'Mujer', 'andrearodriguez', 'arodriguez123'),
    ('Raul', 'Gutierrez', '1997-11-10', 4, 'Hombre', 'raulgutierrez', 'rgutierrez456'),
    ('Natalia', 'Fernandez', '1998-08-28', 5, 'Mujer', 'nataliafernandez', 'nfernandez789'),
    ('Hector', 'Ramirez', '1996-06-15', 6, 'Hombre', 'hectorramirez', 'hramirez123'),
    ('Valeria', 'Gonzalez', '1995-03-09', 7, 'Mujer', 'valeriagonzalez', 'vgonzalez456'),
    ('Oscar', 'Hernandez', '1999-04-05', 8, 'Hombre', 'oscarhernandez', 'ohernandez123'),
    ('Martha', 'Martinez', '1997-09-12', 9, 'Mujer', 'marthamartinez', 'mmartinez456'),
    ('Ricardo', 'Torres', '1998-10-27', 1, 'Hombre', 'ricardotorres', 'rtorres123'),
    ('Sara', 'Sanchez', '1995-07-14', 2, 'Mujer', 'sarasanchez', 'ssanchez456'),
    ('Fernando', 'Gomez', '1996-12-30', 3, 'Hombre', 'fernandogomez', 'fgomez123'),
    ('Luisa', 'Lopez', '1994-04-19', 4, 'Mujer', 'luisalopez', 'llopez456'),
    ('Victor', 'Rodriguez', '1997-05-02', 5, 'Hombre', 'victorrodriguez', 'victor123'),
    ('Carla', 'Gonzalez', '1999-08-07', 6, 'Mujer', 'carlagonzalez', 'cgonzalez456'),
    ('Martin', 'Perez', '1998-02-25', 7, 'Hombre', 'martinperez', 'mperez123'),
    ('Monica', 'Hernandez', '1995-01-08', 8, 'Mujer', 'monicahernandez', 'mhernandez456'),
    ('Andres', 'Fernandez', '1996-09-24', 9, 'Hombre', 'andresfernandez', 'afernandez123'),
    ('Camila', 'Gutierrez', '1997-11-19', 1, 'Mujer', 'camilagutierrez', 'cgutierrez456'),
    ('Roberto', 'Martinez', '1994-05-13', 2, 'Hombre', 'robertomartinez', 'rmartinez123'),
    ('Mariana', 'Gomez', '1999-03-01', 3, 'Mujer', 'marianagomez', 'mgomez456'),
    ('Eduardo', 'Sanchez', '1996-08-27', 4, 'Hombre', 'eduardosanchez', 'esanchez123'),
    ('Isabel', 'Lopez', '1995-12-03', 5, 'Mujer', 'isabellopez', 'ilopez456'),
    ('Felipe', 'Torres', '1998-01-28', 6, 'Hombre', 'felipetorres', 'ftorres123'),
    ('Sandra', 'Ramirez', '1997-10-05', 7, 'Mujer', 'sandramirez', 'sramirez456'),
    ('Adrian', 'Hernandez', '1994-04-16', 8, 'Hombre', 'adrianhernandez', 'ahernandez123'),
    ('Natalia', 'Gonzalez', '1999-09-22', 9, 'Mujer', 'nataliagonzalez', 'ngonzalez456');


-- Insertar 30 docentes ficticios en la tabla "Docente"
INSERT INTO Docente (Nombre, Apellido, Genero, Usuario, Contraseña) VALUES
    ('Laura', 'Martinez', 'Mujer', 'lauramartinez', 'docente123'),
    ('Pedro', 'Rodriguez', 'Hombre', 'pedrorodriguez', 'prof456'),
    ('Ana', 'Garcia', 'Mujer', 'anagarcia', 'teacher789'),
    ('Luis', 'Gonzalez', 'Hombre', 'luisgonzalez', 'lgonzalez123'),
    ('Sofia', 'Lopez', 'Mujer', 'sofialopez', 'slo123'),
    ('David', 'Torres', 'Hombre', 'davidtorres', 'dtorres456'),
    ('Elena', 'Sanchez', 'Mujer', 'elenasanchez', 'esanchez789'),
    ('Juan', 'Garcia', 'Hombre', 'juangarcia', 'jgarcia123'),
    ('Maria', 'Lopez', 'Mujer', 'marialopez', 'mlopez456'),
    ('Pedro', 'Perez', 'Hombre', 'pedroperez', 'pperez123'),
    ('Laura', 'Gomez', 'Mujer', 'lauragomez', 'lgomez456'),
    ('Carolina', 'Rodriguez', 'Mujer', 'carolinarodriguez', 'crodriguez123'),
    ('Fernando', 'Martinez', 'Hombre', 'fernandomartinez', 'fmartinez456'),
    ('Ana', 'Torres', 'Mujer', 'anatorres', 'atorres123'),
    ('Diego', 'Gonzalez', 'Hombre', 'diegogonzalez', 'dgonzalez456'),
    ('Gabriela', 'Sanchez', 'Mujer', 'gabrielasanchez', 'gsanchez123'),
    ('Javier', 'Lopez', 'Hombre', 'javierlopez', 'jlopez456'),
    ('Andrea', 'Rodriguez', 'Mujer', 'andrearodriguez', 'arodriguez123'),
    ('Raul', 'Gutierrez', 'Hombre', 'raulgutierrez', 'rgutierrez456'),
    ('Natalia', 'Fernandez', 'Mujer', 'nataliafernandez', 'nfernandez123'),
    ('Hector', 'Ramirez', 'Hombre', 'hectorramirez', 'hramirez456'),
    ('Valeria', 'Gonzalez', 'Mujer', 'valeriagonzalez', 'vgonzalez123'),
    ('Oscar', 'Hernandez', 'Hombre', 'oscarhernandez', 'ohernandez456'),
    ('Martha', 'Martinez', 'Mujer', 'marthamartinez', 'mmartinez123'),
    ('Ricardo', 'Torres', 'Hombre', 'ricardotorres', 'rtorres456'),
    ('Sara', 'Sanchez', 'Mujer', 'sarasanchez', 'ssanchez123'),
    ('Fernando', 'Gomez', 'Hombre', 'fernandogomez', 'fgomez456'),
    ('Luisa', 'Lopez', 'Mujer', 'luisalopez', 'llopez123'),
    ('Victor', 'Rodriguez', 'Hombre', 'victorrodriguez', 'vrodriguez456');

-- Insertar 10 semestres en la tabla "Semestre"
INSERT INTO Semestre (Nombre) VALUES
    ('Semestre 1'),
    ('Semestre 2'),
    ('Semestre 3'),
    ('Semestre 4'),
    ('Semestre 5'),
    ('Semestre 6'),
    ('Semestre 7'),
    ('Semestre 8'),
    ('Semestre 9'),
    ('Semestre 10');
--llenado de materias
INSERT INTO Materia (Nombre, Sigla, IDSemestre, IDDocente) VALUES
    ('Introducción a la Informática', 'INF-111', 1, 1),
    ('CALCULO I', 'MAT-115', 1, 2),
    ('FISICA I', 'FIS-122', 1, 3);

-- Semestre 2
INSERT INTO Materia (Nombre, Sigla, IDSemestre, IDDocente) VALUES
    ('Algoritmos y Programación', 'INF-121', 2, 4),
    ('CALCULO II', 'MAT-125', 2, 5),
    ('ESTADISTICA I', 'EST-133', 2, 6);

-- Semestre 3
INSERT INTO Materia (Nombre, Sigla, IDSemestre, IDDocente) VALUES
    ('Estructura de Datos y Algoritmos', 'INF-131', 3, 7),
    ('IDIOMAS I', 'LIN-135', 3, 8),
    ('Laboratorio de INF-131', 'LAB-131', 3, 9);

-- Semestre 4
INSERT INTO Materia (Nombre, Sigla, IDSemestre, IDDocente) VALUES
    ('Sistemas de Gestion', 'INF-141', 4, 10),
    ('Taller de Programacion', 'INF-143', 4, 11),
    ('Logica para la Ciencia de la Computacion', 'INF-144', 4, 12);

-- Semestre 5
INSERT INTO Materia (Nombre, Sigla, IDSemestre, IDDocente) VALUES
    ('Sistemas Operativos', 'INF-151', 5, 13),
    ('ASSEMBLER', 'INF-153', 5, 14),
    ('Investigacion de Operaciones I', 'EST-155', 5, 15);

-- Semestre 6
INSERT INTO Materia (Nombre, Sigla, IDSemestre, IDDocente) VALUES
    ('Administración de Base de Datos', 'INF-161', 6, 16),
    ('Ingenieria de Software', 'INF-163', 6, 17),
    ('Informatica y Sociedad', 'INF-166', 6, 18);

-- Semestre 7
INSERT INTO Materia (Nombre, Sigla, IDSemestre, IDDocente) VALUES
    ('Taller de Base de Datos', 'INF-272', 7, 19),
    ('Telematica', 'INF-273', 7, 20),
    ('Teoria de Sistemas y Modelos', 'INF-271', 7, 21);

-- Semestre 8
INSERT INTO Materia (Nombre, Sigla, IDSemestre, IDDocente) VALUES
    ('Taller de Sistemas de Informacion', 'INF-281', 8, 22),
    ('Especificaciones formales y verificacion', 'INF-282', 8, 23),
    ('Sistemas en tiempo Real y Distribuidos', 'INF-317', 8, 24);

-- Semestre 9
INSERT INTO Materia (Nombre, Sigla, IDSemestre, IDDocente) VALUES
    ('Taller de Licenciatura I', 'INF-398', 9, 25),
    ('Simulacion de Sistemas', 'INF-391', 9, 26),
    ('Programacion Multimedial', 'INF-324', 9, 27);

-- Semestre 10
INSERT INTO Materia (Nombre, Sigla, IDSemestre, IDDocente) VALUES
    ('Taller de Licenciatura II', 'INF-399', 10, 28);

--LLenar inscripccion 
-- Insertar registros de inscripción para los estudiantes en todas las materias de su semestre
-- Semestre 1
INSERT INTO Inscripcion (IDEstudiante, IDMateria) VALUES
    (1, 1), (1, 2), (1, 3),
    (2, 4), (2, 5), (2, 6),
    (3, 7), (3, 8), (3, 9),
    -- Continúa para los demás estudiantes y semestres.
-- Continuar la secuencia de inscripción hasta IDMateria 24
INSERT INTO Inscripcion (IDEstudiante, IDMateria) VALUES
    (4, 10), (4, 11), (4, 12),
    (5, 13), (5, 14), (5, 15),
    (6, 16), (6, 17), (6, 18),
    (7, 19), (7, 20), (7, 21),
    (8, 22), (8, 23), (8, 24),
    (9, 1), (9, 2), (9, 3),
    (10, 4), (10, 5), (10, 6),
    (11, 7), (11, 8), (11, 9),
    (12, 10), (12, 11), (12, 12),
    (13, 13), (13, 14), (13, 15),
    (14, 16), (14, 17), (14, 18),
    (15, 19), (15, 20), (15, 21),
    (16, 22), (16, 23), (16, 24);
-- Continuar la secuencia de inscripción hasta el estudiante 40
INSERT INTO Inscripcion (IDEstudiante, IDMateria) VALUES
    (17, 1), (17, 2), (17, 3),
    (18, 4), (18, 5), (18, 6),
    (19, 7), (19, 8), (19, 9),
    (20, 10), (20, 11), (20, 12),
    (21, 13), (21, 14), (21, 15),
    (22, 16), (22, 17), (22, 18),
    (23, 19), (23, 20), (23, 21),
    (24, 22), (24, 23), (24, 24),
    (25, 1), (25, 2), (25, 3),
    (26, 4), (26, 5), (26, 6),
    (27, 7), (27, 8), (27, 9),
    (28, 10), (28, 11), (28, 12),
    (29, 13), (29, 14), (29, 15),
    (30, 16), (30, 17), (30, 18),
    (31, 19), (31, 20), (31, 21),
    (32, 22), (32, 23), (32, 24),
    (33, 1), (33, 2), (33, 3),
    (34, 4), (34, 5), (34, 6),
    (35, 7), (35, 8), (35, 9),
    (36, 10), (36, 11), (36, 12),
    (37, 13), (37, 14), (37, 15),
    (38, 16), (38, 17), (38, 18),
    (39, 19), (39, 20), (39, 21),
    (40, 22), (40, 23), (40, 24);
    --llenando estudiantes para taller 2
INSERT INTO Inscripcion (IDEstudiante, IDMateria) VALUES
    (40, 25), (41, 25), (42, 25), (43, 25), (44, 25)(45, 25)

--llenando notas
-- Insert random Calificaciones between 51 and 100 into the Notas table

INSERT INTO Notas (IDEstudiante, IDMateria, Calificacion)
VALUES
    -- Estudiante 1
    (1, 1, ROUND(RAND() * 49 + 51)), 
    (1, 2, ROUND(RAND() * 49 + 51)), 
    (1, 3, ROUND(RAND() * 49 + 51)),
    -- Estudiante 2
    (2, 4, ROUND(RAND() * 49 + 51)), 
    (2, 5, ROUND(RAND() * 49 + 51)), 
    (2, 6, ROUND(RAND() * 49 + 51)),
    -- Estudiante 3
    (3, 7, ROUND(RAND() * 49 + 51)), 
    (3, 8, ROUND(RAND() * 49 + 51)), 
    (3, 9, ROUND(RAND() * 49 + 51)),
    -- Estudiante 4
    (4, 10, ROUND(RAND() * 49 + 51)),
    (4, 11, ROUND(RAND() * 49 + 51)),
    (4, 12, ROUND(RAND() * 49 + 51)),
-- Estudiante 5
    (5, 13, ROUND(RAND() * 49 + 51)),
    (5, 14, ROUND(RAND() * 49 + 51)),
    (5, 15, ROUND(RAND() * 49 + 51)),
-- Estudiante 6
    (6, 16, ROUND(RAND() * 49 + 51)),
    (6, 17, ROUND(RAND() * 49 + 51)),
    (6, 18, ROUND(RAND() * 49 + 51)),
-- Estudiante 7
    (7, 19, ROUND(RAND() * 49 + 51)),
    (7, 20, ROUND(RAND() * 49 + 51)),
    (7, 21, ROUND(RAND() * 49 + 51)),
-- Estudiante 8
    (8, 22, ROUND(RAND() * 49 + 51)),
    (8, 23, ROUND(RAND() * 49 + 51)),
    (8, 24, ROUND(RAND() * 49 + 51)),
-- Estudiante 9
    (9, 1, ROUND(RAND() * 49 + 51)),
    (9, 2, ROUND(RAND() * 49 + 51)),
    (9, 3, ROUND(RAND() * 49 + 51)),
-- Estudiante 10
    (10, 4, ROUND(RAND() * 49 + 51)),
    (10, 5, ROUND(RAND() * 49 + 51)),
    (10, 6, ROUND(RAND() * 49 + 51)),
-- Estudiante 11
    (11, 7, ROUND(RAND() * 49 + 51)),
    (11, 8, ROUND(RAND() * 49 + 51)),
    (11, 9, ROUND(RAND() * 49 + 51)),
-- Estudiante 12
    (12, 10, ROUND(RAND() * 49 + 51)),
    (12, 11, ROUND(RAND() * 49 + 51)),
    (12, 12, ROUND(RAND() * 49 + 51)),
-- Estudiante 13
    (13, 13, ROUND(RAND() * 49 + 51)),
    (13, 14, ROUND(RAND() * 49 + 51)),
    (13, 15, ROUND(RAND() * 49 + 51)),
-- Estudiante 14
    (14, 16, ROUND(RAND() * 49 + 51)),
    (14, 17, ROUND(RAND() * 49 + 51)),
    (14, 18, ROUND(RAND() * 49 + 51)),
-- Estudiante 15
    (15, 19, ROUND(RAND() * 49 + 51)),
    (15, 20, ROUND(RAND() * 49 + 51)),
    (15, 21, ROUND(RAND() * 49 + 51)),
-- Estudiante 16
    (16, 22, ROUND(RAND() * 49 + 51)),
    (16, 23, ROUND(RAND() * 49 + 51)),
    (16, 24, ROUND(RAND() * 49 + 51)),
-- Estudiante 17
    (17, 1, ROUND(RAND() * 49 + 51)),
    (17, 2, ROUND(RAND() * 49 + 51)),
    (17, 3, ROUND(RAND() * 49 + 51)),
-- Estudiante 18
    (18, 4, ROUND(RAND() * 49 + 51)),
    (18, 5, ROUND(RAND() * 49 + 51)),
    (18, 6, ROUND(RAND() * 49 + 51)),
-- Estudiante 19
    (19, 7, ROUND(RAND() * 49 + 51)),
    (19, 8, ROUND(RAND() * 49 + 51)),
    (19, 9, ROUND(RAND() * 49 + 51)),
-- Estudiante 20
    (20, 10, ROUND(RAND() * 49 + 51)),
    (20, 11, ROUND(RAND() * 49 + 51)),
    (20, 12, ROUND(RAND() * 49 + 51)),
-- Estudiante 21
    (21, 13, ROUND(RAND() * 49 + 51)),
    (21, 14, ROUND(RAND() * 49 + 51)),
    (21, 15, ROUND(RAND() * 49 + 51)),
-- Estudiante 22
    (22, 16, ROUND(RAND() * 49 + 51)),
    (22, 17, ROUND(RAND() * 49 + 51)),
    (22, 18, ROUND(RAND() * 49 + 51)),
-- Estudiante 23
    (23, 19, ROUND(RAND() * 49 + 51)),
    (23, 20, ROUND(RAND() * 49 + 51)),
    (23, 21, ROUND(RAND() * 49 + 51)),
-- Estudiante 24
    (24, 22, ROUND(RAND() * 49 + 51)),
    (24, 23, ROUND(RAND() * 49 + 51)),
    (24, 24, ROUND(RAND() * 49 + 51)),
-- Estudiante 25
    (25, 1, ROUND(RAND() * 49 + 51)),
    (25, 2, ROUND(RAND() * 49 + 51)),
    (25, 3, ROUND(RAND() * 49 + 51)),
-- Estudiante 26
    (26, 4, ROUND(RAND() * 49 + 51)),
    (26, 5, ROUND(RAND() * 49 + 51)),
    (26, 6, ROUND(RAND() * 49 + 51)),
-- Estudiante 27
    (27, 7, ROUND(RAND() * 49 + 51)),
    (27, 8, ROUND(RAND() * 49 + 51)),
    (27, 9, ROUND(RAND() * 49 + 51)),
-- Estudiante 28
    (28, 10, ROUND(RAND() * 49 + 51)),
    (28, 11, ROUND(RAND() * 49 + 51)),
    (28, 12, ROUND(RAND() * 49 + 51)),
-- Estudiante 29
    (29, 13, ROUND(RAND() * 49 + 51)),
    (29, 14, ROUND(RAND() * 49 + 51)),
    (29, 15, ROUND(RAND() * 49 + 51)),
-- Estudiante 30
    (30, 16, ROUND(RAND() * 49 + 51)),
    (30, 17, ROUND(RAND() * 49 + 51)),
    (30, 18, ROUND(RAND() * 49 + 51)),
-- Estudiante 31
    (31, 19, ROUND(RAND() * 49 + 51)),
    (31, 20, ROUND(RAND() * 49 + 51)),
    (31, 21, ROUND(RAND() * 49 + 51)),
-- Estudiante 32
    (32, 22, ROUND(RAND() * 49 + 51)),
    (32, 23, ROUND(RAND() * 49 + 51)),
    (32, 24, ROUND(RAND() * 49 + 51)),
-- Estudiante 33
    (33, 1, ROUND(RAND() * 49 + 51)),
    (33, 2, ROUND(RAND() * 49 + 51)),
    (33, 3, ROUND(RAND() * 49 + 51)),
-- Estudiante 34
    (34, 4, ROUND(RAND() * 49 + 51)),
    (34, 5, ROUND(RAND() * 49 + 51)),
    (34, 6, ROUND(RAND() * 49 + 51)),
-- Estudiante 35
    (35, 7, ROUND(RAND() * 49 + 51)),
    (35, 8, ROUND(RAND() * 49 + 51)),
    (35, 9, ROUND(RAND() * 49 + 51)),
-- Estudiante 36
    (36, 10, ROUND(RAND() * 49 + 51)),
    (36, 11, ROUND(RAND() * 49 + 51)),
    (36, 12, ROUND(RAND() * 49 + 51)),
-- Estudiante 37
    (37, 13, ROUND(RAND() * 49 + 51)),
    (37, 14, ROUND(RAND() * 49 + 51)),
    (37, 15, ROUND(RAND() * 49 + 51)),
-- Estudiante 38
    (38, 16, ROUND(RAND() * 49 + 51)),
    (38, 17, ROUND(RAND() * 49 + 51)),
    (38, 18, ROUND(RAND() * 49 + 51)),
-- Estudiante 39
    (39, 19, ROUND(RAND() * 49 + 51)),
    (39, 20, ROUND(RAND() * 49 + 51)),
    (39, 21, ROUND(RAND() * 49 + 51)),

    -- Estudiante 40
    (40, 22, ROUND(RAND() * 49 + 51)), 
    (40, 23, ROUND(RAND() * 49 + 51)), 
    (40, 24, ROUND(RAND() * 49 + 51));
--llenando notas de taller 2
-- Insertar calificaciones para las tres materias de los estudiantes del 1 al 40
INSERT INTO Notas (IDEstudiante, IDMateria, Calificacion)
VALUES
    -- Estudiantes del 1 al 40 para las tres materias
    (41, 28, 90), (42, 28, 85), (43, 28, 88),
    (44, 28, 78), (45, 28, 92)
    agregue ALTER TABLE Docente
ADD Rol VARCHAR(20) NOT NULL DEFAULT 'docente';
ALTER TABLE estudiante
ADD Rol VARCHAR(20) NOT NULL DEFAULT 'docente';
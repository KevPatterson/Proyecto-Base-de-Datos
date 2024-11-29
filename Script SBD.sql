-- Script Equipo#4
-- Crear tabla Cliente
CREATE TABLE Cliente (
    id_cliente INT PRIMARY KEY,
    nombre VARCHAR(100),
    direccion VARCHAR(200),
    telefono VARCHAR(20),
    email VARCHAR(100)
);

-- Insertar datos en la tabla Cliente
INSERT INTO Cliente (id_cliente, nombre, direccion, telefono, email) VALUES
(1, 'Constructora ABC', 'Calle 123, Ciudad ABC', '555-1234', 'info@constructoraabc.com'),
(2, 'Construcciones XYZ', 'Avenida Principal, Ciudad XYZ', '555-5678', 'contacto@construccionesxyz.com');
-- ... (más de 20 tuplas)

-- Crear tabla Proyecto
CREATE TABLE Proyecto (
    id_proyecto INT PRIMARY KEY,
    nombre VARCHAR(100),
    direccion VARCHAR(200),
    fecha_inicio DATE,
    fecha_fin DATE,
    id_cliente INT,
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente)
);

-- Insertar datos en la tabla Proyecto
INSERT INTO Proyecto (id_proyecto, nombre, direccion, fecha_inicio, fecha_fin, id_cliente) VALUES
(1, 'Edificio Residencial A', 'Calle 456, Ciudad ABC', '2021-01-15', '2022-06-30', 1),
(2, 'Centro Comercial B', 'Avenida Central, Ciudad XYZ', '2021-03-20', '2023-01-10', 2);
-- ... (más de 20 tuplas)

-- Crear tabla Empleado
CREATE TABLE Empleado (
    id_empleado INT PRIMARY KEY,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    cargo VARCHAR(50),
    salario DECIMAL(10,2)
);

-- Insertar datos en la tabla Empleado
INSERT INTO Empleado (id_empleado, nombre, apellido, cargo, salario) VALUES
(1, 'Juan', 'Perez', 'Arquitecto', 50000.00),
(2, 'Maria', 'Gomez', 'Ingeniero Civil', 60000.00);
-- ... (más de 20 tuplas)

-- Crear tabla Servicio
CREATE TABLE Servicio (
    id_servicio INT PRIMARY KEY,
    nombre VARCHAR(100),
    descripcion TEXT,
    costo DECIMAL(10,2)
);

-- Insertar datos en la tabla Servicio
INSERT INTO Servicio (id_servicio, nombre, descripcion, costo) VALUES
(1, 'Diseño Arquitectónico', 'Servicio de diseño arquitectónico para proyectos residenciales y comerciales.', 10000.00),
(2, 'Construcción de Estructuras', 'Servicio de construcción de estructuras para edificaciones.', 50000.00);
-- ... (más de 20 tuplas)

-- Crear tabla AsignacionProyecto
CREATE TABLE AsignacionProyecto (
    id_asignacion INT PRIMARY KEY,
    id_proyecto INT,
    id_empleado INT,
    id_servicio INT,
    horas_trabajo INT,
    FOREIGN KEY (id_proyecto) REFERENCES Proyecto(id_proyecto),
    FOREIGN KEY (id_empleado) REFERENCES Empleado(id_empleado),
    FOREIGN KEY (id_servicio) REFERENCES Servicio(id_servicio)
);

-- Insertar datos en la tabla AsignacionProyecto
INSERT INTO AsignacionProyecto (id_asignacion, id_proyecto, id_empleado, id_servicio, horas_trabajo) VALUES
(1, 1, 1, 1, 200),
(2, 1, 2, 2, 500);
-- ... (más de 20 tuplas)

    --Nuevas tuplas de la tabla Cliente
INSERT INTO Cliente (id_cliente, nombre, direccion, telefono, email) VALUES	(3, 'Constructora DEF', 'Calle 789, Ciudad DEF', '555-9012', 'info@constructoradef.com');
INSERT INTO Cliente (id_cliente, nombre, direccion, telefono, email) VALUES	(4, 'Edificaciones GHI', 'Avenida Secundaria, Ciudad GHI', '555-3456', 'contacto@edificacionesGHI.com');
INSERT INTO Cliente (id_cliente, nombre, direccion, telefono, email) VALUES	(5, 'Compañía JKL', 'Calle 321, Ciudad JKL', '555-7890', 'info@companiajkl.com');
INSERT INTO Cliente (id_cliente, nombre, direccion, telefono, email) VALUES	(6, 'Grupo MNO', 'Avenida Principal, Ciudad MNO', '555-2345', 'contacto@grupomno.com');
INSERT INTO Cliente (id_cliente, nombre, direccion, telefono, email) VALUES	(7, 'Desarrollos PQR', 'Calle 654, Ciudad PQR', '555-6789', 'info@desarrollospqr.com');
INSERT INTO Cliente (id_cliente, nombre, direccion, telefono, email) VALUES	(8, 'Constructora STU', 'Avenida Central, Ciudad STU', '555-0123', 'contacto@constructorastu.com');
INSERT INTO Cliente (id_cliente, nombre, direccion, telefono, email) VALUES	(9, 'Inmobiliaria VWX', 'Calle 987, Ciudad VWX', '555-4567', 'info@inmobiliariaVWX.com');
INSERT INTO Cliente (id_cliente, nombre, direccion, telefono, email) VALUES	(10, 'Edificios YZA', 'Avenida Secundaria, Ciudad YZA', '555-8901', 'contacto@edificiosyza.com');
INSERT INTO Cliente (id_cliente, nombre, direccion, telefono, email) VALUES	(11, 'Grupo BCD', 'Calle 456, Ciudad BCD', '555-2345', 'info@grupobcd.com');
INSERT INTO Cliente (id_cliente, nombre, direccion, telefono, email) VALUES	(12, 'Desarrollos EFG', 'Avenida Principal, Ciudad EFG', '555-6789', 'contacto@desarrollosefg.com');
INSERT INTO Cliente (id_cliente, nombre, direccion, telefono, email) VALUES	(13, 'Constructora HIJ', 'Calle 789, Ciudad HIJ', '555-0123', 'info@constructorahij.com');
INSERT INTO Cliente (id_cliente, nombre, direccion, telefono, email) VALUES	(14, 'Inmobiliaria KLM', 'Avenida Central, Ciudad KLM', '555-4567', 'contacto@inmobiliariaklm.com');
INSERT INTO Cliente (id_cliente, nombre, direccion, telefono, email) VALUES	(15, 'Edificios NOP', 'Calle 321, Ciudad NOP', '555-8901', 'info@edificiosNOP.com');
INSERT INTO Cliente (id_cliente, nombre, direccion, telefono, email) VALUES	(16, 'Grupo QRS', 'Avenida Secundaria, Ciudad QRS', '555-2345', 'contacto@grupoqrs.com');
INSERT INTO Cliente (id_cliente, nombre, direccion, telefono, email) VALUES	(17, 'Desarrollos TUV', 'Calle 654, Ciudad TUV', '555-6789', 'info@desarrollostUV.com');
INSERT INTO Cliente (id_cliente, nombre, direccion, telefono, email) VALUES	(18, 'Constructora WXY', 'Avenida Principal, Ciudad WXY', '555-0123', 'contacto@constructoraxWY.com');
INSERT INTO Cliente (id_cliente, nombre, direccion, telefono, email) VALUES	(19, 'Inmobiliaria ZAB', 'Calle 987, Ciudad ZAB', '555-4567', 'info@inmobiliariaZAB.com');
INSERT INTO Cliente (id_cliente, nombre, direccion, telefono, email) VALUES	(20, 'Edificios CDE', 'Avenida Central, Ciudad CDE', '555-8901', 'contacto@edificiosCDE.com');
INSERT INTO Cliente (id_cliente, nombre, direccion, telefono, email) VALUES	(21, 'Grupo FGH', 'Calle 456, Ciudad FGH', '555-2345', 'info@grupofgh.com');
INSERT INTO Cliente (id_cliente, nombre, direccion, telefono, email) VALUES	(22, 'Desarrollos IJK', 'Avenida Secundaria, Ciudad IJK', '555-6789', 'contacto@desarrollosijk.com');
	
	--Nuevas tuplas de la tabla Proyecto
INSERT INTO Proyecto (id_proyecto, nombre, direccion, fecha_inicio, fecha_fin, id_cliente) VALUES	(3, 'Centro de Convenciones C', 'Calle 789, Ciudad DEF', '2022-02-01', '2023-05-15', 3);
INSERT INTO Proyecto (id_proyecto, nombre, direccion, fecha_inicio, fecha_fin, id_cliente) VALUES	(4, 'Edificio Residencial D', 'Avenida Secundaria, Ciudad GHI', '2021-09-30', '2023-03-31', 4);
INSERT INTO Proyecto (id_proyecto, nombre, direccion, fecha_inicio, fecha_fin, id_cliente) VALUES	(5, 'Complejo Comercial E', 'Calle 321, Ciudad JKL', '2022-04-20', '2023-11-01', 5);
INSERT INTO Proyecto (id_proyecto, nombre, direccion, fecha_inicio, fecha_fin, id_cliente) VALUES	(6, 'Desarrollo Mixto F', 'Avenida Principal, Ciudad MNO', '2021-06-01', '2024-01-15', 6);
INSERT INTO Proyecto (id_proyecto, nombre, direccion, fecha_inicio, fecha_fin, id_cliente) VALUES	(7, 'Centro Médico G', 'Calle 654, Ciudad PQR', '2022-08-15', '2023-07-31', 7);
INSERT INTO Proyecto (id_proyecto, nombre, direccion, fecha_inicio, fecha_fin, id_cliente) VALUES	(8, 'Torre de Oficinas H', 'Avenida Central, Ciudad STU', '2021-11-01', '2024-02-28', 8);
INSERT INTO Proyecto (id_proyecto, nombre, direccion, fecha_inicio, fecha_fin, id_cliente) VALUES	(9, 'Complejo Hotelero I', 'Calle 987, Ciudad VWX', '2022-03-01', '2023-12-31', 9);
INSERT INTO Proyecto (id_proyecto, nombre, direccion, fecha_inicio, fecha_fin, id_cliente) VALUES	(10, 'Edificio Residencial J', 'Avenida Secundaria, Ciudad YZA', '2021-05-15', '2023-09-30', 10);
INSERT INTO Proyecto (id_proyecto, nombre, direccion, fecha_inicio, fecha_fin, id_cliente) VALUES	(11, 'Centro Comercial K', 'Calle 456, Ciudad BCD', '2022-07-01', '2024-04-30', 11);
INSERT INTO Proyecto (id_proyecto, nombre, direccion, fecha_inicio, fecha_fin, id_cliente) VALUES	(12, 'Desarrollo Mixto L', 'Avenida Principal, Ciudad EFG', '2021-10-01', '2023-11-15', 12);
INSERT INTO Proyecto (id_proyecto, nombre, direccion, fecha_inicio, fecha_fin, id_cliente) VALUES	(13, 'Centro de Convenciones M', 'Calle 789, Ciudad HIJ', '2022-01-15', '2024-01-31', 13);
INSERT INTO Proyecto (id_proyecto, nombre, direccion, fecha_inicio, fecha_fin, id_cliente) VALUES	(14, 'Edificio Residencial N', 'Avenida Central, Ciudad KLM', '2021-04-01', '2023-08-31', 14);
INSERT INTO Proyecto (id_proyecto, nombre, direccion, fecha_inicio, fecha_fin, id_cliente) VALUES	(15, 'Complejo Comercial O', 'Calle 321, Ciudad NOP', '2022-06-15', '2024-03-31', 15);
INSERT INTO Proyecto (id_proyecto, nombre, direccion, fecha_inicio, fecha_fin, id_cliente) VALUES	(16, 'Desarrollo Mixto P', 'Avenida Secundaria, Ciudad QRS', '2021-08-01', '2023-10-31', 16);
INSERT INTO Proyecto (id_proyecto, nombre, direccion, fecha_inicio, fecha_fin, id_cliente) VALUES	(17, 'Centro Médico Q', 'Calle 654, Ciudad TUV', '2022-11-01', '2024-06-30', 17);
INSERT INTO Proyecto (id_proyecto, nombre, direccion, fecha_inicio, fecha_fin, id_cliente) VALUES	(18, 'Torre de Oficinas R', 'Avenida Principal, Ciudad WXY', '2021-03-01', '2023-05-15', 18);
INSERT INTO Proyecto (id_proyecto, nombre, direccion, fecha_inicio, fecha_fin, id_cliente) VALUES	(19, 'Complejo Hotelero S', 'Calle 987, Ciudad ZAB', '2022-09-15', '2024-02-28', 19);
INSERT INTO Proyecto (id_proyecto, nombre, direccion, fecha_inicio, fecha_fin, id_cliente) VALUES	(20, 'Edificio Residencial T', 'Avenida Central, Ciudad CDE', '2021-12-01', '2023-07-31', 20);
INSERT INTO Proyecto (id_proyecto, nombre, direccion, fecha_inicio, fecha_fin, id_cliente) VALUES	(21, 'Centro Comercial U', 'Calle 456, Ciudad FGH', '2022-05-01', '2024-01-15', 21);
INSERT INTO Proyecto (id_proyecto, nombre, direccion, fecha_inicio, fecha_fin, id_cliente) VALUES	(22, 'Desarrollo Mixto V', 'Avenida Secundaria, Ciudad IJK', '2021-07-01', '2023-09-30', 22);
	
	--Nuevas tuplas de la tabla Empleado
INSERT INTO Empleado (id_empleado, nombre, apellido, cargo, salario) VALUES	(3, 'Carlos', 'Ruiz', 'Arquitecto Senior', 65000.00);
INSERT INTO Empleado (id_empleado, nombre, apellido, cargo, salario) VALUES	(4, 'Ana', 'Fernández', 'Ingeniero Civil', 55000.00);
INSERT INTO Empleado (id_empleado, nombre, apellido, cargo, salario) VALUES	(5, 'Pablo', 'Sánchez', 'Gerente de Proyecto', 80000.00);
INSERT INTO Empleado (id_empleado, nombre, apellido, cargo, salario) VALUES	(6, 'Laura', 'Gómez', 'Coordinador de Obra', 45000.00);
INSERT INTO Empleado (id_empleado, nombre, apellido, cargo, salario) VALUES	(7, 'Roberto', 'Torres', 'Arquitecto Junior', 40000.00);
INSERT INTO Empleado (id_empleado, nombre, apellido, cargo, salario) VALUES	(8, 'Sofía', 'Ramírez', 'Ingeniero Estructural', 60000.00);
INSERT INTO Empleado (id_empleado, nombre, apellido, cargo, salario) VALUES	(9, 'Diego', 'Jiménez', 'Gerente de Construcción', 85000.00);
INSERT INTO Empleado (id_empleado, nombre, apellido, cargo, salario) VALUES	(10, 'Natalia', 'Morales', 'Coordinador de Calidad', 50000.00);
INSERT INTO Empleado (id_empleado, nombre, apellido, cargo, salario) VALUES	(11, 'Javier', 'Castillo', 'Arquitecto Especialista', 70000.00);
INSERT INTO Empleado (id_empleado, nombre, apellido, cargo, salario) VALUES	(12, 'Valentina', 'Martínez', 'Ingeniero de Costos', 52000.00);
INSERT INTO Empleado (id_empleado, nombre, apellido, cargo, salario) VALUES	(13, 'Andrés', 'Rodríguez', 'Gerente de Compras', 75000.00);
INSERT INTO Empleado (id_empleado, nombre, apellido, cargo, salario) VALUES	(14, 'Camila', 'Herrera', 'Coordinador de Seguridad', 48000.00);
INSERT INTO Empleado (id_empleado, nombre, apellido, cargo, salario) VALUES	(15, 'Lucas', 'Gutiérrez', 'Arquitecto BIM', 65000.00);
INSERT INTO Empleado (id_empleado, nombre, apellido, cargo, salario) VALUES	(16, 'Isabella', 'Reyes', 'Ingeniero de Programación', 58000.00);
INSERT INTO Empleado (id_empleado, nombre, apellido, cargo, salario) VALUES	(17, 'Mateo', 'Díaz', 'Gerente de Operaciones', 90000.00);
INSERT INTO Empleado (id_empleado, nombre, apellido, cargo, salario) VALUES	(18, 'Manuela', 'Ríos', 'Coordinador de Logística', 52000.00);
INSERT INTO Empleado (id_empleado, nombre, apellido, cargo, salario) VALUES	(19, 'Sebastián', 'Vargas', 'Arquitecto Paisajista', 60000.00);
INSERT INTO Empleado (id_empleado, nombre, apellido, cargo, salario) VALUES	(20, 'Valeria', 'Molina', 'Ingeniero de Sistemas', 55000.00);
INSERT INTO Empleado (id_empleado, nombre, apellido, cargo, salario) VALUES	(21, 'Emiliano', 'Campos', 'Gerente de Tecnología', 85000.00);
INSERT INTO Empleado (id_empleado, nombre, apellido, cargo, salario) VALUES	(22, 'Isabela', 'Flores', 'Coordinador de BIM', 50000.00);
	
	--Nuevas tuplas de la tabla Servicio
INSERT INTO Servicio (id_servicio, nombre, descripcion, costo) VALUES	(3, 'Diseño de Interiores', 'Servicio de diseño de interiores para espacios residenciales y comerciales.', 8000.00);
INSERT INTO Servicio (id_servicio, nombre, descripcion, costo) VALUES	(4, 'Instalaciones Eléctricas', 'Servicio de diseño e instalación de sistemas eléctricos.', 15000.00);
INSERT INTO Servicio (id_servicio, nombre, descripcion, costo) VALUES	(5, 'Plomería y Sanitarios', 'Servicio de diseño e instalación de sistemas de plomería y sanitarios.', 12000.00);
INSERT INTO Servicio (id_servicio, nombre, descripcion, costo) VALUES	(6, 'Sistemas de Climatización', 'Servicio de diseño e instalación de sistemas de climatización.', 18000.00);
INSERT INTO Servicio (id_servicio, nombre, descripcion, costo) VALUES	(7, 'Paisajismo y Áreas Verdes', 'Servicio de diseño y ejecución de paisajismo y áreas verdes.', 20000.00);
INSERT INTO Servicio (id_servicio, nombre, descripcion, costo) VALUES	(8, 'Eficiencia Energética', 'Servicio de análisis y aplicación de soluciones de eficiencia energética.', 25000.00);
INSERT INTO Servicio (id_servicio, nombre, descripcion, costo) VALUES	(9, 'Ingeniería Estructural', 'Servicio de diseño y cálculo de estructuras.', 30000.00);
INSERT INTO Servicio (id_servicio, nombre, descripcion, costo) VALUES	(10, 'Gestión de Proyectos', 'Servicio de gestión y supervisión de proyectos de construcción.', 35000.00);
INSERT INTO Servicio (id_servicio, nombre, descripcion, costo) VALUES	(11, 'Topografía y Levantamientos', 'Servicio de topografía y levantamientos para proyectos de construcción.', 8000.00);
INSERT INTO Servicio (id_servicio, nombre, descripcion, costo) VALUES	(12, 'Evaluación de Suelos', 'Servicio de estudio y evaluación de suelos para proyectos de construcción.', 12000.00);
INSERT INTO Servicio (id_servicio, nombre, descripcion, costo) VALUES	(13, 'Consultoría Ambiental', 'Servicio de asesoría y consultoría ambiental para proyectos de construcción.', 18000.00);
INSERT INTO Servicio (id_servicio, nombre, descripcion, costo) VALUES	(14, 'Seguridad y Salud Ocupacional', 'Servicio de asesoría y gestión en seguridad y salud ocupacional.', 15000.00);
INSERT INTO Servicio (id_servicio, nombre, descripcion, costo) VALUES	(15, 'Gestión de Residuos', 'Servicio de manejo y disposición adecuada de residuos de construcción.', 10000.00);
INSERT INTO Servicio (id_servicio, nombre, descripcion, costo) VALUES	(16, 'Modelado BIM', 'Servicio de modelado y coordinación BIM para proyectos de construcción.', 25000.00);
INSERT INTO Servicio (id_servicio, nombre, descripcion, costo) VALUES	(17, 'Ingeniería de Costos', 'Servicio de análisis y presupuesto de costos de proyectos de construcción.', 20000.00);
INSERT INTO Servicio (id_servicio, nombre, descripcion, costo) VALUES	(18, 'Gestión de Calidad', 'Servicio de implementación y supervisión de sistemas de gestión de calidad.', 18000.00);
INSERT INTO Servicio (id_servicio, nombre, descripcion, costo) VALUES	(19, 'Ingeniería de Sistemas', 'Servicio de diseño e implementación de sistemas para proyectos de construcción.', 22000.00);
INSERT INTO Servicio (id_servicio, nombre, descripcion, costo) VALUES	(20, 'Asesoría Legal', 'Servicio de asesoría legal para proyectos de construcción.', 15000.00);
INSERT INTO Servicio (id_servicio, nombre, descripcion, costo) VALUES	(21, 'Auditoría Energética', 'Servicio de auditoría y evaluación de eficiencia energética en edificaciones.', 20000.00);
INSERT INTO Servicio (id_servicio, nombre, descripcion, costo) VALUES	(22, 'Gestión de Riesgos', 'Servicio de identificación, análisis y mitigación de riesgos en proyectos de construcción.', 18000.00);
	
	--Nuevas tuplas de la tabla AsignacionProyecto
INSERT INTO AsignacionProyecto (id_asignacion, id_proyecto, id_empleado, id_servicio, horas_trabajo) VALUES	(3, 3, 3, 3, 150);
INSERT INTO AsignacionProyecto (id_asignacion, id_proyecto, id_empleado, id_servicio, horas_trabajo) VALUES	(4, 3, 4, 4, 200);
INSERT INTO AsignacionProyecto (id_asignacion, id_proyecto, id_empleado, id_servicio, horas_trabajo) VALUES	(5, 4, 5, 5, 180);
INSERT INTO AsignacionProyecto (id_asignacion, id_proyecto, id_empleado, id_servicio, horas_trabajo) VALUES	(6, 4, 6, 6, 160);
INSERT INTO AsignacionProyecto (id_asignacion, id_proyecto, id_empleado, id_servicio, horas_trabajo) VALUES	(7, 5, 7, 7, 220);
INSERT INTO AsignacionProyecto (id_asignacion, id_proyecto, id_empleado, id_servicio, horas_trabajo) VALUES	(8, 5, 8, 8, 190);
INSERT INTO AsignacionProyecto (id_asignacion, id_proyecto, id_empleado, id_servicio, horas_trabajo) VALUES	(9, 6, 9, 9, 250);
INSERT INTO AsignacionProyecto (id_asignacion, id_proyecto, id_empleado, id_servicio, horas_trabajo) VALUES	(10, 6, 10, 10, 180);
INSERT INTO AsignacionProyecto (id_asignacion, id_proyecto, id_empleado, id_servicio, horas_trabajo) VALUES	(11, 7, 11, 11, 160);
INSERT INTO AsignacionProyecto (id_asignacion, id_proyecto, id_empleado, id_servicio, horas_trabajo) VALUES	(12, 7, 12, 12, 190);
INSERT INTO AsignacionProyecto (id_asignacion, id_proyecto, id_empleado, id_servicio, horas_trabajo) VALUES	(13, 8, 13, 13, 230);
INSERT INTO AsignacionProyecto (id_asignacion, id_proyecto, id_empleado, id_servicio, horas_trabajo) VALUES	(14, 8, 14, 14, 170);
INSERT INTO AsignacionProyecto (id_asignacion, id_proyecto, id_empleado, id_servicio, horas_trabajo) VALUES	(15, 9, 15, 15, 200);
INSERT INTO AsignacionProyecto (id_asignacion, id_proyecto, id_empleado, id_servicio, horas_trabajo) VALUES	(16, 9, 16, 16, 180);
INSERT INTO AsignacionProyecto (id_asignacion, id_proyecto, id_empleado, id_servicio, horas_trabajo) VALUES	(17, 10, 17, 17, 240);
INSERT INTO AsignacionProyecto (id_asignacion, id_proyecto, id_empleado, id_servicio, horas_trabajo) VALUES	(18, 10, 18, 18, 160);
INSERT INTO AsignacionProyecto (id_asignacion, id_proyecto, id_empleado, id_servicio, horas_trabajo) VALUES	(19, 11, 19, 19, 190);
INSERT INTO AsignacionProyecto (id_asignacion, id_proyecto, id_empleado, id_servicio, horas_trabajo) VALUES	(20, 11, 20, 20, 170);
INSERT INTO AsignacionProyecto (id_asignacion, id_proyecto, id_empleado, id_servicio, horas_trabajo) VALUES	(21, 12, 21, 21, 230);
INSERT INTO AsignacionProyecto (id_asignacion, id_proyecto, id_empleado, id_servicio, horas_trabajo) VALUES	(22, 12, 22, 22, 180);

--Creación de Roles y Asignación de Permisos
CREATE ROLE gerente WITH SUPERUSER CREATEROLE CREATEDB PASSWORD 'gerente1234';
GRANT ALL PRIVILEGES ON cliente, asignacionproyecto,empleado, proyecto, servicio TO gerente WITH GRANT OPTION;

CREATE ROLE arquitecto WITH PASSWORD 'arquitecto';
GRANT SELECT, INSERT ON proyecto, asignacionproyecto TO arquitecto;

CREATE ROLE recursos_humanos WITH PASSWORD 'recursos_humanos';
GRANT SELECT, INSERT, UPDATE ON empleado, cliente TO recursos_humanos;

CREATE ROLE ingeniero_civil WITH PASSWORD 'ingeniero_civil';
GRANT SELECT ON asignacionproyecto TO ingeniero_civil;
GRANT ALL PRIVILEGES ON proyecto TO ingeniero_civil;

CREATE ROLE gerente_de_marketing WITH PASSWORD 'gerente_marketing' INHERIT;
GRANT ALL PRIVILEGES ON cliente, servicio, proyecto TO gerente_de_marketing;
GRANT SELECT, INSERT, UPDATE ON asignacionproyecto TO gerente_de_marketing;

CREATE ROLE coordinador WITH PASSWORD 'coordinador';
GRANT SELECT ON proyecto, servicio TO coordinador;

--Creación de la Política
ALTER TABLE proyecto ENABLE ROW LEVEL SECURITY;
CREATE POLICY plcy_gerente_proyecto ON proyecto FOR ALL TO gerente USING (fecha_fin > '06-07-2024');

ALTER TABLE empleado ENABLE ROW LEVEL SECURITY;
CREATE POLICY plcy_gerente_empleado ON empleado FOR ALL TO recursos_humanos USING (salario > 80000);

ALTER TABLE servicio ENABLE ROW LEVEL SECURITY;
CREATE POLICY plcy_gerente_servicio ON servicio FOR SELECT TO coordinador USING (costo > 70000);
CREATE DATABASE IF NOT EXISTS gestion_empleados;

s
USE gestion_empleados;


CREATE TABLE Empleados (
    id_empleado INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL
);


CREATE TABLE HorasLaboradas (
    id_hora_laborada INT AUTO_INCREMENT PRIMARY KEY,
    id_empleado INT,
    fecha_inicio DATE,
    fecha_fin DATE,
  
    dia_1 DECIMAL(4,2),
    dia_2 DECIMAL(4,2),
    dia_3 DECIMAL(4,2),
    dia_4 DECIMAL(4,2),
    dia_5 DECIMAL(4,2),
    dia_6 DECIMAL(4,2),
    dia_7 DECIMAL(4,2),
    dia_8 DECIMAL(4,2),
    dia_9 DECIMAL(4,2),
    dia_10 DECIMAL(4,2),
    dia_11 DECIMAL(4,2),
    dia_12 DECIMAL(4,2),
    dia_13 DECIMAL(4,2),
    dia_14 DECIMAL(4,2),
    dia_15 DECIMAL(4,2),
    dia_16 DECIMAL(4,2),
    dia_17 DECIMAL(4,2),
    dia_18 DECIMAL(4,2),
    dia_19 DECIMAL(4,2),
    dia_20 DECIMAL(4,2),
    dia_21 DECIMAL(4,2),
    dia_22 DECIMAL(4,2),
    dia_23 DECIMAL(4,2),
    dia_24 DECIMAL(4,2),
    dia_25 DECIMAL(4,2),
    dia_26 DECIMAL(4,2),
    dia_27 DECIMAL(4,2),
    dia_28 DECIMAL(4,2),
    dia_29 DECIMAL(4,2),
    dia_30 DECIMAL(4,2),
    dia_31 DECIMAL(4,2),
    total_horas DECIMAL(5,2),
    FOREIGN KEY (id_empleado) REFERENCES Empleados(id_empleado)
);


CREATE TABLE Asignaciones (
    id_asignacion INT AUTO_INCREMENT PRIMARY KEY,
    id_empleado INT,
    mes VARCHAR(20), 
    descripcion VARCHAR(255),
    FOREIGN KEY (id_empleado) REFERENCES Empleados(id_empleado)
);


CREATE TABLE Induccion (
    id_induccion INT AUTO_INCREMENT PRIMARY KEY,
    id_empleado INT,
    periodo VARCHAR(20),
    parte VARCHAR(20),
    nrc VARCHAR(20),
    curso VARCHAR(100),
    horas INT,
    nota DECIMAL(4,2),
    titulo VARCHAR(100),
    camp VARCHAR(50),
    campus VARCHAR(50),
    situacion VARCHAR(50),
    bloque VARCHAR(50),
    FOREIGN KEY (id_empleado) REFERENCES Empleados(id_empleado)
);


CREATE TABLE Movilidad (
    id_movilidad INT AUTO_INCREMENT PRIMARY KEY,
    id_empleado INT,
    fecha DATE,
    descripcion VARCHAR(255),
    FOREIGN KEY (id_empleado) REFERENCES Empleados(id_empleado)
);

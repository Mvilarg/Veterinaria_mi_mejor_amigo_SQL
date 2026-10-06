    CREATE DATABASE Veterinaria_mi_mejor_amigo;

    USE Veterinaria_mi_mejor_amigo;

    CREATE TABLE Dueños (
    idDueños INT AUTO_INCREMENT PRIMARY KEY,
    nombre_completo VARCHAR(100) NOT NULL,
    dpi VARCHAR(20) NOT NULL UNIQUE ,
    telefono VARCHAR(20) NOT NULL UNIQUE,
    direccion VARCHAR(200) NOT NULL
    );

    CREATE Table Mascotas(
    idMascotas INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    especie VARCHAR(50) NOT NULL,
    raza VARCHAR(50) NOT NULL,
    sexo VARCHAR(50) NOT NULL,
    edad INT NOT NULL,
    vacunacion VARCHAR(50) NOT NULL,
    idDueños INT,
    FOREIGN KEY (idDueños) REFERENCES Dueños(idDueños)
    );

    CREATE TABLE Servicios(
    idServicios INT AUTO_INCREMENT PRIMARY KEY,
    nombre_servicio VARCHAR(100) NOT NULL,
    descripcion VARCHAR(150) NOT NULL,
    precio DECIMAL(10,2) NOT NULL
    );

    CREATE TABLE Visitas(
    idVisitas INT AUTO_INCREMENT PRIMARY KEY,
    fecha_visita DATETIME NOT NULL,
    idMascotas INT,
    idServicios INT,
    FOREIGN KEY (idMascotas) REFERENCES Mascotas(idMascotas),
    FOREIGN KEY (idServicios) REFERENCES Servicios(idServicios)
    );

    CREATE TABLE Tratamientos(
    idTratamientos INT AUTO_INCREMENT PRIMARY KEY,
    nombre_tratamiento VARCHAR(100) NOT NULL,
    observaciones VARCHAR(255) NOT NULL,
    idVisitas INT,
    FOREIGN KEY (idVisitas) REFERENCES Visitas(idVisitas)
    );
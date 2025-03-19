-- Creación de la base de datos Practica20250311DB
CREATE DATABASE Practica20250311DB;
GO

-- Usar la base de datos Practica20250311DB
USE Practica20250311DB;
GO



-- Crear la tabla Marcas
CREATE TABLE Marcas (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Nombre VARCHAR(255) NOT NULL
);

-- Crear la tabla Categorías
CREATE TABLE Categorias (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Nombre VARCHAR(255) NOT NULL
);

-- Crear la tabla Productos
CREATE TABLE Productos (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Nombre VARCHAR(255) NOT NULL,
    Descripcion TEXT,
    Precio DECIMAL(10, 2) NOT NULL,
    MarcaId INT  NOT NULL,
    CategoriaId INT  NOT NULL,
    FOREIGN KEY (MarcaId) REFERENCES Marcas(Id),
    FOREIGN KEY (CategoriaId) REFERENCES Categorias(Id)
);

CREATE TABLE Usuarios (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Nombre VARCHAR(255) NOT NULL,
    Password CHAR(32) NOT NULL,
    Email VARCHAR(255) UNIQUE NOT NULL,
    FechaRegistro DATETIME DEFAULT GETDATE(),
    UltimoInicioSesion DATETIME,
    Rol VARCHAR(50),
    Estatus TINYINT DEFAULT 1 -- Usamos TINYINT para Estatus y un valor predeterminado de 1    
);
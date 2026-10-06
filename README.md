# 🐾 Veterinaria "Mi Mejor Amigo" - Base de Datos Relacional

Este repositorio contiene el diseño, la creación y las consultas de la base de datos para la veterinaria **"Mi Mejor Amigo"**, un centro de atención médica, estética y tratamientos para mascotas. El proyecto busca optimizar el registro diario de operaciones, el control de pacientes y el historial clínico.

---

## 📋 1. Descripción del Proyecto y Requerimientos

El sistema fue diseñado para gestionar cinco entidades principales con las siguientes reglas de negocio:
* **Dueños:** Se registran sus datos personales (nombre, DPI único, teléfono y dirección). Un dueño puede tener una o varias mascotas.
* **Mascotas:** Cada animal cuenta con nombre, especie, raza, sexo, edad, estado de vacunación y pertenece a un único dueño.
* **Servicios:** La veterinaria ofrece diversos servicios médicos y estéticos (como consultas, baños, desparasitaciones), cada uno con su nombre, descripción y precio base.
* **Visitas:** Cada vez que una mascota asiste a la veterinaria, se registra una visita con fecha y hora exacta, vinculada a una mascota y a un servicio.
* **Tratamientos:** En determinadas visitas, el veterinario receta uno o más tratamientos médicos, guardando sus observaciones.

---

## 📐 2. Diseño de la Base de Datos (Relaciones)

La base de datos está compuesta por 5 tablas interconectadas mediante **Claves Foráneas (Foreign Keys)** para mantener la integridad de la información:

1. **`Dueños` ➔ `Mascotas` (Relación 1:N):** La tabla `Mascotas` incluye una clave foránea `idDueños`. Esto permite que un dueño tenga múltiples mascotas, pero cada mascota tenga un solo dueño registrado.
2. **`Mascotas` y `Servicios` ➔ `Visitas` (Relación 1:N):** La tabla `Visitas` centraliza la atención conectando qué mascota asistió y qué servicio se le brindó mediante `idMascotas` e `idServicios`.
3. **`Visitas` ➔ `Tratamientos` (Relación 1:N):** La tabla `Tratamientos` incluye la clave foránea `idVisitas`, permitiendo recetar uno o varios tratamientos en una misma visita médica.

---

## 🛠️ 3. Estructura del Repositorio

El proyecto está organizado en los siguientes archivos lógicos:
* `esquema.sql` (DDL): Contiene la creación de la base de datos y todas las tablas con sus tipos de datos correctos (`INT`, `VARCHAR`, `DECIMAL`, `DATETIME`) y restricciones (`PRIMARY KEY`, `UNIQUE`, `FOREIGN KEY`).
* `datos_prueba.sql` (DML): Contiene los registros de prueba para dueños, mascotas, servicios, visitas con fechas estructuradas y tratamientos.
* `consultas.sql` (DQL): Contiene el conjunto de consultas que demuestran el uso de funciones de texto (`CONCAT`, `UPPER`, `SUBSTRING`), funciones de agregación (`COUNT`, `AVG`), condicionales (`IF`), subconsultas, alias y uniones (`JOIN`).

---

## 🚀 4. Proceso de Desarrollo y Pruebas

1. **Creación del Modelo:** Se diseñó el diagrama entidad-relación eliminando tablas intermedias innecesarias para asegurar una estructura limpia y eficiente.
2. **Normalización y Tipos de Datos:** Se ajustaron campos clave como el DPI a `VARCHAR(20)` para evitar problemas de desbordamiento, y los precios a `DECIMAL(10,2)` para un correcto manejo monetario.
3. **Validación con Consultas:** Se implementaron consultas multitabla (`JOIN`) para simular reportes reales, tales como consultar el historial médico de una mascota específica o ver la relación entre dueños y animales de forma legible.

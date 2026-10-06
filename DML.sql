-- Datos de dueños
INSERT INTO Dueños (nombre_completo, dpi, telefono, direccion) VALUES
("Mario Villatoro", "2992306190589", "521862702", "15 calle a 4-19 zona 3"),
("Juan Perez", "2893306190589", "34862702", "10 calle 5-20 zona 4"),
("Daniela Peña", "2992306899659", "246893702", "7 calle 5-50 zona 18"),
("Josue Morales", "6982306190589", "521546902", "7 calle 4-80 zona 3"),
("Diana Leon", "2992306359879", "358962702", "6 avenida 6-40 zona 4")

-- Datos Mascotas 
INSERT INTO Mascotas (nombre, especie, raza, sexo, edad, vacunacion, idDueños ) VALUES
("Blacky", "perro", "Coquer", "macho", 9, "si", 1),
("Chikis", "perro", "Schnauzer", "macho", 5, "si", 1),
("Rocky", "gato", "persa", "macho", 3, "si", 2),
("Dulce", "gato", "siames", "hembra", 6, "si", 2),
("Tommy", "perro", "golden", "macho", 3, "si", 3),
("Ruda", "gato", "bengali", "hembra", 1, "si", 3),
("Max", "perro", "Coquer", "macho", 3, "si", 4),
("Gala", "perro", "Coquer", "hembra", 9, "si", 4),
("Wendy", "perro", "Dogo", "hembra", 12, "si", 5),
("Principe", "perro", "Pit Bull", "macho", 6, "si", 5)

--Datos Servicios
INSERT INTO Servicios (nombre_servicio, descripcion, precio) VALUES
("Consulta Médica General", "Revisión clínica integral, diagnóstico de estado de salud general", 150.00),
("Vacunación Antirrábica", "Aplicación de dosis anual de vacuna contra la rabia e incluye constancia de cartilla", 125.50),
("Baño y Estética Canina", "Baño medicado, secado, corte de pelo según la raza y limpieza de oídos", 200.00),
("Desparasitación Interna", "Administración de tratamiento oral o inyectado contra parásitos gastrointestinales", 90.00),
("Corte de Uñas y Limpieza", "Corte de uñas y revisión superficial de almohadillas", 50.00);

--Datos servicios
INSERT INTO visitas (fecha_visita, idMascotas, idServicios) VALUES
("2026-10-04 09:15:00", 1 ,3),
("2026-10-04 11:30:00", 2 ,1),
("2026-10-05 10:00:00", 3 ,4),
("2026-10-05 14:45:00", 4 ,5),
("2026-10-06 08:30:00", 5 ,2),
("2026-10-06 16:00:00", 6 ,3),
("2026-10-07 09:45:00", 2 ,1),
("2026-10-07 15:15:00", 4 ,1),
("2026-10-08 11:00:00", 10 ,5),
("2026-10-08 17:30:00", 8 ,4)

-- Datos Tratamientos
INSERT INTO Tratamientos (nombre_tratamiento, observaciones, idVisitas) VALUES
("Desparasitación Externa", "Aplicar pipeta en la cruz del lomo; evitar mojar al animal por 48 horas.", 1),
("Limpieza Ótica", "Aplicar 3 gotas de solución limpiadora en cada oído cada 12 horas por 5 días", 2),
("Tratamiento Antibiótico", "Administrar 1 tableta cada 24 horas durante 7 días junto con el alimento", 3),
("Aplicación de Ungüento Oftálmico", "Colocar pequeña cantidad en el ojo afectado cada 8 horas por 5 días", 4),
("Suplemento Vitamínico", "Dar 5 ml vía oral diariamente durante dos semanas para recuperar energía", 5);
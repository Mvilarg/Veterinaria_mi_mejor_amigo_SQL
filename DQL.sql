-- 1. edad
SELECT * FROM Mascotas
WHERE edad < 10;

-- 2. concatenar dueños y mascotas
SELECT CONCAT(D.nombre_completo, "- Dueño de : ", M.nombre) as "Dueños de mascotas"
FROM Mascotas M 
JOIN Dueños D ON M.idDueños = D.idDueños;

-- 3. Alias
SELECT nombre AS Nombre_Mascota, especie AS Tipo_Animal 
FROM Mascotas;

-- 4. Mayusculas y minusculas
SELECT UPPER(nombre_completo) AS Nombre_Mayusculas, LOWER(direccion) AS Direccion_Minusculas 
FROM Dueños;

-- 5. conectar caracteres
SELECT nombre_servicio, 
    LENGTH(nombre_servicio) AS Cantidad_Caracteres, 
    SUBSTRING(descripcion, 1, 10) AS Recorte_Texto 
FROM Servicios;

-- 6. precio redondeado
SELECT nombre_servicio, precio, ROUND(precio, 0 ) AS Precio_Redondeado 
FROM Servicios;

-- 7. clasificacion
SELECT nombre, edad, 
       IF(edad > 5, 'Mascota Adulta', 'Mascota Joven') AS Categoria_Edad 
FROM Mascotas;

-- 8. mayor a menor
SELECT M.nombre AS Mascota, D.nombre_completo AS Dueño, M.edad 
FROM Mascotas M
JOIN Dueños D ON M.idDueños = D.idDueños
ORDER BY M.edad DESC;

-- 9. Contar especies
SELECT especie, COUNT * AS Cantidad_Por_Especie 
FROM Mascotas 
GROUP BY especie;

-- 10 y 11 Funcion y agregacion de alias
SELECT COUNT(*) AS Total_Mascotas, ROUND(AVG(edad), 2) AS Promedio_Edad 
FROM Mascotas;

-- 12. concatenar visitas
SELECT CONCAT(M.nombre, "- Ultima consulta fue : ", V.fecha_visita) as "Ultima Visita"
FROM Visitas V 
JOIN mascotas M ON V.idMascotas = M.idMascotas;

-- 13. concatenar mascota con visitas y tratamientos
SELECT 
    m.nombre AS Mascota,
    m.especie,
    v.fecha_visita,
    t.nombre_tratamiento,
    t.observaciones
FROM Mascotas m
JOIN Visitas v ON m.idMascotas = v.idMascotas
JOIN Tratamientos t ON v.idVisitas = t.idVisitas;


-- 14.Concatena, dueño, mascota servicio y tratamiento 
SELECT 
    d.nombre_completo AS Dueño,
    m.nombre AS Mascota,
    v.fecha_visita,
    s.nombre_servicio,
    t.nombre_tratamiento
FROM Dueños d
JOIN Mascotas m ON d.idDueños = m.idDueños
JOIN Visitas v ON m.idMascotas = v.idMascotas
JOIN Servicios s ON v.idServicios = s.idServicios
JOIN Tratamientos t ON v.idVisitas = t.idVisitas;

-- 15. consultar mascotas con su edad, genero, especie y raza
SELECT nombre, edad, sexo, especie, raza 
FROM Mascotas;
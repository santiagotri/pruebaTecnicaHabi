-- En las siguientes lineas se incluye la consulta para el requerimiento "Los bebedores que frecuentan solo las tiendas que frecuenta Luis Perez."

-- La logica parte en que para encontrar los bebedores que frecuentan solo las tiendas que frecuenta Luis Perez,
-- se parte de todos los bebedores que frecuentan las mismas tiendas que Luis Perez y se le quitan aquellos bebedores que 
-- frecuentan tiendas que Luis Perez no. 
SELECT b1.nombre, b1.cedula
FROM FRECUENTA f1
LEFT JOIN BEBEDOR b1 ON f1.cedula = b1.cedula
WHERE f1.codigo_tienda IN (
	SELECT f.codigo_tienda
	FROM FRECUENTA f
	LEFT JOIN BEBEDOR b ON b.cedula = f.cedula
	WHERE b.nombre = 'Luis Perez' 
) -- Hasta aca tenemos todos los bebedores que frecuentan las mismas tiendas que Luis Perez
AND b1.cedula NOT IN (
	-- Se exlcuye bebedores que frecuentan tiendas que 'Luis Perez' no
	SELECT b2.cedula
	FROM FRECUENTA f2
	LEFT JOIN BEBEDOR b2 ON f2.cedula = b2.cedula
	WHERE f2.codigo_tienda NOT IN (
		SELECT f3.codigo_tienda
		FROM FRECUENTA f3
		LEFT JOIN BEBEDOR b3 ON b3.cedula = f3.cedula
		WHERE b3.nombre = 'Luis Perez' 
	)
)
AND b1.nombre <> 'Luis Perez' -- Exluimos a Luis Perez de los resultados







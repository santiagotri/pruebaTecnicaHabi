-- En las siguientes lineas se incluye la consulta para el requerimiento "Las fuentes de soda que no son frecuentadas por Andres Camilo Restrepo."
SELECT t1.nombre_tienda as fuentes_de_soda
FROM TIENDA t1
WHERE t1.codigo_tienda NOT IN (
	SELECT t.codigo_tienda
	FROM TIENDA t
	LEFT JOIN FRECUENTA f ON t.codigo_tienda = f.codigo_tienda
	LEFT JOIN BEBEDOR b ON f.cedula = b.cedula
	WHERE b.nombre = 'Andres Camilo Restrepo'
)

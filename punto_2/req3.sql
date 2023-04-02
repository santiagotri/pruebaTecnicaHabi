-- En las siguientes lineas se incluye la consulta para el requerimiento "Los bebedores que les gusta al menos una bebida y que frecuentan al menos una tienda."
SELECT b.cedula, b.nombre
FROM BEBEDOR b
INNER JOIN GUSTA g ON b.cedula = g.cedula
INNER JOIN FRECUENTA f ON b.cedula = f.cedula
INNER JOIN TIENDA t ON f.codigo_tienda = t.codigo_tienda
GROUP BY b.cedula, b.nombre -- Combinamos los valores repetidos 
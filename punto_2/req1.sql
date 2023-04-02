-- En las siguientes lineas se incluye la consulta para el requerimiento "Los bebedores que no les gusta la colombiana."
SELECT b.cedula, b.nombre
FROM BEBEDOR b
LEFT JOIN GUSTA g ON b.cedula = g.cedula
LEFT JOIN BEBIDA beb ON g.codigo_bedida = beb.codigo_bebida
WHERE beb.nombre_bebida <> 'colombiana' OR beb.nombre_bebida IS NULL
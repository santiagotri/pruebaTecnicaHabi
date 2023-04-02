-- En las siguientes lineas se incluye la consulta para el requerimiento "Para cada bebedor, las bebidas que no le gustan."
SELECT b.nombre AS nombre_bebedor, beb.nombre_bebida
FROM BEBEDOR b
CROSS JOIN BEBIDA beb --Union cartesiana, todos los elementos con todos los elementos. 
WHERE NOT EXISTS ( -- Donde no existe una relacion de gusta
  SELECT * 
  FROM GUSTA g
  WHERE b.cedula = g.cedula AND beb.codigo_bebida = g.codigo_bebida
)
ORDER BY b.nombre, beb.nombre_bebida --Organizamos por nombre y nombre-bebida. 
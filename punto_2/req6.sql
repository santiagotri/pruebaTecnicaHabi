-- En las siguientes lineas se incluye la consulta para el requerimiento "Los bebedores que unicamente frecuentan las tiendas que unicamente sirven alguna bebida que le gusta."

-- La logica parte de los bebedores que si frecuentan tiendas que venden bebidas que no les gustan y despues
-- excluye a los bebedores de esa lista. 
SELECT b.cedula, b.nombre 
FROM BEBEDOR b 
WHERE b.cedula NOT IN 
  (SELECT DISTINCT f.cedula 
   FROM FRECUENTA f 
   LEFT JOIN VENDE v ON f.codigo_tienda = v.codigo_tienda -- Une la cedula del bebedor con las tiendas que frecuenta y las bebidas que se venden.
   LEFT JOIN GUSTA g ON f.cedula = g.cedula AND v.codigo_bebida = g.codigo_bebida -- Une la cedula del bebedor con sus gustos y el codigo de bebida que se vende con el que le gusta al bebedor.
   WHERE g.cedula IS NULL OR v.codigo_bebida IS NULL) 
   -- Se llega entonces a que las cedulas que tengan entradas nulas son aquellas de los bebedores que 
   -- frecuentan tiendas que venden bebidas que no les gustan 


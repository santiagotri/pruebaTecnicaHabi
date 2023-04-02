-- Este archivo contiene las sentencias necesarias para acondicionar una base de datos para probar los requerimientos del enunciado. 
CREATE TABLE TIENDA (
  codigo_tienda INT PRIMARY KEY,
  nombre_tienda VARCHAR(255)
);

CREATE TABLE BEBIDA (
  codigo_bebida INT PRIMARY KEY,
  nombre_bebida VARCHAR(255)
);

CREATE TABLE BEBEDOR (
  cedula BIGINT PRIMARY KEY,
  nombre VARCHAR(255)
);

CREATE TABLE GUSTA (
  cedula BIGINT,
  codigo_bebida INT,
  FOREIGN KEY (cedula) REFERENCES BEBEDOR(cedula),
  FOREIGN KEY (codigo_bebida) REFERENCES BEBIDA(codigo_bebida),
  PRIMARY KEY (cedula, codigo_bebida)
);

CREATE TABLE FRECUENTA (
  cedula BIGINT,
  codigo_tienda INT,
  FOREIGN KEY (cedula) REFERENCES BEBEDOR(cedula),
  FOREIGN KEY (codigo_tienda) REFERENCES TIENDA(codigo_tienda),
  PRIMARY KEY (cedula, codigo_tienda)
);

CREATE TABLE VENDE (
  codigo_tienda INT,
  codigo_bebida INT,
  precio FLOAT,
  FOREIGN KEY (codigo_tienda) REFERENCES TIENDA(codigo_tienda),
  FOREIGN KEY (codigo_bebida) REFERENCES BEBIDA(codigo_bebida),
  PRIMARY KEY (codigo_tienda, codigo_bebida)
);

INSERT INTO TIENDA (codigo_tienda, nombre_tienda) VALUES 
  (1, 'Tienda 1'),
  (2, 'Tienda 2'),
  (3, 'Tienda 3'),
  (4, 'Tienda 4'),
  (5, 'Tienda 5');

INSERT INTO BEBIDA (codigo_bebida, nombre_bebida) VALUES 
  (1, 'Coca Cola'),
  (2, 'Pepsi'),
  (3, 'Fanta'),
  (4, 'Sprite'),
  (5, 'Colombiana');

INSERT INTO BEBEDOR (cedula, nombre) VALUES 
  (123456789, 'Luis Perez'),
  (234567890, 'Andres Camilo Restrepo'),
  (345678901, 'Pedro Garcia'),
  (456789012, 'Sofia Martinez'),
  (1001168175, 'Santiago Triana'),
  (567890123, 'David Lopez');

INSERT INTO GUSTA (cedula, codigo_bebida) VALUES 
  (123456789, 1),
  (234567890, 2),
  (345678901, 3),
  (456789012, 4),
  (567890123, 5);

INSERT INTO FRECUENTA (cedula, codigo_tienda) VALUES 
  (123456789, 1),
  (234567890, 2),
  (345678901, 3),
  (456789012, 4),
  (456789012, 2),
  (1001168175, 1),
  (567890123, 5);

INSERT INTO VENDE (codigo_tienda, codigo_bebida, precio) VALUES 
  (1, 1, 1.5),
  (1, 2, 1.5),
  (2, 2, 1.5),
  (3, 3, 1.5),
  (4, 4, 1.5),
  (5, 5, 1.5);
-- PROBLEMATICA 2 - #1.1

/* Crear una vista con las columnas id, numero sucursal, nombre, apellido, DNI 
y edad de la tabla cliente calculada a partir de la fecha de nacimiento */

CREATE VIEW v_clients(id, 'numero sucursal', nombre, apellido,
DNI, edad)

AS

SELECT customer_id, branch_id, customer_name, customer_surname, customer_DNI,
strftime('%Y-%m-%d', 'now') - strftime(dob)
FROM cliente;
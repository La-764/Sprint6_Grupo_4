CREATE VIEW v_clients(id, 'numero sucursal', nombre, apellido,
DNI, edad)

AS

SELECT customer_id, branch_id, customer_name, customer_surname, customer_DNI,
strftime('%Y-%m-%d', 'now') - strftime(dob)
FROM cliente;


-- view / consultas(usando view) por separado: .sql




-- when: no uso de orm, o apps que no usan orm
--usar vista para evitar harcodear
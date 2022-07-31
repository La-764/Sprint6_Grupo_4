-- PROBLEMATICA 2 - #3

/* Actualizar 5 clientes recientemente agregados en la base de datos dado que 
hubo un error en el JSON que traía la información, la sucursal de todos es 
la 10 */

UPDATE cliente
SET branch_id = 10
WHERE customer_id IN (SELECT customer_id from cliente ORDER BY customer_id DESC LIMIT 5);
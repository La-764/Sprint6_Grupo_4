-- PROBLEMATICA 2 - #3

/* Actualizar 5 clientes recientemente agregados en la base de datos dado que 
hubo un error en el JSON que traía la información, la sucursal de todos es 
la 10 */

UPDATE cliente
SET branch_id = 10
WHERE customer_id BETWEEN 501 AND 505


-- OTRA OPCIÓN (no se pudo comprobar)
-- YA QUE ES NECESARIO HABILITAR: SQLITE_ENABLE_UPDATE_DELETE_LIMIT

/*
UPDATE cliente
SET branch_id = 10
ORDER BY customer_id DESC
LIMIT 5;
*/
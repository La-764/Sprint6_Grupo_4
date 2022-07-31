-- PROBLEMATICA 2 - #2.6

/* Teniendo en cuenta que los nuevos datos son almacenados al final de la tabla debido a la PK (AUTOINCREMENT), 
limito mi búsqueda a los últimos registros. */

SELECT * FROM cliente
ORDER BY customer_id DESC
LIMIT 5;
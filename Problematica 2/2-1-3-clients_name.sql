-- PROBLEMATICA 2 - #1.3

/* Mostrar todos los clientes que se llaman “Anne” o “Tyler” ordenados 
por edad de menor a mayor */

SELECT * FROM v_clients
WHERE nombre = 'Anne' or nombre = 'Tyler'
ORDER BY edad;
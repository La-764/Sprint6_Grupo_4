-- PROBLEMATICA 2 - #1.2

/* Mostrar las columnas de los clientes, ordenadas por el DNI de menor 
a mayor y cuya edad sea superior a 40 años */


SELECT * FROM v_clients
WHERE edad > 40
ORDER BY DNI;
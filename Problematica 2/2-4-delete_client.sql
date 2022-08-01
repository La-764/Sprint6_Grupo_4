-- PROBLEMATICA 2 - #4

/* CONSIGNA ACTUALIZADA: Eliminar el registro correspondiente a “__ David” realizando la selección 
por el nombre y apellido

ANTERIOR CONSIGNA: Eliminar el registro correspondiente a “Noel David” realizando la selección 
por el nombre y apellido */

DELETE FROM cliente
WHERE customer_name ||' '|| customer_surname = 'Galvin David';
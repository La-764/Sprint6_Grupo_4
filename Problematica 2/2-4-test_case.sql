--CASO DE PRUEBA PARA PROBLEMATICA 2 - #4

/* Utilizando una tabla de backup "cliente_backup" testeo la eliminación de un registro. Primero creo dicha tabla 
de prueba, utilizando el schema y los datos de la tabla original, realizo las consultas y/o alteraciones necesarias 
y finalmente ejecuto "DROP TABLE" para descartar el test. */

CREATE TABLE "cliente_backup" ( "customer_id" INTEGER NOT NULL, "customer_name" TEXT NOT NULL, 
"customer_surname" NUMERIC NOT NULL, "customer_DNI" TEXT NOT NULL, "dob" TEXT, "branch_id" INTEGER NOT NULL, 
PRIMARY KEY("customer_id" AUTOINCREMENT) );

INSERT INTO cliente_backup
SELECT * FROM cliente;

SELECT * FROM cliente_backup;

DELETE FROM cliente_backup
WHERE customer_name ||' '|| customer_surname = 'Galvin David';

DROP TABLE cliente_backup;
-- CASO DE PRUEBA PROBLEMATICA 2 - #2

/* Para resolver esta problemática, creo una tabla de prueba "cliente_backup" */

CREATE TABLE "cliente_backup" ( "customer_id" INTEGER NOT NULL, "customer_name" TEXT NOT NULL, 
"customer_surname" NUMERIC NOT NULL, "customer_DNI" TEXT NOT NULL, "dob" TEXT, "branch_id" INTEGER NOT NULL, 
PRIMARY KEY("customer_id" AUTOINCREMENT) );

/* Inserto un registro en la tabla tomando uno por uno los valores correspondientes a cada clave, acorde a la cantidad 
de columnas que tiene mi tabla (luego de formatear el string a un objeto json con la función de la extensión JSON1)  */

INSERT INTO cliente_backup
SELECT json_extract(json('{
"customer_name": "Lois",
"customer_surname": "Stout",
"customer_DNI": 47730534,
"branch_id": 80,
"customer_dob": "1984-07-07"
} '), '$.customer_id'),
json_extract(json('{
"customer_name": "Lois",
"customer_surname": "Stout",
"customer_DNI": 47730534,
"branch_id": 80,
"customer_dob": "1984-07-07"
} '), '$.customer_name'),
json_extract(json('{
"customer_name": "Lois",
"customer_surname": "Stout",
"customer_DNI": 47730534,
"branch_id": 80,
"customer_dob": "1984-07-07"
} '), '$.customer_surname'),
json_extract(json('{
"customer_name": "Lois",
"customer_surname": "Stout",
"customer_DNI": 47730534,
"branch_id": 80,
"customer_dob": "1984-07-07"
} '), '$.customer_DNI'),
json_extract(json('{
"customer_name": "Lois",
"customer_surname": "Stout",
"customer_DNI": 47730534,
"branch_id": 80,
"customer_dob": "1984-07-07"
} '), '$.customer_dob'),
json_extract(json('{
"customer_name": "Lois",
"customer_surname": "Stout",
"customer_DNI": 47730534,
"branch_id": 80,
"customer_dob": "1984-07-07"
} '), '$.branch_id')

/* Para comprobar la operación selecciono todos los datos de la tabla */

SELECT * FROM cliente_backup;

/* Y una vez finalizado, elimino la tabla */

DROP TABLE cliente_backup;


/* En adición, para comprobar que mis nuevos datos son almacenados al final de la tabla según el orden de la PK 
(AUTOINCREMENT), puedo sumarle los registros de la tabla original ANTES de incorporar mi prueba y posteriormente 
realizar una nueva consulta: */

SELECT * FROM cliente_backup
ORDER BY customer_id DESC
LIMIT 5;
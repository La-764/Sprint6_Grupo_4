-- PROBLEMATICA 2 - #5

/* Consultar sobre cuál es el tipo de préstamo de mayor importe */

/* Entendiendo que el objetivo de la consigna es mostrar qué tipo de préstamo es de mayor importe respecto 
a los otros tipos, teniendo en cuenta los valores incluidos en los registros como muestras representativas 
de la totalidad del importe de un determinado tipo de préstamo: */

SELECT loan_type, avg(loan_total) as total
FROM prestamo
GROUP BY loan_type
ORDER BY total DESC LIMIT 1;

/* Por otro lado, suponiendo que la idea es indicar de qué tipo de préstamo es el de mayor importe registrado 
en la tabla "prestamo" de la base de datos: */

SELECT loan_type, max(loan_total) as total
FROM prestamo
GROUP BY loan_type
ORDER BY total DESC LIMIT 1;

/* Y si consultamos por el tipo de préstamo cuyo importe total (la suma de sus préstamos dados) es mayor respecto 
a los otros tipos de préstamo: */

SELECT loan_type, sum(loan_total) as total
FROM prestamo
GROUP BY loan_type
ORDER BY total DESC LIMIT 1;
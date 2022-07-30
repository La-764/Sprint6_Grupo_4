-- Listar la cantidad de clientes por nombre de sucursal ordenando de mayor a menor
SELECT s.branch_name as nombre_sucursal, count(c.customer_id) as cantidad_clientes
FROM cliente as c
JOIN sucursal as s ON s.branch_id=c.branch_id 
GROUP BY s.branch_name
ORDER BY count(c.customer_id) DESC;
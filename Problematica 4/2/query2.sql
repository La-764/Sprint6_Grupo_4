--Obtener la cantidad de empleados por cliente por sucursal en un número real
SELECT CAST(count(e.employee_id) AS FLOAT) as cantidad_empleados, c.customer_id as cliente, s.branch_name as nombre_sucursal
FROM cliente as c
JOIN sucursal as s ON s.branch_id=c.branch_id 
JOIN empleado as e ON e.branch_id=s.branch_id 
group by c.customer_id, s.branch_name;
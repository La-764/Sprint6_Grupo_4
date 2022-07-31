--Obtener la cantidad de empleados por cliente por sucursal en un número real
create view clientes_sucursal as 
select  branch_id, count(customer_id) as total_clientes
from cliente
group by branch_id;
create view empleados_sucursal as 
select branch_id, count(employee_id) as total_empleados
from empleado
group by branch_id;

select s.branch_name as nombre_sucursal,  CAST(total_clientes as REAL) / total_empleados as empleados_por_cliente
FROM clientes_sucursal cs
join empleados_sucursal es on cs.branch_id = es.branch_id
JOIN sucursal as s ON s.branch_id=cs.branch_id 
group by s.branch_name;

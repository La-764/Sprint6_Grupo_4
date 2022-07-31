-- Obtener el promedio de créditos otorgado por sucursal
SELECT s.branch_name, avg(p.loan_total) as promedio_de_creditos
FROM sucursal as s
JOIN cliente as c on c.branch_id = s.branch_id
JOIN prestamo as p on p.customer_id = c.customer_id
group by (s.branch_name);
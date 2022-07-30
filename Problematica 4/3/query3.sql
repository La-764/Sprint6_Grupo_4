-- Obtener la cantidad de tarjetas de crédito por tipo por sucursal
SELECT s.branch_name, count(cards.tipo_clienteId) as nro_tarjetas
FROM sucursal as s
JOIN cliente  as c ON s.branch_id = c.branch_id
JOIN cards on c.customer_id = cards.customer_id
group by s.branch_name;

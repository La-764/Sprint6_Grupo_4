-- Mediante índices mejorar la performance la búsqueda de clientes por DNI
CREATE INDEX IF NOT EXISTS index_dni ON cliente (customer_DNI);
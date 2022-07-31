-- Crear la tabla “movimientos” con los campos de identificación del
-- movimiento, número de cuenta, monto, tipo de operación y hora
CREATE TABLE movimientos(
	move_id INTEGER PRIMARY KEY,
	account_id INTEGER,
	monto INTEGER,
	tipo_operacion TEXT,
	hora datetime,
	FOREIGN KEY (account_id) REFERENCES cuenta(account_id)
);
-- Mediante el uso de transacciones, hacer una transferencia de 1000$
-- desde la cuenta 200 a la cuenta 400
-- o Registrar el movimiento en la tabla movimientos
-- o En caso de no poder realizar la operación de forma completa, realizar
-- un ROLLBACK

BEGIN TRANSACTION;
 UPDATE cuenta set balance = balance - 1000
 WHERE account_id = 200;
 UPDATE cuenta set balance = balance + 1000
 WHERE account_id = 400;
 INSERT INTO movimientos(
	account_id, monto, tipo_operacion, hora
 )
 VALUES(200, -1000, "transferencia", datetime("now")), (400, 1000, "transferencia", datetime("now"))
 ROLLBACK;

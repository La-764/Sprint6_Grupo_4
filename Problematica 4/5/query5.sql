-- La información de las cuentas resulta critica para la compañía, por eso es
-- necesario crear una tabla denominada “auditoria_cuenta” para guardar los
-- datos movimientos, con los siguientes campos: old_id, new_id, old_balance,
-- new_balance, old_iban, new_iban, old_type, new_type, user_action,
-- created_at

CREATE TABLE auditoria_cuenta(
	audit_id INTEGER PRIMARY KEY,
	old_id INTEGER,
	new_id INTEGER,
	old_balance TEXT,
	new_balance TEXT,
	old_iban TEXT,
	new_iban TEXT,
	old_type TEXT,
	new_type TEXT,
	user_action TEXT,
	created_at datetime
);
-- o Crear un trigger que después de actualizar en la tabla cuentas los
-- campos balance, IBAN o tipo de cuenta registre en la tabla auditoria

ALTER TABLE cuenta add column account_type;
UPDATE cuenta as a SET
	account_type = (SELECT abs(random() % 3)+1 FROM cuenta b where a.account_id = b.account_id);
CREATE TRIGGER IF NOT EXISTS trigger_auditoria AFTER UPDATE on cuenta
BEGIN
	INSERT INTO auditoria_cuenta(
	old_id, new_id, old_balance, new_balance, old_iban, new_iban, old_type, new_type, user_action, created_at
	)
	VALUES
	(
	old.account_id, new.account_id, old.balance, new.balance, old.iban, new.iban, old.account_type, new.account_type, "UPDATE", datetime("now")
	);
END;


-- o Restar $100 a las cuentas 10,11,12,13,14 

UPDATE cuenta set balance = balance-100 where account_id in (10,11,12,13,14);
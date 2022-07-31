-- PROBLEMATICA 2 - #2.5

INSERT INTO cliente
SELECT json_extract(json('{
"customer_name": "Gabriel",
"customer_surname": "Harmon",
"customer_DNI": 57063950,
"branch_id": 27,
"customer_dob": "1976-04-01"
}
'), '$.customer_id'),
json_extract(json('{
"customer_name": "Gabriel",
"customer_surname": "Harmon",
"customer_DNI": 57063950,
"branch_id": 27,
"customer_dob": "1976-04-01"
}
'), '$.customer_name'),
json_extract(json('{
"customer_name": "Gabriel",
"customer_surname": "Harmon",
"customer_DNI": 57063950,
"branch_id": 27,
"customer_dob": "1976-04-01"
}
'), '$.customer_surname'),
json_extract(json('{
"customer_name": "Gabriel",
"customer_surname": "Harmon",
"customer_DNI": 57063950,
"branch_id": 27,
"customer_dob": "1976-04-01"
}
'), '$.customer_DNI'),
json_extract(json('{
"customer_name": "Gabriel",
"customer_surname": "Harmon",
"customer_DNI": 57063950,
"branch_id": 27,
"customer_dob": "1976-04-01"
}
'), '$.customer_dob'),
json_extract(json('{
"customer_name": "Gabriel",
"customer_surname": "Harmon",
"customer_DNI": 57063950,
"branch_id": 27,
"customer_dob": "1976-04-01"
}
'), '$.branch_id')
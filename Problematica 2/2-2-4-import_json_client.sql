-- PROBLEMATICA 2 - #2.4

INSERT INTO cliente
SELECT json_extract(json('{
"customer_name": "Jin",
"customer_surname": "Cooley",
"customer_DNI": 21207908,
"branch_id": 96,
"customer_dob": "1959-08-24"
}'), '$.customer_id'),
json_extract(json('{
"customer_name": "Jin",
"customer_surname": "Cooley",
"customer_DNI": 21207908,
"branch_id": 96,
"customer_dob": "1959-08-24"
}'), '$.customer_surname'),
json_extract(json('{
"customer_name": "Jin",
"customer_surname": "Cooley",
"customer_DNI": 21207908,
"branch_id": 96,
"customer_dob": "1959-08-24"
}'), '$.customer_name'),
json_extract(json('{
"customer_name": "Jin",
"customer_surname": "Cooley",
"customer_DNI": 21207908,
"branch_id": 96,
"customer_dob": "1959-08-24"
}'), '$.customer_DNI'),
json_extract(json('{
"customer_name": "Jin",
"customer_surname": "Cooley",
"customer_DNI": 21207908,
"branch_id": 96,
"customer_dob": "1959-08-24"
}'), '$.customer_dob'),
json_extract(json('{
"customer_name": "Jin",
"customer_surname": "Cooley",
"customer_DNI": 21207908,
"branch_id": 96,
"customer_dob": "1959-08-24"
}'), '$.branch_id')
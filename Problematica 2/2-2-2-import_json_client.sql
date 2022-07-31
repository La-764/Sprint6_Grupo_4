-- PROBLEMATICA 2 - #2.2

INSERT INTO cliente
SELECT json_extract(json('{
"customer_name": "Hall",
"customer_surname": "Mcconnell",
"customer_DNI": 52055464,
"branch_id": 45,
"customer_dob": "1968-04-30"
}'), '$.customer_id'),
json_extract(json('{
"customer_name": "Hall",
"customer_surname": "Mcconnell",
"customer_DNI": 52055464,
"branch_id": 45,
"customer_dob": "1968-04-30"
}'), '$.customer_name'),
json_extract(json('{
"customer_name": "Hall",
"customer_surname": "Mcconnell",
"customer_DNI": 52055464,
"branch_id": 45,
"customer_dob": "1968-04-30"
}'), '$.customer_surname'),
json_extract(json('{
"customer_name": "Hall",
"customer_surname": "Mcconnell",
"customer_DNI": 52055464,
"branch_id": 45,
"customer_dob": "1968-04-30"
}'), '$.customer_DNI'),
json_extract(json('{
"customer_name": "Hall",
"customer_surname": "Mcconnell",
"customer_DNI": 52055464,
"branch_id": 45,
"customer_dob": "1968-04-30"
}'), '$.customer_dob'),
json_extract(json('{
"customer_name": "Hall",
"customer_surname": "Mcconnell",
"customer_DNI": 52055464,
"branch_id": 45,
"customer_dob": "1968-04-30"
}'), '$.branch_id')
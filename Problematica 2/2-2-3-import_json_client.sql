-- PROBLEMATICA 2 - #2.3

INSERT INTO cliente
SELECT json_extract(json('{
"customer_name": "Hilel",
"customer_surname": "Mclean",
"customer_DNI": 43625213,
"branch_id": 77,
"customer_dob": "1993-03-28"
}'), '$.customer_id'),
json_extract(json('{
"customer_name": "Hilel",
"customer_surname": "Mclean",
"customer_DNI": 43625213,
"branch_id": 77,
"customer_dob": "1993-03-28"
}'), '$.customer_name'),
json_extract(json('{
"customer_name": "Hilel",
"customer_surname": "Mclean",
"customer_DNI": 43625213,
"branch_id": 77,
"customer_dob": "1993-03-28"
}'), '$.customer_surname'),
json_extract(json('{
"customer_name": "Hilel",
"customer_surname": "Mclean",
"customer_DNI": 43625213,
"branch_id": 77,
"customer_dob": "1993-03-28"
}'), '$.customer_DNI'),
json_extract(json('{
"customer_name": "Hilel",
"customer_surname": "Mclean",
"customer_DNI": 43625213,
"branch_id": 77,
"customer_dob": "1993-03-28"
}'), '$.customer_dob'),
json_extract(json('{
"customer_name": "Hilel",
"customer_surname": "Mclean",
"customer_DNI": 43625213,
"branch_id": 77,
"customer_dob": "1993-03-28"
}'), '$.branch_id')
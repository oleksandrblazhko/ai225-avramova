START TRANSACTION;

LOCK TABLE person IN SHARE MODE;

SELECT * FROM person WHERE p_id = 1;

UPDATE person SET name = 'Peter' WHERE p_id = 1;

SELECT * FROM person WHERE p_id = 1;

COMMIT;

START TRANSACTION;

LOCK TABLE person IN SHARE MODE;

SELECT * FROM person WHERE p_id = 1;

UPDATE person SET name = 'Adele' WHERE p_id = 1;

SELECT * FROM person WHERE p_id = 1;

COMMIT;


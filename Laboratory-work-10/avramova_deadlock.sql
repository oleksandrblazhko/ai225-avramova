
START TRANSACTION;

SELECT * FROM person WHERE p_id = 1 FOR UPDATE;

UPDATE person SET name = 'Peter' WHERE p_id = 1;

SELECT * FROM person WHERE p_id = 2 FOR UPDATE;

COMMIT;

START TRANSACTION;

SELECT * FROM person WHERE p_id = 2 FOR UPDATE;

UPDATE person SET name = 'Adele' WHERE p_id = 2;

SELECT * FROM person WHERE p_id = 1 FOR UPDATE;

COMMIT;


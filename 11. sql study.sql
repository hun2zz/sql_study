-- Æ®·£Àè¼Ç
CREATE TABLE student (
    id NUMBER PRIMARY KEY,
    name VARCHAR2(100),
    age NUMBER
);

INSERT INTO student VALUES (1, '±èÃ¶¼ö', 15);
INSERT INTO student VALUES (2, 'È«±æµ¿', 16);

SELECT * FROM student;

COMMIT;


INSERT INTO student VALUES (3, 'µµ¿ì³Ê', 12);

ROLLBACK;

DELETE FROM student;

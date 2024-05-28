
// Q1. COMMIT, ROLLBACK
INSERT INTO EMP VALUES (9999,'NICE','SALESMAN', null ,to_date('24-5-2024', 'dd-mm-yyyy'),1250, 500, 30);
SELECT * FROM EMP;

COMMIT;
SELECT * FROM EMP;

UPDATE EMP SET EMPNO = 9000 WHERE EMPNO = 9999;
SELECT * FROM EMP;

ROLLBACK;
SELECT * FROM EMP;

DELETE FROM EMP WHERE EMPNO = 9999;




// Q2. SAVEPOINT
INSERT INTO EMP VALUES (9999,'NICE','SALESMAN', null ,to_date('24-5-2024', 'dd-mm-yyyy'),1250, 500, 30);
SELECT * FROM EMP;

SAVEPOINT A;
UPDATE EMP SET EMPNO = 9000 WHERE EMPNO = 9999;
SELECT * FROM EMP;

SAVEPOINT B;
UPDATE EMP SET EMPNO = 8000 WHERE EMPNO = 9000;
SELECT * FROM EMP;

ROLLBACK TO B;
SELECT * FROM EMP;

ROLLBACK TO A;
SELECT * FROM EMP;

COMMIT; 
SELECT * FROM EMP;

DELETE FROM EMP WHERE EMPNO = 9999;


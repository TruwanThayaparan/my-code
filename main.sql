DROP TABLE iF EXISTS Cars;
CREATE TABLE Cars(ID INT, CarName TEXT, Price INT, SalesID INT);

INSERT INTO CARS VALUES(1, 'Audi', 52642, 1);
INSERT INTO CARS VALUES(2, 'Mercedes', 57127, 2);
INSERT INTO CARS VALUES(3, 'Ford', 2500, 3);
INSERT INTO CARS VALUES(4, 'Ford', 3700, 4);
INSERT INTO CARS VALUES(5, 'BMW', 20000, 4);
INSERT INTO CARS VALUES(6, 'Honda', 3000, 3);
INSERT INTO CARS VALUES(7, 'Ford', 15000, 1);

SELECT * FROM Cars;

UPDATE Cars
SET CarName = 'Jaguar', price = 60000 
WHERE ID = 7;

SELECT * FROM Cars;

DELETE FROM Cars 
WHERE ID = 4;

SELECT * FROM Cars;

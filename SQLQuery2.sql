CREATE DATABASE Market;
USE Market
CREATE TABLE Products 
(
  Id INT,
  Name NVARCHAR(30),
  Price DECIMAL (10,2)
)
ALTER TABLE Products 
ADD BrandName NVARCHAR(25)
INSERT INTO Products
VALUES
(1,'Coca-Cola 2L',2,'Coca-Cola'),
(2,'Pendir 2Kq',13,'PAL'),
(3,'Cips',4.6,'Doritos'),
(4,'Tursu',6,'Bizim Aile'),
(5,'Caster Compact',5,'Sobranie'),
(6,'Ariel 2Kq',24,'Ariel'),
(7,'Sokalad',8,'Ulduz'),
(8,'Kolbasa',30,'Kral'),
(9,'Kere Yagi',20,'Golden Crown'),
(10,'Tualet Kagizi',4,'Selpak'),
(11,'Duyu',3,'Bismak'),
(12,'',2,'Coca-Cola'),
(13,'Vafli',2,'Cudo Vkusa'),
(14,'Hava Teravetlendirici',5,'Airwick'),
(15,'Cay',20,'Beta')
SELECT * FROM Products
WHERE Price < (SELECT AVG(Price) FROM Products)
SELECT * FROM Products
WHERE Price>10
SELECT * FROM Products WHERE LEN(BrandName)>5
SELECT * FROM Products WHERE BrandName LIKE '%a%'
ALTER TABLE Products 
ALTER COLUMN BrandName NVARCHAR(25) NOT NULL
ALTER TABLE Products 
ADD CONSTRAINT CHK_BrandName CHECK (LEN(BrandName) >= 2)
UPDATE Products 
SET BrandName = 'NA' 
WHERE LEN(BrandName) < 2
ALTER TABLE Products 
ADD CONSTRAINT CHK_BrandName CHECK (LEN(BrandName) >= 2)

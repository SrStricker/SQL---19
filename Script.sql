SELECT *
FROM Customer

--Projeção

-- Limite
SELECT *
FROM Customer
LIMIT 10;

-- contador
SELECT COUNT(*)
FROM Customer;


SELECT 
   FirstName,
   LastName,
   City
FROM Customer
LIMIT 10

-- ORDENAÇÃO DOS DADOS
SELECT 
   FirstName,
   LastName,
   City
FROM Customer
ORDER BY FirstName 

--ORDENAÇÃO DOS DADOS DECRESCENTE
SELECT 
   FirstName,
   LastName,
   City
FROM Customer
ORDER BY FirstName DESC

--APELIDOS, ALIAS
SELECT 
    FirstName as "Nome",
    LastName as "Sobrenome",
    City as "Cidade do cliente"
FROM Customer
ORDER BY 3 DESC 

--seleção, filtro
SELECT *
FROM Album
WHERE Title = "Big Ones"

--consulta de string devem respeitar maiusculas e minusculas (case sensitive)
SELECT *
FROM Album
WHERE ArtistId  = 10

--selecionando valores nulos e nao nulos
SELECT *
FROM Album
WHERE Column1 NOTNULL 

SELECT *
FROM Album
WHERE Column1 is NULL 

--filtros com valores lógicos
SELECT *
FROM Album
WHERE AlbumId >= 100

SELECT *
FROM Album
WHERE AlbumId
  BETWEEN 10 and 30
  
SELECT *
FROM Album
WHERE AlbumId >= 100
  AND ArtistId = 22
  
 -- utiizar ' _ ' para achar nomes separados

 SELECT *
FROM Artist
WHERE Name like "AC_DC"

--manipulação de dados

SELECT *
FROM Genre
LIMIT 10

SELECT *
FROM Genre
WHERE name like "MPB"

INSERT INTO Genre (GenreId, Name)
VALUES (NULL, "MPB")

--ID 26

SELECT *
FROM Artist
WHERE name like "TOQUINHO"

INSERT INTO Artist (ArtistId, Name)
VALUES (NULL,"TOQUINHO")

-- ID 276

SELECT *
FROM Track

INSERT INTO Track
VALUES
(NULL,"Aquarela",NULL,1,26,"Toquinho",250000,8000000,599),
(NULL,"Samda da benção",NULL,1,26,"Toquinho",2500000,8000000,599)

SELECT *
FROM Track 
WHERE GenreId  = 26

CREATE TABLE EBAC(
 AlunoId INTEGER PRIMARY KEY AUTOINCREMENT,
 Nome VARCHAR(30),
 Curso Varchar(20),
 Nota INTEGER(2)
) 

INSERT INTO EBAC (Nome, Curso, Nota) 
VALUES
("Fábio", "QA", 5), 
("José Pedro", "Dev", 8), 
("Mariana", "QA", 9), 
("Aline", "QA", 6), 
("Alice", "SQL", 7), 
("João", "Dev", 5), 
("Alan", "QA", 8), 
("Wesley", "SQL", 4), 
("Pedro", "UX", 3); 

SELECT *
FROM EBAC 

SELECT *
FROM EBAC
ORDER BY Nome ASC

SELECT *
FROM EBAC
WHERE Curso ="QA"

SELECT *
FROM EBAC
WHERE Nota >= 6

SELECT *
FROM EBAC
WHERE Nome LIKE "%Pedro%"
CREATE TABLE Personas_Ayun
(
    Id INT PRIMARY KEY IDENTITY (1,1),
    LU INT,
    Nombre NVARCHAR(50) DEFAULT 'NN',
    NOTA DECIMAL(18,2) DEFAULT 0,
)
INSERT INTO Personas_Ayun(LU,Nombre,NOTA)
VALUES
(2342,'Anibal',45.00),
(2343,'Camila',85.50),
(2333,'Cecilia',60.60),
(2337,'Nelson',75.70),
(2589,'José',85.90),
(2902,'Jose Manuel',85.2)
SELECT * from Personas_Ayun


DECLARE @promedio DECIMAL(18,2)=0.0;

SELECT @promedio= AVG (NOTA) FROM  Personas_Ayun

SELECT * from Personas_Ayun where NOTA>=@promedio ORDER by LU DESC
SELECT * FROM Personas_Ayun
WHERE Nombre COLLATE Latin1_General_CI_AI like '%jose%'

SELECT top 1*from Personas_Ayun where NOTA>= @promedio ORDER by NOTA DESC 
SELECT top 1*from Personas_Ayun where NOTA>= @promedio ORDER by NOTA ASC






--DELETE FROM Personas_Ayun WHERE Id=3;
--TRUNCATE TABLE Personas_Ayun;(reseteo de tablas)
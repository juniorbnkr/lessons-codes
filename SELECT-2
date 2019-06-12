--Funções de agregação

SELECT SUM(projetor) FROM salas;
SELECT AVG(peso) FROM alunos;

SELECT AVG(peso),MAX(data_nascimento), COUNT(ra)  FROM alunos;

SELECT "M",AVG(peso),MAX(data_nascimento), COUNT(ra) FROM alunos WHERE sexo = 'M'
UNION
SELECT "F",AVG(peso),MAX(data_nascimento), COUNT(ra)  FROM  alunos WHERE sexo = 'F';

SELECT CONCAT(nome," ",sobrenome), REPLACE(nome, "a","x")
FROM alunos


SELECT "Esse é um select simples, sem usar uma tabela",
       CONCAT("esse é outro campo de um select simples, essa query foi executada no dia ",CURDATE());

SELECT MAX(data_nascimento),
       DATE_ADD(MAX(data_nascimento), INTERVAL 10 year),
       datediff(DATE_ADD(MAX(data_nascimento), INTERVAL 10 year), MAX(data_nascimento))
from alunos;

select CURDATE(),
       CURTIME(),
       CONCAT(CURDATE(),CURTIME()),
       NOW();

SELECT nome, data_nascimento, DATE_FORMAT(data_nascimento,"%d/%m/%y")
from alunos;
-- documentação com todos os formatos: https://www.w3schools.com/sql/func_mysql_date_format.asp

SELECT nome, data_nascimento,
       DATE_FORMAT(data_nascimento,"%d/%m/%y"),
       day(data_nascimento),
       MONTH(data_nascimento),
       dayname(data_nascimento)
from alunos;


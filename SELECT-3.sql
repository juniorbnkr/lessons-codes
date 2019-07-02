SELECT nacionalidade,AVG(peso) FROM alunos
GROUP BY nacionalidade;

SELECT predio,COUNT(id),SUM(projetor) FROM salas
GROUP BY predio;

-- Diferença WHERE e HAVING:
-- WHERE: filtra antes de agregar, não pode usar função de agregação
-- HAVING: filtra depois de agregar, só pode usar função de agregação

SELECT nacionalidade,AVG(peso),MAX(idade) FROM alunos
WHERE sexo = 'M'
GROUP BY nacionalidade
HAVING MAX(idade) > 22;

--SUBSELECT
SELECT nacionalidade,AVG(peso),MAX(idade) FROM alunos
WHERE peso > (SELECT AVG(peso) FROM alunos)
GROUP BY nacionalidade;

-- alter table
ALTER TABLE `table_name`
ADD/DROP COLUMN `column_name` [`data_type`];

ALTER TABLE `alunos`
ADD COLUMN `sala` INT;

-- UPDATE
UPDATE `table_name` 
SET `column_name` = `new_value' 
[WHERE condition];

UPDATE `alunos`
SET sala = 7;

UPDATE `alunos`
SET sala = 6
WHERE nacionalidade = 'UK'
;
WHERE condition];

UPDATE `alunos`
SET sala = 7;

UPDATE `alunos`
SET sala = 6
WHERE nacionalidade = 'UK'
;


UPDATE `alunos`
SET sala = 1
where id = 22
;
UPDATE `alunos`
SET sala = 4
where id = 18
;
UPDATE `alunos`
SET sala = 15
where id = 28
;
UPDATE `alunos`
SET sala = NULL
where id = 4
;

SELECT * FROM alunos a
LEFT JOIN salas s ON s.id = a.sala;

-- Lógica dos joins: https://www.dofactory.com/Images/sql-joins.png


SELECT a.nome,a.ra,s.numero FROM alunos a
INNER JOIN salas s ON s.id = a.sala;

SELECT s.numero,COUNT(a.id) FROM alunos a
INNER JOIN salas s ON s.id = a.sala
GROUP BY s.numero;

SELECT s.numero,VARIANCE(a.idade) FROM alunos a
INNER JOIN salas s ON s.id = a.sala
GROUP BY s.numero;



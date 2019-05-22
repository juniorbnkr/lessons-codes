INSERT [IGNORE] INTO universidade.alunos
(nome, sobrenome, cpf, idade, data_nascimento,sexo,ra,peso)
VALUES
('Luiz','Vieira do Nascimento','123.456.789-00',24,'1995-01-31','M',00136046,7.30),
('Paulo','Henrique','456.789.123-00',22,'1997-11-01','M',00136046,7.30),
('Fernanda','Castro Silva','123.456.789-00',24,'1995-01-31','F',00136046,7.30),
;


UPDATE universidade.alunos
SET cpf = 123.321.312-11, idade = 20
WHERE id = 1; 

-- Usar sempre a cláusula WHERE no DELETE, usar sem o where apaga todas as linhas da tabela, como no truncate.
DELETE FROM universidade.alunos WHERE id = 2; 

TRUNCATE universidade.alunos;

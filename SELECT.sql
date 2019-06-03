USE universidade;

select * from alunos
order by nome;


select * from universidade.alunos
order by sobrenome desc;

select * from alunos
order by sexo [ordem],nome [ordem];

SELECT * FROM alunos
WHERE idade > 23;

SELECT * FROM alunos
WHERE sexo = 'M'
ORDER BY data_nascimento desc;

SELECT * FROM alunos
WHERE sexo = 'M'
AND idade > 20
ORDER BY data_nascimento desc;

-- OPERADORES DE COMPARAÇÃO:
-- = igual à
-- <> ou != diferente
-- > Maior que
-- < menor que
-- <= menor ou igual a que
-- >= maior ou igual a que
-- IS NULL é nulo
-- IS NOT NULL não é nulo
-- IN(valor1, valor2...) está em algum dos valores
-- NOT IN(valor1, valor2...) não está em nenhum dos valores
-- BETWEEN valor_minino AND valor_maximo, o valor esta dentro do intervalo (valido para datas, inteiros e decimais)
-- NOT BETWEEN valor_minino AND valor_maximo, o valor não esta dentro do intervalo (valido para datas, inteiros e decimais)
-- LIKE('%valor%') a palavra/texto contem o valor

SELECT * FROM alunos
WHERE sexo = 'M'
AND idade <= 24
AND nacionalidade IN('BR','FR','EU')
AND data_nascimento BETWEEN '1995-01-01' AND '1998-01-01'
AND nome LIKE('%a%')
ORDER BY data_nascimento desc;


SELECT * FROM alunos
WHERE sexo = 'M'
OR nome = 'Barbara'
ORDER BY data_nascimento desc;


SELECT * FROM alunos
WHERE (sexo = 'F')
OR (sexo = M AND idade > 23)
ORDER BY data_nascimento desc;

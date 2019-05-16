SHOW DATABASES; -- Mostra todas as bases de dados, inclusive as bases do sistemas que o banco usa para gerenciar o SGBD.


CREATE DATABASE nome_da_base_de_dados; --nome da base não pode conter números, espaços, caracteres especiais (exceto_) e acentos.

CREATE DATABASE IF NOT EXISTS nome_da_base_de_dados; -- cria apenas se não existir nenhum base com esse nome.

DROP DATABASE [IF EXISTS] nome_da_base_de_dados; -- Apaga [apenas se  existir] uma base com esse nome.


-- CHARACTER e COLLATE são usados para definir a codificação da base, usar sempre utf8 para bancos que terão informações com acentos.
CREATE DATABASE IF NOT EXISTS nome_da_base_de_dados 
CHARACTER SET utf8 
COLLATE utf8_general_cli; 


CREATE  TABLE [IF NOT EXISTS] nome_da_base_de_dados.nome_da_tabela 
(nome_do_campo1 tipo_do campo [parametros opcionais], --usar virgula para separar os campos, os nomes dos campos podem conter números
nome_do_campo2 tipo_do campo [parametros opcionais] -- campos funcionam como colunas.
)
ENGINE = InnoDB -- o engine InnoDB deve ser usado como padrão, pois ele permite algumas funções adicionais que não existem nos outros.
; 

--TIPOS DE CAMPO:
-- Númericos (inteiro INT, Decimal FLOAT, Complexos BIG etc.)
-- Texto (com tamanho delimitado VARCHAR(x), grandes TEXT, enormes BIGTEXT)
-- data (data DATE, hora TIME, data com hora DATETIME, tipos de datas específicos TIMESTAMP etc)
-- Representação espacial (latitude e longitude LATLONG, vetores VERT)
-- outros objetos (BLOB JSON ENUM)
-- documentação completa sobre tipos de campo: https://dev.mysql.com/doc/refman/8.0/en/data-types.html


-- PARAMETROS OPCIONAIS
-- NOT NULL: impede que uma linha seja inserida se aquele campos estiver vazio
-- DEFAULT valor: se o campo estiver em branco ao inserir, preenche automaticamente com o valor padrão
-- AUTO_INCREMENT (apenas para INT): se o valor estiver em branco ao inserir, preenche com o próximo número da sequência.


-- PRIMARY KEY: Define um campo primário para ser a chave primária, que não pode ser duplicada.
-- UNIQUE: Impede linhas com campos duplicados.


CREATE DATABASE IF NOT EXISTS pucsp
CHARACTER SET utf8
COLLATE utf8_general_cli;


CREATE TABLE pucsp.alunos (
    id INT NOT NULL AUTO_INCREMENT,
    nome TINYTEXT NOT NULL,
    sobrenome TINYTEXT,
    cpf VARCHAR(14),
    idade INT(3),
    data_nascimento VARCHAR(10),
    sexo ENUM("M","F"),
    ra INT(6),
    peso FLOAT(3,2),
    nacionalidade VARCHAR(2),

    UNIQUE (ra),
    UNIQUE (cpf),
    PRIMARY KEY (id)
)
ENGINE = InnoDB;
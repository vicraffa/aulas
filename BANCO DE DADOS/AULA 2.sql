-- CREATE DATABASE sprint1;

USE sprint1;

SHOW TABLES;

CREATE TABLE aluno(
ra CHAR(8) PRIMARY KEY,
nome VARCHAR(50) NOT NULL,
email VARCHAR(60) UNIQUE,
dtNasc DATE);

SHOW TABLES;

INSERT INTO aluno VALUES
('01252888', 'Lesley de Oliveira', 'lesley.oliveira@gmail.com', '2004-06-21');

SELECT * FROM aluno;

INSERT INTO aluno (ra, nome) VALUES
('01252887', 'Pedro Henrique');

SELECT * FROM aluno;

UPDATE aluno SET email = 'pedro.henrique@gmail.com'
WHERE ra = '01252887';

SELECT * FROM aluno;

INSERT INTO aluno(ra, nome) VALUES
('01252777', 'Rafael Calderon');

SELECT * FROM aluno;

-- EXLUIR UMA LINHA INTEIRA (TUPLA INTEIRA)
DELETE FROM aluno
WHERE ra = '01252777';

SELECT * FROM aluno;

-- RENOMEAR COLUNA
ALTER TABLE aluno RENAME COLUMN dtNasc TO dataNasc;

DESCRIBE aluno;

-- MODIFICAR A COLUNA
ALTER TABLE aluno MODIFY COLUMN email VARCHAR(78);

DESC aluno;

-- EXCLUIR UM CAMPO/COLUNA
ALTER TABLE aluno DROP COLUMN dataNasc;

DESC aluno;

-- ADICIONAR UMA COLUNA
ALTER TABLE aluno ADD COLUMN dataNasc DATE;

DESC aluno;

ALTER TABLE aluno ADD COLUMN genero CHAR(1);

SELECT * FROM aluno;

-- ADICIONANDO UMA CONFIGURAÇÃO/REGRA A UMA COLUNA CONSTRAINT
ALTER TABLE aluno ADD CONSTRAINT chkGenero
CHECK(genero = 'f' OR genero = 'm' OR genero = 'n');

-- ALTER TABLE aluno ADD CONSTRAINT chkGenero
-- CHECK(genero IN('f', 'm', 'n'));

UPDATE aluno SET genero = 'm'
WHERE ra = '01252887';

SELECT * FROM aluno;

UPDATE aluno SET genero = 'f'
WHERE ra = '01252888';

SELECT * FROM aluno;

INSERT INTO aluno(ra, nome, genero) VALUES
('01252886', 'Samara', 'f'),
('01252885','Ronijamily', 'f');

SELECT * FROM aluno
WHERE nome IN('Samara', 'Ronijamily');

CREATE TABLE empresa(
idEmpresa INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(50),
responsavel VARCHAR(50)
)AUTO_INCREMENT = 100;

INSERT INTO empresa VALUES
(default, 'Accenture', 'William'),
(null, 'Stefanini', 'Ariel');

SELECT * FROM empresa;

-- limpar os dados da tabela
TRUNCATE TABLE empresa;
SELECT * FROM empresa;
ALTER TABLE empresa AUTO_INCREMENT = 100;
-- AO TRUNCAR, TODAS AS CONSTRAINTS SÃO APAGADAS


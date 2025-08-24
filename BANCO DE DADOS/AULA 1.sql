-- SALVES 

/*  
Iremos trablhar com;
Banco de Dados Relacional: 
Tabelas que se relacionam entre elas.
Toda tabela é composta por colunas e linhas. 
PK = PRIMARY KEY, IDENTIFICADOR DA LINHA (id)
*/  

-- CREATE DATABASE sprint1;

USE sprint1;

CREATE TABLE empresa(
idEmpresa INT PRIMARY KEY,
nome VARCHAR(40),
responsavel VARCHAR(40)
);

DESCRIBE empresa;
DESC empresa;

INSERT INTO empresa VALUES
(1, 'STEFANINI', 'Ariel');

SELECT idEmpresa, nome, responsavel FROM empresa;

INSERT INTO empresa VALUES
(2, 'Minsait', 'Yasmin'),
(3, 'Accenture', 'Willian');

SELECT * FROM empresa;

-- Stefanini
SELECT * FROM empresa
WHERE idEmpresa = 1;
SELECT * FROM empresa
WHERE nome = 'STEFANINI';

-- Minsait
SELECT * FROM empresa
WHERE idEmpresa = 2;
SELECT * FROM empresa
WHERE nome = 'Minsait';

-- Accenture
SELECT * FROM empresa
WHERE idEmpresa = 3;
SELECT * FROM empresa
WHERE nome = 'Accenture';

-- Exibir empresa que comece com letra especifica.
SELECT * FROM empresa
WHERE nome LIKE 'S%';

SELECT * FROM empresa
WHERE nome LIKE 'M%';

SELECT * FROM empresa
WHERE nome LIKE 'A%';

-- Exibir empresa que termine com letra especifica.
SELECT * FROM empresa
WHERE nome LIKE '%i';

SELECT * FROM empresa
WHERE nome LIKE '%t';

SELECT * FROM empresa
WHERE nome LIKE '%e';

-- Exibir empresa que contém letra especifica
SELECT * FROM empresa
WHERE nome LIKE '%a%';

-- Exibir empresa com segunda letra com caracter especifico
SELECT * FROM empresa
WHERE nome LIKE '_t%';

-- Exibir empresa com penultima letra com caracter especifico
SELECT * FROM empresa
WHERE nome LIKE '%i_';

-- Exibir as empresas diferentes de uma especifica
SELECT * FROM empresa
WHERE nome != 'Accenture';
SELECT * FROM empresa
WHERE nome <> 'Accenture';

SELECT * FROM empresa
WHERE nome != 'Minsait';
SELECT * FROM empresa
WHERE nome <> 'Minsait';

SELECT * FROM empresa
WHERE nome != 'STEFANINI';
SELECT * FROM empresa
WHERE nome <> 'STEFANINI';

-- Exibir as empresas em ordem alfabética CRESCENTE
SELECT * FROM empresa ORDER BY nome;
-- Exibir as empresas em ordem alfabética DECRESCENTE 
SELECT * FROM empresa ORDER BY nome DESC;

-- EXCLUIR TABELA
-- DROP TABLE empresa;

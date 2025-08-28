-- COMENTÁRIO (CRIAR BANCO DE DADOS)
	CREATE DATABASE adsb;
    
-- TODO COMANDO MYSQL TERMINA COM ;

-- SELECIONAR BANCO DE DADOS
	USE adsb;
    
-- CRIAR TABELA ALUNO 
	CREATE TABLE aluno (
-- PK (PRIMARY KEY) 
	ra char(8) primary key,
	nome varchar(50),
	email varchar(25)
);

-- varchar = varia a quantidade de caracteres
-- char = não varia

-- DESCREVER OS CAMPOS DA TABELA
	DESCRIBE aluno;
	DESC aluno;
    
-- INSERIR DADOS NA TABELA
	INSERT INTO aluno VALUES
		('01242061', 'Felipe', 'felipe@sptech.school');
    
-- NOSSO PRIMEIRO SELECT
-- EXIBIR OS DADOS DA TABELA
	SELECT ra, nome, email FROM aluno;
	SELECT * FROM aluno;

-- INSERIR NOVOS DADOS NA TABELA
	INSERT INTO aluno VALUES
	('01242097', 'Guilherme', 'guilherme@sptech.school'),
	('01242128', 'Cainã', 'cainã@sptech.school');
    
-- EXIBIR OS NOVOS DADOS DA TABELA
	SELECT * FROM aluno;
    
-- EXIBIR APENAS O ALUNO CUJO NOME É FELIPE
SELECT * FROM aluno 
	WHERE nome = 'Felipe';
        
SELECT * FROM aluno 
	WHERE nome = 'Guilherme';
    
INSERT INTO aluno VALUES
		('01242068', 'Guilherme', 'null');
        
SELECT * FROM aluno
	WHERE nome = 'Guilherme';
    
SELECT ra, nome FROM aluno
	WHERE nome = 'Guilherme';
    
SELECT ra, nome FROM aluno
	WHERE nome = 'Guilherme' AND ra = '01242097';    

-- EXIBIR OS ALUNOS CUJO NOME TERMINAM COM E    
    
SELECT nome FROM aluno
	WHERE nome LIKE '%e';
    
-- EXIBIR OS ALUNOS CUJO NOME COMEÇAM COM F    
    
SELECT nome FROM aluno
	WHERE nome LIKE 'F%';
    
SELECT nome FROM aluno
	WHERE nome LIKE '%l%';
    
-- CUJO O NOME A SEGUNDA LETRA É E

SELECT nome FROM aluno
	WHERE nome LIKE '_e%';
    
-- ORDENAR POR NOME 

SELECT * FROM aluno ORDER BY nome;

SELECT * FROM aluno ORDER BY nome desc;
        
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
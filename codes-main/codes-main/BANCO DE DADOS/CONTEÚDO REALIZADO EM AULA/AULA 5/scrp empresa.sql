-- AULA 3 --
 CREATE DATABASE adsb;
 USE adsb;
 
 CREATE TABLE empresa(
 id int primary key auto_increment,
 nome varchar(45) NOT NULL,
 tipo varchar(50),
 constraint chkTipo CHECK(tipo in ('Matriz', 'Filial', 'Franquia'))
 );
 
 -- Para adicionar uma constrain depois da criação da tabela
	-- ALTER TABLE empresa ADD CONSTRAINT chkTipo
    -- CHECK(tipo in ('Matriz', 'Filial', 'Franquia'))
    
DESC empresa;

INSERT INTO empresa(nome) VALUE
('McDonald'),
('Bobs');

ALTER TABLE empresa ADD COLUMN dtCriada date;

UPDATE empresa 
SET dtCriada = '1920-01-01', tipo = 'Matriz'
WHERE id = 1;

SELECT * FROM empresa;

ALTER TABLE empresa MODIFY COLUMN tipo varchar(50) default 'Franquia';

INSERT INTO empresa(nome, dtCriada) VALUES
	('McDonald', '1977-02-28');

SELECT * FROM empresa;

ALTER TABLE empresa RENAME COLUMN id TO idEmpresa;

DELETE FROM empresa WHERE idEmpresa = 2;

-- DROP = tudo que for relacionado a tabela/campo
-- DELETE = tudo que for relacionado a dados, tupla
-- TRUNCATE = limpa os dados da tabela


-- DECIMAIS = 
	-- FLOAT - TOTAL 7 CARACTERES 1234567 OU 123,34567
	-- DOUBLE - TOTAL 15 CARACTERES 
	-- DECIMAL - TOTAL 32 CARACTERES
-- INTEIROS = INT


CREATE TABLE funcionario(
id int primary key auto_increment,
nome varchar(45) default 'Sem nome',
dtNasc date,
peso float,
altura float,
salario	decimal(10,2) -- 12345678,90
);

INSERT INTO funcionario VALUES
(default, 'Isabela', '2004-05-31', 50.3, 1.60, 1.99);

SELECT * FROM funcionario;

SELECT concat('O nome da funcionária é ', nome, ', a data de nascimento dela é ', dtNasc,
', ela pesa ', peso, ', sua altura é ', altura, ' e o seu salário é ', salario)
	FROM funcionario;

SELECT nome as 'Nome do funcionário', dtNasc as 'Data de nascimento' FROM funcionario;

SELECT concat('O nome da funcionária é ', nome, ', a data de nascimento dela é ', dtNasc,
', ela pesa ', peso, ', sua altura é ', altura, ' e o seu salário é ', salario) as Frase
	FROM funcionario;
    
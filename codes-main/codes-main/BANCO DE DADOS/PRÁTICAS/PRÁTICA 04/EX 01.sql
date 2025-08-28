CREATE DATABASE ex1;
USE ex1;

CREATE TABLE pessoa(
idPessoa INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45),
cpf VARCHAR(11)
);

INSERT INTO pessoa VALUES
(DEFAULT, 'victor', '11111111111'),
(DEFAULT, 'marcelo', '22222222222'),
(DEFAULT, 'thiago', '33333333333'),
(DEFAULT, 'isabela', '44444444444'),
(DEFAULT, 'vivian', '55555555555');

CREATE TABLE reserva(
idReserva INT PRIMARY KEY AUTO_INCREMENT,
dtReserva DATETIME DEFAULT CURRENT_TIMESTAMP,
dtRetirada DATETIME DEFAULT CURRENT_TIMESTAMP,
dtDevolucao DATETIME DEFAULT CURRENT_TIMESTAMP,
fkPessoa INT
);

ALTER TABLE reserva ADD CONSTRAINT fkReservaPessoa FOREIGN KEY (fkPessoa) REFERENCES pessoa(idPessoa);

SELECT * FROM pessoa;

INSERT INTO reserva VALUES
(DEFAULT, DEFAULT, DEFAULT, DEFAULT, 1),
(DEFAULT, DEFAULT, DEFAULT, DEFAULT, 2),
(DEFAULT, DEFAULT, DEFAULT, DEFAULT, 3),
(DEFAULT, DEFAULT, DEFAULT, DEFAULT, 4),
(DEFAULT, DEFAULT, DEFAULT, DEFAULT, 5);

SELECT * FROM pessoa;
SELECT * FROM reserva;

SELECT nome, cpf, dtReserva, dtRetirada, dtDevolucao 
FROM pessoa JOIN reserva 
ON idPessoa = fkPessoa;

SELECT p.nome AS 'Nome do Indivíduo', 
p.cpf AS 'CPF do Indivíduo', 
r.dtReserva AS 'Data de Reserva', 
r.dtRetirada AS 'Data de Retirada', 
r.dtDevolucao AS 'Data de Devolução'
FROM pessoa AS p JOIN reserva AS r 
ON idPessoa = fkPessoa;

SELECT CASE 
	WHEN nome = 'marcelo' 
    THEN 'Não pago.'
    ELSE 'Está pago' 
    END as 'Status do Pagamento' 
    FROM pessoa;
    
UPDATE pessoa
SET cpf = null
WHERE idPessoa = 3;

UPDATE pessoa
SET cpf = null
WHERE idPessoa = 4;
    
SELECT p.nome AS 'Nome do Indivíduo', 
		ifnull(p.cpf, 'Não foi registrado o CPF') AS 'CPF do Indivíduo', 
		r.dtReserva AS 'Data de Reserva', 
		r.dtRetirada AS 'Data de Retirada', 
		r.dtDevolucao AS 'Data de Devolução'
FROM pessoa AS p JOIN reserva AS r 
ON idPessoa = fkPessoa;

-- Finalizando ex 01

-- Começando ex 02

CREATE TABLE pessoa1(
idPessoa1 INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45),
dtNascimento DATE
);

DESCRIBE pessoa1;

INSERT INTO pessoa1 (nome, dtNascimento) VALUES
('victor', '2004-11-24'),
('rafael', '2004-11-23'),
('lourenco', '2004-11-22'),
('oliveira', '2004-11-21'),
('calado', '2004-11-20');

SELECT * FROM pessoa1;

CREATE TABLE pessoa2(
idPessoa2 INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45),
dtNascimento DATE,
fkPessoa1 INT,
CONSTRAINT fkPessoa1Pessoa2 FOREIGN KEY(fkPessoa1) REFERENCES pessoa1(idPessoa1)
);

DESCRIBE pessoa2;

INSERT INTO pessoa2 (nome, dtNascimento, fkPessoa1) VALUES
('natalia', '2004-11-29', 4),
('mathias', '2004-11-28', 2),
('moises', '2004-11-27', 1),
('caina', '2004-11-26', 5),
('gustavo', '2004-11-25', 3);

SELECT * FROM pessoa2;

SELECT p1.nome, p1.dtNascimento, p2.nome, p2.dtNascimento
FROM pessoa1 AS p1 JOIN pessoa2 AS p2
ON idPessoa1 = fkPessoa1; 

SELECT p1.nome AS 'Nome do Indivíduo 1', 
p1.dtNascimento AS 'Data de Nascimento Pessoa 1', 
p2.nome AS 'Nome do Indivíduo 1', 
p2.dtNascimento AS 'Data de Nascimento Pessoa 2'
FROM pessoa1 AS p1 JOIN pessoa2 AS p2 
ON idPessoa1 = fkPessoa1;

SELECT CASE 
	WHEN nome = 'victor' 
    THEN 'Não conseguiu realizar corretamente.'
    ELSE 'Conseguiu realizar corretamente.' 
    END as 'Status da Atividade' 
    FROM pessoa1;

SELECT * FROM pessoa1;

UPDATE pessoa1
SET dtNascimento = null
WHERE idPessoa1 = 3;

SELECT p1.nome AS 'Nome do Indivíduo 1', 
		ifnull(p1.dtNascimento, 'Não foi inserido a data de nascimento.') AS 'Data de Nascimento', 
		p2.nome AS 'Nome do Indivíduo 2', 
		p2.dtNascimento AS 'Data de Nascimento'
FROM pessoa1 AS p1 JOIN pessoa2 AS p2 
ON idPessoa1 = fkPessoa1;











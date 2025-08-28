CREATE DATABASE sprint2b;
USE sprint2b;

-- Primeiro crie tabela a tabela que não tem o fk
CREATE TABLE Empresa(
idEmpresa INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45),
responsavel VARCHAR(45)
) auto_increment = 100;

DESCRIBE Empresa;

INSERT INTO Empresa (nome) VALUES
('C6 Bank'),
('Stefanini');

SELECT * FROM Empresa;

-- Criando tabela aluno com a fk 
CREATE TABLE Aluno(
ra CHAR(8),
nome VARCHAR(45),
telefone CHAR(12),
fkEmpresa INT, -- Igual ao idEmpresa da tabela Empresa.
CONSTRAINT fkAlunoEmpresa FOREIGN KEY(fkEmpresa)
	REFERENCES Empresa(idEmpresa)
);

INSERT INTO Aluno (ra, nome, fkEmpresa)VALUES
('01242014', 'Rômulo', 100),
('01242017', 'Mathias', 101),
('01242050', 'Viviane', 100);

SELECT * FROM Aluno;

-- JOIN = inner join
-- Exibir o nome do aluno e sua respectiva empresa
-- Para utilizar o ON utilize o id e a foreign key
SELECT Aluno.nome, Empresa.nome FROM aluno JOIN empresa
ON idEmpresa = fkEmpresa;

SELECT Aluno.nome AS 'Nome do Aluno', Empresa.nome AS 'Nome da Empresa' 
FROM aluno JOIN empresa
ON idEmpresa = fkEmpresa;

SELECT a.nome AS 'Nome do Aluno', e.nome AS 'Nome da Empresa' 
FROM aluno AS a JOIN empresa AS e
ON idEmpresa = fkEmpresa;

SELECT a.nome AS 'Nome do Aluno', e.nome AS 'Nome da Empresa' 
FROM aluno AS a JOIN empresa AS e
ON idEmpresa = fkEmpresa
WHERE e.nome = 'C6 Bank';












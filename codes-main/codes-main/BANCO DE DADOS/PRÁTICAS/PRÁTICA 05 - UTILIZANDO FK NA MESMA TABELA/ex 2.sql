CREATE DATABASE listaex;
USE listaex;

CREATE TABLE farmacia(
idFarmacia INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45),
endereco VARCHAR(45) UNIQUE
);

ALTER TABLE farmacia MODIFY COLUMN endereco VARCHAR(45) NOT NULL;
ALTER TABLE farmacia MODIFY COLUMN nome VARCHAR(45) NOT NULL;

DESCRIBE farmacia;

INSERT INTO farmacia (nome, endereco) VALUES 
('Farmacia 1', 'Rua A, N23'),
('Farmacia 2', 'Rua B, N11'),
('Farmacia 3', 'Rua C, N768'),
('Farmacia 4', 'Rua D, N56'),
('Farmacia 5', 'Rua E, N98');

SELECT * FROM farmacia;

CREATE TABLE funcionarios(
idFuncionarios INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45),
fkFarmacia INT,
CONSTRAINT chFarmaciaFuncionario FOREIGN KEY (fkFarmacia) REFERENCES farmacia (idFarmacia)
);

INSERT INTO funcionarios (nome, fkFarmacia) VALUES
('João', 1),
('Ricardo', 1),
('Sandra', 2),
('Roberto', 1),
('Carlos', 3),
('Ferdinando', 4),
('Luke', 5);

SELECT * FROM funcionarios;

INSERT INTO funcionarios (nome)VALUES 
('Pe');

SELECT  *
FROM funcionarios AS fun
JOIN farmacia AS far
ON fun.fkFarmacia = far.idFarmacia;

SELECT  fun.nome,
		far.nome,
		far.endereco
FROM funcionarios AS fun
JOIN farmacia AS far
ON fun.fkFarmacia = far.idFarmacia;

SELECT CASE
	WHEN far.idFarmacia = 1 THEN 'Melhor farmacia'
    END AS 'Qualidade',
    ifnull(fun.fkFarmacia, 'Desempregado'),
    fun.nome,
    far.nome
    FROM funcionarios AS fun
    JOIN farmacia AS far
    ON fun.fkFarmacia = far.idFarmacia;

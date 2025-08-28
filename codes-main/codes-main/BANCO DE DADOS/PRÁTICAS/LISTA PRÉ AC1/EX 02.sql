CREATE DATABASE	olimpiadas;
USE olimpiadas;

CREATE TABLE esporte(
id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(40),
categoria VARCHAR(20),
num_jogadores INT,
estreia DATE,
pais_origem VARCHAR(30),
CONSTRAINT chkCategoria CHECK(categoria in('Individual', 'Coletivo'))
);

DESCRIBE esporte;

INSERT INTO esporte (nome, categoria, num_jogadores, estreia, pais_origem) VALUES
('Volei', 'Coletivo', 20, '1964-08-12', 'Estados Unidos'),
('Futebol', 'Coletivo', 24, '1900-08-14', 'Inglaterra'),
('Tênis de Mesa Single', 'Individual', 1, '1988-08-11', 'Inglaterra'),
('Ginástica Ritmica Single', 'Individual', 3, '1984-08-23', 'Rússia'),
('Salto com Vara', 'Individual', 1, '1896-08-31', 'Irlanda');

SELECT * FROM esporte;

ALTER TABLE esporte
ADD COLUMN popularidade DECIMAL (4,2);

ALTER TABLE esporte
ADD CONSTRAINT chkPopularidade 
CHECK(popularidade >= 0 AND popularidade <= 10);

DESCRIBE esporte;

SELECT * FROM esporte;

UPDATE esporte
SET popularidade = 9.97
WHERE id = 1;

UPDATE esporte
SET popularidade = 9.73
WHERE id = 2;

UPDATE esporte
SET popularidade = 7.23
WHERE id = 3;

UPDATE esporte
SET popularidade = 8.43
WHERE id = 4;

UPDATE esporte
SET popularidade = 6.32
WHERE id = 5;

SELECT * FROM esporte ORDER BY popularidade ASC;

SELECT * FROM esporte
WHERE estreia > '2000-01-01';

ALTER TABLE esporte
ADD CONSTRAINT chkEstreia
CHECK(estreia >= '1896-04-06' AND estreia <= '2024-08-31');

ALTER TABLE esporte
DROP CONSTRAINT chkCategoria;

SELECT * FROM esporte
WHERE pais_origem LIKE '_a%';

SELECT * FROM esporte
WHERE num_jogadores >= 4 AND num_jogadores <= 11;

DELETE FROM esporte
WHERE id = 1;

DELETE FROM esporte
WHERE id = 3;

DELETE FROM esporte
WHERE id = 5;

SELECT * FROM esporte; 

CREATE DATABASE estoque;
USE estoque;

CREATE TABLE MisteriosSA(
id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR (20),
DataCompra DATE,
preco FLOAT(4,2),
peso FLOAT(5,2),
DataRetirada DATE
);

DESCRIBE MisteriosSA;

INSERT INTO MisteriosSA (nome, DataCompra, preco, peso) VALUES
-- É boa prática demonstrar em quais colunas em específico você irá inserir dados.
	('Biscoito Scooby', '2024-08-22', 25.99, 200.00),
    ('Arroz', '2024-08-28', 20.00, 500.00),
    ('Feijão', '2024-08-14', 11.99, 200.00),
    ('Nugget', '2024-08-12', 18.99, 250.00),
    ('Hamburguer', '2024-08-18', 22.99, 100.00);
    
SELECT * FROM MisteriosSA;
    
SELECT nome, DataCompra, DataRetirada, id 
FROM MisteriosSA ORDER BY DataCompra ASC;

SELECT id, nome FROM MisteriosSA;

UPDATE MisteriosSA
SET DataRetirada = '2024-08-25'
WHERE id = 1;

SELECT * FROM MisteriosSA;

ALTER TABLE MisteriosSA 
RENAME COLUMN id TO idComida;

DESCRIBE MisteriosSA;

UPDATE MisteriosSA
SET nome = 'Biscoitos Scooby'
WHERE idComida = 1;

UPDATE MisteriosSA
SET nome = 'Biscoitos Scooby'
WHERE idComida = 2;

UPDATE MisteriosSA
SET nome = 'Cachorro-quente'
WHERE idComida = 3;

UPDATE MisteriosSA
SET nome = 'Biscoitos Scooby'
WHERE idComida = 4;

UPDATE MisteriosSA
SET nome = 'Cachorro-quente'
WHERE idComida = 5;

SELECT * FROM MisteriosSA;

ALTER TABLE MisteriosSA ADD CONSTRAINT tipoComida 
CHECK(nome in ('Biscoitos Scooby', 'Cachorro-quente'));

SELECT idComida, nome, DataCompra as 'Data da Compra', preco, peso, DataRetirada as 'Data da Retirada' FROM MisteriosSA
WHERE nome = 'Biscoitos Scooby';

SELECT * FROM MisteriosSA
WHERE DataCompra < '2024-07-25';

SELECT * FROM MisteriosSA
WHERE preco >= 30.50;

TRUNCATE TABLE MisteriosSA;

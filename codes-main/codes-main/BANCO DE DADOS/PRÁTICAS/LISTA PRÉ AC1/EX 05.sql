CREATE DATABASE vingadores;
USE vingadores;

CREATE TABLE heroi(
id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45),
versao VARCHAR(45),
habilidade VARCHAR(25),
altura INT 
);

INSERT INTO heroi (nome, versao, habilidade, altura)VALUES
('Homem de Ferro', 'Vingadores: Ultimato', 'Nano Tecnologia', 187),
('Thor', 'Thor: Amor e Trovão', 'Trovão', 191),
('Hulk', 'Vingadores: Ultimato', 'Super força', 280),
('Homem Aranha', 'Homem Aranha: Sem Volta para Casa', 'Teias', 171),
('Batman', 'Liga da Justiça Snyder Cut', 'Preparo', 189);

SELECT * FROM heroi;

ALTER TABLE heroi
ADD COLUMN regeneracao BOOL;

ALTER TABLE heroi
ADD CONSTRAINT chkRegen CHECK(regeneracao in (TRUE, FALSE));

ALTER TABLE heroi
MODIFY COLUMN versao VARCHAR(100);

DELETE FROM heroi
WHERE id = 3;

INSERT INTO heroi (nome, versao, habilidade, altura)VALUES
('Superman', 'Liga da Justiça Snyder Cut', 'Indestrutível', '195');

SELECT * FROM heroi
WHERE nome LIKE 'C%' OR nome LIKE 'H%';

SELECT * FROM heroi
WHERE nome NOT LIKE '%A%';

SELECT * FROM heroi
WHERE altura > 190;

SELECT * FROM heroi WHERE altura > 180 ORDER BY nome DESC;

TRUNCATE TABLE heroi;


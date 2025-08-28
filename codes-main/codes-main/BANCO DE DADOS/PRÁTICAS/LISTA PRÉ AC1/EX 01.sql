CREATE DATABASE game_store;
USE game_store;

CREATE TABLE jogo(
id INT PRIMARY KEY AUTO_INCREMENT,
nome varchar(30),
diretor varchar(30),
genero varchar(30),
lancamento date,
nota float(4,2),
disponivel int  
);

DESCRIBE jogo;

INSERT INTO jogo (id, nome, diretor, genero, lancamento, nota, disponivel) VALUES
(default, 'Deaths Stranding', 'Kojima', 'Ação', '2022-11-20', 7, 23),
(default, 'DarkSouls 1', 'Miyazaki', 'Soulslike', '2011-08-13', 10, 41),
(default, 'Elden Ring', 'Miyazaki', 'Soulslike', '2022-10-15', 10, 27),
(default, 'Tetris', 'Junesvaldo Peres', 'Indie', '1987-03-12', 4, 5),
(default, 'Grand Theft Auto', 'Matusalen', 'Ação', '2013-09-23', 8, 12);

SELECT * FROM jogo;

ALTER TABLE jogo 
ADD COLUMN tipo_midia varchar (7);

DESCRIBE jogo;

ALTER TABLE jogo ADD CONSTRAINT chkTipo
CHECK(tipo_midia in ('fisica', 'digital'));

ALTER TABLE jogo ADD CONSTRAINT chkNota
CHECK (nota >= 0 and nota <= 10);

ALTER TABLE jogo ADD COLUMN TipoMidia varchar(7);

DESCRIBE jogo;

UPDATE jogo
SET tipo_midia = 'fisica'
WHERE id = 1;

UPDATE jogo
SET tipo_midia = 'digital'
WHERE id = 2;

UPDATE jogo
SET tipo_midia = 'fisica'
WHERE id = 3;

UPDATE jogo
SET tipo_midia = 'digital'
WHERE id = 4;

UPDATE jogo
SET tipo_midia = 'digital'
WHERE id = 5;

SELECT * FROM jogo;

SELECT * FROM jogo
WHERE lancamento >= '2015-01-01';

SELECT * FROM jogo
WHERE nome LIKE '%a%' AND tipo_midia = 'fisica';

SELECT * FROM jogo
WHERE diretor NOT LIKE '%e%';

ALTER TABLE jogo ADD CONSTRAINT chkNota 
CHECK (nota >= 0 AND nota <= 10);

SELECT * FROM jogo
WHERE genero LIKE 'Soulslike' AND disponivel > 0;

SELECT * FROM jogo;

UPDATE jogo
SET disponivel = 0
WHERE id = 4;

SELECT * FROM jogo;

DELETE FROM jogo
WHERE id = 4;

SELECT * FROM jogo;

ALTER TABLE jogo
RENAME COLUMN diretor TO criador;
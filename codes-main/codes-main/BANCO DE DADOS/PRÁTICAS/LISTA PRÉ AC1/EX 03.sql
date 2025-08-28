CREATE DATABASE desenho;
USE desenho;

CREATE TABLE desenhos_exibidos(
id INT PRIMARY KEY AUTO_INCREMENT,
titulo VARCHAR(50),
data_lancamento DATE,
emissora_original VARCHAR(50),
classificacao VARCHAR(2),
status_desenho VARCHAR(15),
nota INT,
CONSTRAINT chkNota CHECK(nota >= 1 AND nota <= 5)
);

DESCRIBE desenhos_exibidos;

INSERT INTO desenhos_exibidos (titulo, data_lancamento, emissora_original, classificacao, status_desenho, nota) VALUES
('Dragon Ball Z', '1999-09-12', 'TV Tokyo', '14', 'finalizado', 3),
('Ricky and Morty', '2020-05-27', 'Adult Swin', '16', 'exibindo', 4),
('Apenas um Show', '2013-02-13', 'Cartoon Network', 'L', 'finalizado', 3),
('Hora de Aventura', '2011-11-20', 'Cartoon Network', 'L', 'finalizado', 5),
('Scooby Doo', '2000-07-12', 'Hanna-Barbera', 'L', 'finalizado', 5),
('Magi: Labirynth of Magic', '2012-08-07', 'TBS', '16', 'cancelado', 4);

SELECT * FROM desenhos_exibidos;

SELECT * FROM desenhos_exibidos
WHERE classificacao <= 14;

SELECT * FROM desenhos_exibidos
WHERE emissora_original LIKE 'Cartoon Network';

ALTER TABLE desenhos_exibidos
ADD CONSTRAINT chkStatus CHECK(status_desenho in ('exibindo', 'finalizado', 'cancelado'));

UPDATE desenhos_exibidos
SET status_desenho = 'tentativa'
WHERE id = 1; -- CONSTRAINT funcionando

SELECT * FROM desenhos_exibidos;

UPDATE desenhos_exibidos
SET status_desenho = 'finalizado'
WHERE id = 2; 

UPDATE desenhos_exibidos
SET status_desenho = 'finalizado'
WHERE id = 6;

DELETE FROM desenhos_exibidos
WHERE id = 12;

SELECT * FROM desenhos_exibidos
WHERE titulo LIKE 'D%';

ALTER TABLE desenhos_exibidos
RENAME COLUMN classificacao TO classificacaoIndicativa;

UPDATE desenhos_exibidos
SET nota = 2 AND data_lancamento = '2021-01-29'
WHERE id = 11;

TRUNCATE TABLE desenhos_exibidos;

ALTER TABLE desenhos_exibidos
DROP CONSTRAINT chkStatus;








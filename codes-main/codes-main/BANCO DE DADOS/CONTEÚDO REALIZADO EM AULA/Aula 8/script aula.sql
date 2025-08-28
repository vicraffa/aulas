use sprint2;

CREATE TABLE pessoa1(
idPessoa1 INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45),
dtNasc DATE
);

INSERT INTO pessoa1 VALUES
(DEFAULT, 'Bella', '2000-01-10'),
(DEFAULT, 'Fiona', '2002-01-11');

CREATE TABLE pessoa2(
idPessoa2 INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45),
dtNasc DATE,
fkPessoa1 INT UNIQUE,
CONSTRAINT fkNamora FOREIGN KEY(fkPessoa1)
		REFERENCES pessoa1(idPessoa1)
)auto_increment = 1000;

-- ALTER TABLE pessoa2 ADD CONSTRAINT fkNamora
-- FOREIGN KEY (fkPessoa1)
-- REFERENCES pessoa1(idPessoa1);

INSERT INTO pessoa2 VALUES
(DEFAULT, 'Edward', '1845-01-01', 1),
(DEFAULT, 'Shrek', '1999-01-01', 2);

SELECT * FROM pessoa1;
SELECT * FROM pessoa2;

SELECT p1.nome AS Menina,
	   p2.nome AS Menino
	FROM pessoa1 AS p1
    JOIN pessoa2 AS p2
    ON p1.idPessoa1 = p2.fkPessoa1;
    
INSERT INTO pessoa1 VALUES
(default, 'Bebel', null);

INSERT INTO pessoa2 VALUES
(default, 'Agostinho', null, 3);

SELECT CASE
	WHEN p1.nome = 'Bella' THEN 'Vampira'
    WHEN p1.nome = 'Fiona' THEN 'Princesa'
    WHEN p1.nome = 'Bebel' THEN 'Normal'
    END AS 'Nome Menina', 
	ifnull(p1.dtNasc, 'Não inserida') AS 'Data de Nascimento Menina',
    CASE 
    WHEN p2.nome = 'Agostinho' THEN 'Malandro'
    ELSE 'Burro'
    END AS 'Nome Menino',
    ifnull(p2.dtNasc, 'Não sabemos') AS 'Data de Nascimento Menino'
FROM pessoa1 AS p1
JOIN pessoa2 AS p2
ON p1.idPessoa1 = p2.fkPessoa1;


-- REGRA DE NEGOCIO, CADASTRAR UMA FAMILIA, UMA MAE TEM MUITOS FILHOS, O PAI TEM MUITOS FILHOS, A MAE TAMBÉM TEM PAI E MÃE

























































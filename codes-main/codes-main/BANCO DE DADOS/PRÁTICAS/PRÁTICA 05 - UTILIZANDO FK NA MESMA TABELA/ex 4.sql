CREATE DATABASE familia;
USE familia;

CREATE TABLE pessoa(
idPessoa INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45),
fkPai INT,
fkMae INT,
CONSTRAINT chPaiFilho FOREIGN KEY (fkPai) REFERENCES pessoa(idPessoa),
CONSTRAINT chMaeFilho FOREIGN KEY (fkMae) REFERENCES pessoa(idPessoa)
);

INSERT INTO pessoa(nome) VALUES
('Picasso'),
('Akira'),
('Lula Molusco'),
('João Pedro'),
('Claudia');

SELECT * FROM pessoa;

UPDATE pessoa SET fkPai = 3, fkMae = 5 WHERE idPessoa = 1;
UPDATE pessoa SET fkPai = 3, fkMae = 5 WHERE idPessoa = 2;
UPDATE pessoa SET fkPai = 3, fkMae = 5 WHERE idPessoa = 4;

SELECT  *
FROM pessoa AS Filho
JOIN pessoa AS Pai
ON Filho.fkPai = Pai.idPessoa;

SELECT  *
FROM pessoa AS Filho
JOIN pessoa AS Mae
ON Filho.fkMae = Mae.idPessoa;

SELECT CASE 
	WHEN pai.idPessoa = 3 THEN 'Irmãos do mesmo pai'
    END AS 'Parentes',
    ifnull(filho.fkPai, 'Sem pai registrado.') AS 'Registro',
    filho.nome
    FROM pessoa AS pai
    JOIN pessoa as filho
    ON filho.idPessoa = pai.fkPai;

SELECT CASE 
	WHEN mae.idPessoa = 5 THEN 'Irmãos da mesma mãe'
    END AS '',
    ifnull(filho.fkMae, 'Sem mãe registrado.') AS 'Registro',
    filho.nome
    FROM pessoa AS mae
    JOIN pessoa as filho
    ON filho.idPessoa = mae.fkMae;

















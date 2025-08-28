CREATE DATABASE sprint2;
USE sprint2;

CREATE TABLE Atleta(
idAtleta INT PRIMARY KEY,
nome VARCHAR(40),
modalidade VARCHAR(40),
qtdMedalha INT,
fkPais INT
);

DESCRIBE Atleta;

INSERT INTO Atleta VALUES
(1, 'Sandro Rocha', 'Nado Sincronizado', 1, default),
(2, 'Roger Guedes', 'Basquete', 0, default),
(3, 'Paula Nobre', 'Basquete', 4, default),
(4, 'Pedro de Paula', 'Nado Sincronizado', 2, default),
(5, 'Isabela Julia', 'Basquete', 1, default);

SELECT * FROM Atleta;

CREATE TABLE Pais(
idPais INT PRIMARY KEY,
nome VARCHAR(30),
capital VARCHAR(40)
);

DESCRIBE Pais;

INSERT INTO Pais VALUES
(1, 'Irlanda', 'Porto'),
(2, 'Alemanha', 'Berlim'),
(3, 'Belgica', 'London'),
(4, 'Bangladesh', 'Svlash');

SELECT * FROM Pais;

ALTER TABLE Atleta 
ADD CONSTRAINT fkAtletaPais FOREIGN KEY(fkPais)
	REFERENCES Pais(idPais);
    
UPDATE Atleta
SET fkPais = 1
WHERE idAtleta = 1;

UPDATE Atleta
SET fkPais = 2
WHERE idAtleta = 2;

UPDATE Atleta
SET fkPais = 2
WHERE idAtleta = 3;

UPDATE Atleta
SET fkPais = 3
WHERE idAtleta = 4;

UPDATE Atleta
SET fkPais = 4
WHERE idAtleta = 5;

SELECT * FROM Atleta;

SELECT a.nome AS 'Nome do Atleta', p.nome AS 'País'
FROM Atleta AS a JOIN Pais AS p
ON idPais = fkPais;

SELECT idAtleta, a.nome AS 'Nome do Atleta', modalidade, qtdMedalha, p.nome AS 'País'
FROM Atleta AS a JOIN Pais AS p
ON idPais = fkPais
WHERE capital LIKE 'Berlim';
-- FINALIZANDO O EXERCÍCIO 01

-- INICIANDO EX 02

CREATE TABLE Musica(
idMusica INT PRIMARY KEY AUTO_INCREMENT,
titulo VARCHAR(40),
artista VARCHAR(40),
genero VARCHAR(40),
fkAlbum INT
);

INSERT INTO Musica (titulo, artista, genero) VALUES
('Sensações', 'Belo', 'Pagode'),
('Meu amor', 'Belo', 'Pagode'),
('TikTok', 'Yeon', 'K-POP');

SELECT * FROM Musica;

CREATE TABLE Album(
idAlbum INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45),
tipo VARCHAR(7),
dtLancamento DATE
);

INSERT INTO Album (nome, tipo, dtLancamento) VALUES
('Invenções', 'Fisico', '1998-08-12'),
('JUMPING', 'Digital', '2024-03-25');

SELECT * FROM Musica;

SELECT * FROM Album;

ALTER TABLE Musica 
ADD CONSTRAINT fkMusicaAlbum FOREIGN KEY(fkAlbum)
	REFERENCES Album(idAlbum);

UPDATE Musica
SET fkAlbum = 1
WHERE idMusica = 1;

UPDATE Musica
SET fkAlbum = 1
WHERE idMusica = 2;

UPDATE Musica
SET fkAlbum = 2
WHERE idMusica = 3;

SELECT idMusica, titulo, artista, genero, a.nome AS 'Album'
FROM Musica AS m JOIN Album AS a
ON idAlbum = fkAlbum;

SELECT titulo AS 'Título da música', nome AS 'Nome do Album'
FROM Musica JOIN Album
ON idAlbum = fkAlbum;

SELECT idMusica, titulo, artista, genero, a.nome AS 'Album'
FROM Musica AS m JOIN Album AS a
ON idAlbum = fkAlbum
WHERE tipo = 'Fisico';
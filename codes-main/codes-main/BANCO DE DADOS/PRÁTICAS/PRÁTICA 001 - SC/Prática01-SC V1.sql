-- Criar database e seleciona-la
CREATE DATABASE sprint1;
USE sprint1;

-- Criando a tabela atleta
CREATE TABLE Atleta ( 
	idAtleta int primary key,
	nome varchar(40),
	modalidade varchar(40),
    qtdMedalha int );

-- Adicionar dados na tabela    
    INSERT INTO atleta VALUES
    (1, 'Fan Zhendong', 'Tênis De Mesa', 1),
    (2, 'Alexis Lebrun', 'Tênis De Mesa', 1),
    (3, 'Rebeca Andrade', 'Ginástica Artística', 1),
    (4, 'Simone Biles', 'Ginástica Artística', 4),
    (5, 'Beatriz Souza', 'Judô', 1),
    (6, 'Natsumi Tsunoda', 'Judô', 2);
    
SELECT * FROM Atleta;

UPDATE Atleta SET qtdMedalha = 3
	WHERE idAtleta = 1;
    
UPDATE Atleta SET qtdMedalha = 6
	WHERE idAtleta = 2;

UPDATE Atleta SET qtdMedalha = 9
	WHERE idAtleta = 3;
    
UPDATE Atleta SET nome = 'Junin de Paula'
	WHERE idAtleta = 4;
    
ALTER TABLE Atleta
ADD dtNasc date;

UPDATE Atleta 
SET dtNasc = '1991-09-30'
WHERE idAtleta = 1;

UPDATE Atleta 
SET dtNasc = '2004-08-21'
WHERE idAtleta = 2;

UPDATE Atleta 
SET dtNasc = '1986-04-02'
WHERE idAtleta = 3;

UPDATE Atleta 
SET dtNasc = '2001-06-30'
WHERE idAtleta = 4;

UPDATE Atleta 
SET dtNasc = '1995-04-23'
WHERE idAtleta = 5;

UPDATE Atleta 
SET dtNasc = '1999-11-01'
WHERE idAtleta = 6;

DELETE FROM ATLETA WHERE idAtleta = 5;

SELECT * FROM Atleta WHERE modalidade <> 'Natação';

SELECT * FROM Atleta WHERE qtdMedalha >= 3;

ALTER TABLE Atleta
MODIFY COLUMN modalidade varchar(60);

DESC Atleta;

TRUNCATE TABLE Atleta;

-- 2 

-- Criando a tabela Musica
CREATE TABLE Musica ( 
	idMusica int primary key,
	titulo varchar(40),
	artista varchar(40),
    genero varchar(40) );
    
-- Inserir dados na tabela
INSERT INTO Musica VALUES
	(1, 'Fish Man', 'Hotel Ugly', 'Indie'),
    (2, 'Front Desk', 'Hotel Ugly', 'Indie'),
    (3, 'Billie Jean', 'Michael Jackson', 'Pop'),
    (4, 'Beat It', 'Michael Jackson', 'Pop'),
    (5, 'DEVIL IS A LIE', 'Tommy Richman', 'Rap'),
    (6, 'FOGGY', 'Tommy Richman', 'Rap'),
    (7, 'In My Room', 'Frank Ocean', 'Soul');
    
SELECT * FROM Musica;

ALTER TABLE Musica
ADD curtidas int;

UPDATE Musica
SET curtidas = 23
WHERE idMusica = 1;

UPDATE Musica
SET curtidas = 43
WHERE idMusica = 2;

UPDATE Musica
SET curtidas = 76
WHERE idMusica = 3;

UPDATE Musica
SET curtidas = 11
WHERE idMusica = 4;

UPDATE Musica
SET curtidas = 56
WHERE idMusica = 5;

UPDATE Musica
SET curtidas = 85
WHERE idMusica = 6;

UPDATE Musica
SET curtidas = 18
WHERE idMusica = 7;    

ALTER TABLE Musica
MODIFY COLUMN artista varchar(80);

UPDATE Musica
SET curtidas = 29
WHERE idMusica = 1;

UPDATE Musica
SET curtidas = 87
WHERE idMusica = 2;

UPDATE Musica
SET curtidas = 98
WHERE idMusica = 3;

UPDATE Musica
SET titulo = 'PRAY 2 U'
WHERE idMusica = 5;

DELETE FROM Musica WHERE idMusica = 4;

SELECT * FROM Musica
	WHERE genero <> 'funk';
    
SELECT * FROM Musica
	WHERE curtidas >= 20;
    
DESC Musica;

TRUNCATE TABLE Musica;
    

-- Criando a tabela Filme
CREATE TABLE Filme ( 
	idFilme int primary key,
	titulo varchar(50),
    genero varchar(40),
	diretor varchar(40) );
    
-- Inserir dados na tabela
INSERT INTO Filme VALUES
	(1, 'Batman: O Cavaleiro das Trevas', 'Ação', 'Christopher Nolan'),    
	(2, 'Interestelar', 'Ficção Científica', 'Christopher Nolan'),
	(3, 'A Bruxa', 'Terror', 'Robert Eggers'),
    (4, 'Hereditário', 'Terror', 'Ari Aster'),
    (5, 'Gente Grande', 'Comédio', 'Dennis Dugan'),
    (6, 'Tá Chovendo Hambúrguer', 'Infantil', 'Phil Lord'),
    (7, 'No Limite do Amanhã', 'Ação', 'Doug Liman');
    
ALTER TABLE Filme
ADD protagonista varchar(50);

UPDATE Filme
SET protagonista = 'Batman'
WHERE idFilme = 1;

UPDATE Filme
SET protagonista = 'Jeferson'
WHERE idFilme = 2;

UPDATE Filme
SET protagonista = 'Anya'
WHERE idFilme = 3;

UPDATE Filme
SET protagonista = 'John'
WHERE idFilme = 4;

UPDATE Filme
SET protagonista = 'Mark'
WHERE idFilme = 5;

UPDATE Filme
SET protagonista = 'Clederson'
WHERE idFilme = 6;

UPDATE Filme
SET protagonista = 'Christian'
WHERE idFilme = 7;

ALTER TABLE Filme
MODIFY COLUMN diretor varchar(150);

UPDATE Filme
SET diretor = 'John Carpenter'
WHERE idFilme = 5;

UPDATE Filme
SET diretor = ' Peter Valenciagas'
WHERE idFilme = 2;

UPDATE Filme
SET diretor = 'Peter Parker'
WHERE idFilme = 7; 

UPDATE Filme
SET titulo = 'Desafio dos 100'
WHERE idFilme = 6;

DELETE FROM Filme WHERE idFilme = 3;

SELECT * FROM Filme
WHERE genero <> 'Drama';

SELECT * FROM Filme
WHERE genero = 'Suspense';

DESC Filme;

TRUNCATE TABLE Filme;

-- Criação da tabela Professor
	CREATE TABLE Professor ( 
	idProfessor int primary key,
    nome varchar(50),
	especialidade varchar(40),
	dtNasc date );
    
-- Inserir dados na tabela
	INSERT INTO Professor VALUES
    (1, 'Jeferson', 'Nutrologo', '1991-10-05'),
    (2, 'Cleber', 'Biologia', '1989-08-12'),
    (3, 'Vivian', 'Banco de Dados', '2005-10-23'),
    (4, 'Matheus', 'Matematica', '1983-02-05'),
    (5, 'Joilson', 'Fisica', '1987-04-09'),
    (6, 'Brenda', 'Biologia', '1991-09-30');
    
SELECT * FROM Professor;
    
ALTER TABLE Professor
ADD funcao varchar(50) CHECK(funcao = 'monitor' OR funcao = 'assistente' OR funcao = 'titular' );
-- Também da pra restringir as opções que funcão pode ter com um código parecido; CHECK (funcao IN ('monitor', 'assistente', 'titular'));
    
UPDATE Professor
SET funcao = 'titular'
WHERE idProfessor = 1;

UPDATE Professor
SET funcao = 'assistente'
WHERE idProfessor = 2;

UPDATE Professor
SET funcao = 'titular'
WHERE idProfessor = 3; 

UPDATE Professor
SET funcao = 'monitor'
WHERE idProfessor = 4; 

UPDATE Professor
SET funcao = 'monitor'
WHERE idProfessor = 5; 

UPDATE Professor
SET funcao = 'assistente'
WHERE idProfessor = 6;

INSERT INTO Professor VALUES
	(7, 'Monica', 'Geografia', '2001-01-21', 'titular');
    
DELETE FROM Professor WHERE idProfessor = 5;

SELECT * FROM Professor
	WHERE funcao = 'titular';
    
SELECT especialidade, dtNasc FROM Professor
	WHERE funcao = 'monitor';

UPDATE Professor
SET dtNasc = '1999-10-23'
WHERE idProfessor = 3;

TRUNCATE TABLE Professor;

-- Criação da tabela Curso
	CREATE TABLE Curso( 
	idCurso int primary key,
    nome varchar(50),
    sigla varchar(3),
	coordenador varchar(40) ); 
    
-- Inserir dados na tabela    
	INSERT INTO Curso VALUES
    (1, 'Análise e Desenvolvimento de Sistemas', 'ADS', 'Gerson'),
	(2, 'Ciência da Computação', 'CCO', 'Marise'),
    (3, 'Sistemas de Informação', 'SIS', 'Alex'); 
    
SELECT * FROM Curso;

SELECT coordenador FROM Curso;

SELECT * FROM Curso
	WHERE sigla LIKE 'ADS';
    
SELECT * FROM Curso ORDER BY nome;

SELECT * FROM Curso ORDER BY coordenador desc;

SELECT * FROM Curso
	WHERE nome LIKE 'C%';
    
SELECT * FROM Curso
	WHERE nome LIKE '%o';

SELECT * FROM Curso
	WHERE nome LIKE '_i%';
    
SELECT * FROM Curso
	WHERE nome LIKE '%a_';
    
DROP TABLE Curso;

-- Criação da tabela Revista
	CREATE TABLE Revista( 
	idRevista int primary key AUTO_INCREMENT,
    nome varchar(40),
    categoria varchar(30) );
    
-- Inserir dados na tabela
INSERT INTO Revista(nome) VALUES
	('Veja'),
    ('Epoca'),
    ('Quatro Rodas'),
    ('Estadao');
    
SELECT * FROM Revista;

UPDATE Revista 
SET categoria = 'Notícia'
WHERE idRevista = 1;

UPDATE Revista 
SET categoria = 'Newsletter'
WHERE idRevista = 2;

UPDATE Revista 
SET categoria = 'Fofoca'
WHERE idRevista = 3;

SELECT * FROM Revista;

INSERT INTO Revista (nome, categoria) VALUES
	('Capricho', 'Moda'),
    ('Ana Maria', 'Receita'),
    ('Tititi', 'Fofoca'),
    ('Fiocruz', 'Estudo Científico');
    
SELECT * FROM Revista;

DESC Revista;

ALTER TABLE Revista
MODIFY COLUMN categoria varchar(40);

DESC Revista;

ALTER TABLE Revista
ADD periodicidade varchar(15);
    
SELECT * FROM Revista;

ALTER TABLE Revista
DROP COLUMN periodicidade;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
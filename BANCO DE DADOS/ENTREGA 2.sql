-- EX 1
USE sprint1;
 
CREATE TABLE Atleta(
idAtleta INT PRIMARY KEY,
nome VARCHAR(40),
modalidade VARCHAR(40),
qtdMedalha INT
);

INSERT INTO Atleta VALUES
(1, 'Michael Phelps', 'Natação', 20),
(2, 'Katie Ledecky', 'Natação', 19),
(3, 'Simone Biles', 'Ginástica Artística', 37),
(4, 'Vitaly Scherbo', 'Ginástica Artística', 33),
(5, 'Isabell Werth', 'Hipismo', 14),
(6, 'Anky van Grunsven', 'Hipismo', 9 );

SELECT * FROM Atleta;

UPDATE Atleta SET qtdMedalha = 24
WHERE idAtleta = 1;

UPDATE Atleta SET qtdMedalha = 55
WHERE idAtleta = 2;

UPDATE Atleta SET qtdMedalha = 14
WHERE idAtleta = 3;

UPDATE Atleta SET nome = 'Josepha Alerman'
WHERE idAtleta = 4;

ALTER TABLE Atleta ADD COLUMN dtNasc DATE;

DESC Atleta;

UPDATE Atleta SET dtNasc = '1999-12-01'
WHERE idAtleta = 1;

UPDATE Atleta SET dtNasc = '1942-04-23'
WHERE idAtleta = 2;

UPDATE Atleta SET dtNasc = '1953-05-11'
WHERE idAtleta = 3;

UPDATE Atleta SET dtNasc = '2014-07-30'
WHERE idAtleta = 4;

UPDATE Atleta SET dtNasc = '2000-01-05'
WHERE idAtleta = 5;

UPDATE Atleta SET dtNasc = '1994-12-12'
WHERE idAtleta = 6;

DELETE FROM Atleta
WHERE idAtleta = 5;

SELECT nome FROM Atleta
WHERE modalidade <> 'Natação';

SELECT * FROM Atleta
WHERE qtdMedalha >= 3;

ALTER TABLE Atleta MODIFY COLUMN modalidade VARCHAR(60);

DESCRIBE Atleta;

TRUNCATE Atleta;

SELECT * FROM Atleta;
--
--
--
--
-- EX 2
USE sprint1;

CREATE TABLE Musica(
idMusica INT PRIMARY KEY,
titulo VARCHAR(40),
artista VARCHAR(40),
genero VARCHAR(40)
);

INSERT INTO Musica VALUES
(1, 'Pintei', 'Franco, The Sir!', 'Trap'),
(2, 'Fumaça Pro Ar', 'Franco, The Sir!', 'Trap'),
(3, 'Migos', 'Brandão85', 'Trap'),
(4, 'Front Desk', 'Hotel Ugly', 'Indie'),
(5, 'Igloo', 'KISS OF LIFE', 'KPOP'),
(6, 'Melhor Que Ontem', 'Djonga', 'Rap'),
(7, 'Relaxo', 'Gus', 'Trap');

SELECT * FROM Musica;

ALTER TABLE Musica ADD COLUMN curtidas INT;

UPDATE Musica SET curtidas = 234
WHERE idMusica = 1;

UPDATE Musica SET curtidas = 553
WHERE idMusica = 2;

UPDATE Musica SET curtidas = 765
WHERE idMusica = 3;

UPDATE Musica SET curtidas = 232
WHERE idMusica = 4;

UPDATE Musica SET curtidas = 626
WHERE idMusica = 5;

UPDATE Musica SET curtidas = 825
WHERE idMusica = 6;

UPDATE Musica SET curtidas = 123
WHERE idMusica = 7;

SELECT * FROM Musica;

ALTER TABLE Musica MODIFY COLUMN artista VARCHAR(80);

UPDATE Musica SET curtidas = 4998
WHERE idMusica = 1;

UPDATE Musica SET curtidas = 32893
WHERE idMusica = 2;

UPDATE Musica SET curtidas = 2193
WHERE idMusica = 3;

UPDATE Musica SET titulo = 'NOBODY KNOWS'
WHERE idMusica = 5;

DELETE FROM Musica 
WHERE idMusica = 4;

SELECT titulo FROM Musica
WHERE genero <> 'funk';

SELECT * FROM Musica
WHERE curtidas >= 20;

DESCRIBE Musica;

TRUNCATE Musica;

SELECT * FROM Musica;
--
--
--
--
-- EX 3
USE sprint1;

CREATE TABLE Filme(
idFilme INT PRIMARY KEY,
titulo VARCHAR(50),
genero VARCHAR(40),
diretor VARCHAR(40)
);

INSERT INTO Filme VALUES
(1 , 'Interestelar', 'Ficção Científica', 'Christopher Nolan'),
(2 , 'Oppenheimer', 'Suspense', 'Christopher Nolan'),
(3 , 'A Chegada', 'Ficcção Científica', 'Denis Villeneuve'),
(4 , 'Duna 1', 'Ficção Científica', 'Denis Villeneuve'),
(5 , 'Duna 2', 'Ficção Científica', 'Denis Villeneuve'),
(6 , 'A Substância', 'Terror', 'Coralie Fargeat'),
(7 , 'MaXXXine', 'Terror', 'Ti West'),
(8 , 'Titanic', 'Drama', 'James Cameron');

SELECT * FROM Filme;

ALTER TABLE Filme ADD COLUMN protagonista VARCHAR(50);

UPDATE Filme SET protagonista = 'John'
WHERE idFilme = 1;

UPDATE Filme SET protagonista = 'Oppenheimer'
WHERE idFilme = 2;

UPDATE Filme SET protagonista = 'Cudy'
WHERE idFilme = 3;

UPDATE Filme SET protagonista = 'Paul Atreides'
WHERE idFilme = 4;

UPDATE Filme SET protagonista = 'Paul Atreides'
WHERE idFilme = 5;

UPDATE Filme SET protagonista = 'Stancy'
WHERE idFilme = 6;

UPDATE Filme SET protagonista = 'Maxine'
WHERE idFilme = 7;

UPDATE Filme SET protagonista = 'Christian'
WHERE idFilme = 8;

SELECT * FROM Filme;

ALTER TABLE Filme MODIFY COLUMN diretor VARCHAR(150);

desc Filme;

UPDATE Filme SET diretor = 'Denis Vilanovas'
WHERE idFilme = 5;

UPDATE Filme SET diretor = 'Nolan Christopher'
WHERE idFilme = 2;

UPDATE Filme SET diretor = 'Ti do Oeste'
WHERE idFilme = 7;

UPDATE Filme SET titulo = 'The Substance'
WHERE idFilme = 6;

DELETE FROM Filme
WHERE idFilme = 3;

SELECT titulo FROM Filme
WHERE genero <> 'Drama';

SELECT * FROM Filme
WHERE genero = 'Suspense';

DESCRIBE Filme;

TRUNCATE Filme;

SELECT * FROM Filme;
--
--
--
--
-- EX 4
USE sprint1;

CREATE TABLE Professor(
idProfessor INT PRIMARY KEY,
nome VARCHAR(50),
especialidade VARCHAR(40),
dtNasc DATE);

INSERT INTO Professor VALUES
(1, 'Vivian', 'Banco de Dados', '1999-08-08'),
(2, 'Matheus', 'Arquitetura Computacional', '1993-10-07'),
(3, 'Davi', 'Arquitetura Computacional', '2013-02-09'),
(4, 'João Pedro', 'Algoritmos', '2003-07-30'),
(5, 'Frizza', 'Algoritmos', '1969-04-02'),
(6, 'Marcio', 'Sistemas Operacionais', '2002-11-25');

SELECT * FROM Professor;

ALTER TABLE Professor ADD COLUMN funcao VARCHAR(50);

DESC Professor;

ALTER TABLE Professor ADD CONSTRAINT chkFuncao
CHECK(funcao IN('titular', 'assistente', 'monitor'));

UPDATE Professor SET funcao = 'titular'
WHERE idProfessor = 1;

UPDATE Professor SET funcao = 'assistente'
WHERE idProfessor = 2;

UPDATE Professor SET funcao = 'monitor'
WHERE idProfessor = 3;

UPDATE Professor SET funcao = 'titular'
WHERE idProfessor = 4;

UPDATE Professor SET funcao = 'titular'
WHERE idProfessor = 5;

UPDATE Professor SET funcao = 'assistente'
WHERE idProfessor = 6;

INSERT INTO Professor(idProfessor, nome, especialidade, dtNasc, funcao) VALUES
(7 ,'Luan', 'Algoritmos', '2004-05-20', 'Monitor');

DELETE FROM Professor
WHERE idProfessor = 5;

SELECT nome FROM Professor
WHERE funcao = 'titular';

SELECT especialidade, dtNasc FROM Professor
WHERE funcao = 'monitor';

UPDATE Professor SET dtNasc = '2002-05-09'
WHERE idProfessor = 3;

SELECT * FROM Professor;

TRUNCATE Professor;
--
--
--
--
-- EX 5
USE sprint1;

CREATE TABLE curso(
idCurso INT PRIMARY KEY,
nome VARCHAR(50),
sigla VARCHAR(3),
coordenador VARCHAR(40)
 );
 
 INSERT INTO curso(idCurso, nome, sigla, coordenador) VALUES
 (1, 'Análise e Desenvolvimento de Sistemas', 'ADS', 'Gerson'),
 (2, 'Ciência da Computação', 'CCO', 'Marise'),
 (3, 'Sistemas de Informação', 'SIS', 'Alex');
 
SELECT * FROM curso;

SELECT coordenador FROM curso;

SELECT * FROM curso
WHERE sigla = 'ADS';

SELECT * FROM curso ORDER BY nome;

SELECT * FROM curso ORDER BY coordenador DESC;

SELECT * FROM curso 
WHERE nome LIKE 'C%';

SELECT * FROM curso
WHERE nome LIKE '%o';

SELECT * FROM curso
WHERE nome LIKE '_i%';

SELECT * FROM curso
WHERE nome LIKE '%a_';

TRUNCATE curso;

SELECT * FROM curso;
--
--
--
--
-- EX 6
USE sprint1;

CREATE TABLE revista(
idRevista INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(40),
categoria VARCHAR(30)
)AUTO_INCREMENT = 1;

INSERT INTO revista(nome) VALUES
('Epoca'),
('O Globo'),
('Estadão'),
('Isto é');

SELECT * FROM revista;

UPDATE revista SET categoria = 'Noticias'
WHERE idRevista = 1;

UPDATE revista SET categoria = 'Noticias'
WHERE idRevista = 2;

UPDATE revista SET categoria = 'Noticias'
WHERE idRevista = 3;

UPDATE revista SET categoria = 'Fofoca'
WHERE idRevista = 4;

INSERT INTO revista VALUES
(default, 'Vogue', 'Moda'),
(default, 'Science', 'Ciência'),
(default, 'National Geographic', 'Cultura');

SELECT * FROM revista;

DESCRIBE revista;

ALTER TABLE revista MODIFY COLUMN categoria VARCHAR(40);

DESCRIBE revista;

ALTER TABLE revista ADD COLUMN periodicidade VARCHAR(15);

SELECT * FROM revista;

ALTER TABLE revista DROP COLUMN periodicidade;

DESCRIBE revista;
















-- EX 7
USE sprint1;

CREATE TABLE carro(
idCarro INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(40),
placa CHAR(7)
)AUTO_INCREMENT = 1000;

INSERT INTO carro(nome, placa) VALUES
('HB20', 'C4AL021'),
('Mustang', 'F3N7N38'),
('Civic', 'FJ3OD5G'),
('Corola', 'FR39J43');

SELECT * FROM carro;

INSERT INTO carro(nome) VALUES
('Urus'),
('920'),
('SF90');

SELECT * FROM carro;

DESCRIBE carro;

ALTER TABLE carro MODIFY COLUMN nome VARCHAR(28);

DESC carro;

ALTER TABLE carro ADD COLUMN ano CHAR(4);

UPDATE carro  SET ano = '2020'
WHERE idCarro = 1000;

UPDATE carro  SET ano = '2020'
WHERE idCarro = 1001;

UPDATE carro  SET ano = '2022'
WHERE idCarro = 1002;

UPDATE carro  SET ano = '2013'
WHERE idCarro = 1003;

UPDATE carro  SET ano = '2020'
WHERE idCarro = 1004;

UPDATE carro  SET ano = '2021'
WHERE idCarro = 1005;

UPDATE carro  SET ano = '2019'
WHERE idCarro = 1006;

SELECT * FROM carro;

UPDATE carro SET placa = 'J40SFK4'
WHERE idCarro = 1004;

UPDATE carro SET placa = 'LG83JH6'
WHERE idCarro = 1005;

UPDATE carro SET placa = 'KHN78V2'
WHERE idCarro = 1006;
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

SELECT nome, qtdMedalha FROM Atleta;

SELECT * FROM Atleta
WHERE modalidade = 'Hipismo';

SELECT * FROM Atleta ORDER BY modalidade;

SELECT * FROM Atleta ORDER BY qtdMedalha DESC;

SELECT * FROM Atleta
WHERE nome LIKE '%s%';

SELECT * FROM Atleta 
WHERE nome LIKE 'S%';

SELECT * FROM Atleta
WHERE nome LIKE '%o';

SELECT * FROM Atleta
WHERE nome LIKE '%r_';

DROP TABLE Atleta;




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

SELECT titulo, artista FROM Musica;

SELECT * FROM Musica
WHERE genero = 'Trap';

SELECT * FROM Musica
WHERE artista = 'Franco, The Sir!';

SELECT * FROM Musica ORDER BY titulo;

SELECT * FROM Musica ORDER BY artista DESC;

SELECT * FROM Musica 
WHERE titulo LIKE 'M%';

SELECT * FROM Musica
WHERE artista LIKE '%a';

SELECT * FROM Musica 
WHERE genero LIKE '_r%';

SELECT * FROM Musica
WHERE titulo LIKE '%o_';

DROP TABLE Musica;





-- EX 3
USE sprint1;

CREATE TABLE Filme(
idFilme INT PRIMARY KEY,
titulo VARCHAR(50),
genero VARCHAR(50),
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

SELECT titulo, diretor FROM Filme;

SELECT * FROM Filme
WHERE genero = 'Ficção Científica';

SELECT * FROM Filme
WHERE diretor = 'Denis Villeneuve';

SELECT * FROM Filme ORDER BY titulo;

SELECT * FROM Filme ORDER BY diretor DESC;

SELECT * FROM Filme 
WHERE titulo LIKE 'A%';

SELECT * FROM Filme
WHERE diretor LIKE '%n';

SELECT * FROM Filme
WHERE genero LIKE '_e%';

SELECT * FROM Filme
WHERE titulo LIKE '%a_';

DROP TABLE Filme;






-- EX 4
USE sprint1;

CREATE TABLE Professor(
idProfessor INT PRIMARY KEY,
nome VARCHAR(50),
especialidade VARCHAR(40),
dtNasc DATE);

INSERT INTO Professor VALUES
(1, 'Vivian', 'Banco de Dados', '1999/08/08'),
(2, 'Matheus', 'Arquitetura Computacional', '1993/10/07'),
(3, 'Davi', 'Arquitetura Computacional', '2013/02/09'),
(4, 'João Pedro', 'Algoritmos', '2003/07/30'),
(5, 'Frizza', 'Algoritmos', '1969/04/02'),
(6, 'Marcio', 'Sistemas Operacionais', '2002/11/25');

SELECT * FROM Professor;

SELECT especialidade FROM Professor;

SELECT * FROM Professor
WHERE especialidade = 'Algoritmos';
  
SELECT * FROM Professor ORDER BY nome;

SELECT * FROM Professor ORDER BY dtNasc ASC;

SELECT * FROM Professor 
WHERE nome LIKE 'M%';

SELECT * FROM Professor
WHERE nome LIKE '%o';

SELECT * FROM Professor
WHERE nome LIKE '_A%';  

SELECT * FROM Professor
WHERE nome LIKE '%z_';

DROP TABLE Professor;






-- EX 5
CREATE TABLE Jogo(
idJogo INT PRIMARY KEY,
nome VARCHAR(50),
comentario VARCHAR(200),
ranking INT);

INSERT INTO Jogo VALUES
(1, 'Elden Ring', 'É um jogo com muita qualidade, alta profundida e universo criativo.', 1),
(2, 'Minecraft', 'Um jogo onde a liberdade é tudo e a criatividade é a unica coisa que limita o que você pode fazer.', 2),
(3, 'Zelda: Breathe of the Wild', 'Um jogo que carrega toda a história e peso dos seus antecessores e faz tão bem quanto!', 3),
(4, 'Valorant', 'Unindo tudo que o Counter Strike fez bem, com toda a bagagem de jogos competitivos a riot faz um bom trabalho.', 5),
(5, 'Devour', 'Jogo de terror co-op que é tão divertido e fez tanto sucesso que inspirou uma onda de jogos iguais.', 4);

SELECT * FROM Jogo;

SELECT nome FROM Jogo;

SELECT comentario FROM Jogo
WHERE nome = 'Elden Ring';

SELECT * FROM Jogo ORDER BY nome;

SELECT * FROM jogo ORDER BY ranking DESC;

SELECT * FROM Jogo 
WHERE nome LIKE 'E%';

SELECT * FROM Jogo
WHERE nome LIKE '%t';

SELECT * FROM Jogo
WHERE nome LIKE '_e%';

SELECT * FROM Jogo
WHERE nome LIKE '%n_';

SELECT * FROM Jogo
WHERE nome != 'Minecraft';

DROP TABLE Jogo;
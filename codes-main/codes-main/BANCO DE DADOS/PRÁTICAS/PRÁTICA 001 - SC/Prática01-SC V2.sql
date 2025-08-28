-- NOME: Victor Rafael Lourenço Oliveira RA: 01242004

-- Criar database e seleciona-la
CREATE DATABASE sprint1;
USE sprint1;

-- Exercício 1 

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


-- Exibir todos os dados da tabela    
SELECT * FROM Atleta;

-- Atualizar a quantidade de medalhas do atleta com id=1
UPDATE Atleta SET qtdMedalha = 3
	WHERE idAtleta = 1;

-- Atualizar a quantidade de medalhas do atleta com id=2 e com o id=3     
UPDATE Atleta SET qtdMedalha = 6
	WHERE idAtleta = 2;
    
UPDATE Atleta SET qtdMedalha = 9
	WHERE idAtleta = 3;

-- Atualizar o nome do atleta com o id=4     
UPDATE Atleta SET nome = 'Junin de Paula'
	WHERE idAtleta = 4;
 
-- Adicionar o campo dtNasc na tabela, com a data de nascimento dos atletas, tipo date  
ALTER TABLE Atleta
ADD dtNasc date;

-- Atualizar a data de nascimento de todos os atletas
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

-- Excluir o atleta com o id=5;
DELETE FROM ATLETA WHERE idAtleta = 5;

-- Exibir os atletas onde a modalidade é diferente de natação
SELECT * FROM Atleta WHERE modalidade <> 'Natação';

-- Exibir os dados dos atletas que tem a quantidade de medalhas maior ou igual a 3
SELECT * FROM Atleta WHERE qtdMedalha >= 3;

-- Modificar o campo modalidade do tamanho 40 para o tamanho 60
ALTER TABLE Atleta
MODIFY COLUMN modalidade varchar(60);

-- Descrever os campos da tabela mostrando a atualização do campo modalidade
DESC Atleta;

-- Limpar os dados da tabela
TRUNCATE TABLE Atleta;



-- Exercício 2 



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

-- Exibir todos os dados da tabela     
SELECT * FROM Musica;

-- Adicionar o campo curtidas do tipo int na tabela 
ALTER TABLE Musica
ADD curtidas int;

-- Atualizar o campo curtidas de todas as músicas inseridas
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

-- Modificar o campo artista do tamanho 40 para o tamanho 80
ALTER TABLE Musica
MODIFY COLUMN artista varchar(80);

-- Atualizar a quantidade de curtidas da música com id=1
UPDATE Musica
SET curtidas = 29
WHERE idMusica = 1;

-- Atualizar a quantidade de curtidas das músicas com id=2 e com o id=3
UPDATE Musica
SET curtidas = 87
WHERE idMusica = 2;

UPDATE Musica
SET curtidas = 98
WHERE idMusica = 3;

-- Atualizar o nome da música com o id=5
UPDATE Musica
SET titulo = 'PRAY 2 U'
WHERE idMusica = 5;

--  Excluir a música com o id=4
DELETE FROM Musica WHERE idMusica = 4;

-- Exibir as músicas onde o gênero é diferente de funk
SELECT * FROM Musica
	WHERE genero <> 'funk';

-- Exibir os dados das músicas que tem curtidas maior ou igual a 20
SELECT * FROM Musica
	WHERE curtidas >= 20;

-- Descrever os campos da tabela mostrando a atualização do campo artista
DESC Musica;

-- Limpar os dados da tabela
TRUNCATE TABLE Musica;
 


-- Exercício 3
   
   
   
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

-- Exibir todos os dados da tabela
SELECT * FROM Filme;

-- Adicionar o campo protagonista do tipo varchar(50) na tabela     
ALTER TABLE Filme
ADD protagonista varchar(50);

-- Atualizar o campo protagonista de todas os filmes inseridos
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

-- Modificar o campo diretor do tamanho 40 para o tamanho 150
ALTER TABLE Filme
MODIFY COLUMN diretor varchar(150);

-- Atualizar o diretor do filme com id=5
UPDATE Filme
SET diretor = 'John Carpenter'
WHERE idFilme = 5;

-- Atualizar o diretor dos filmes com id=2 e com o id=7
UPDATE Filme
SET diretor = ' Peter Valenciagas'
WHERE idFilme = 2;

UPDATE Filme
SET diretor = 'Peter Parker'
WHERE idFilme = 7; 

-- Atualizar o título do filme com o id=6
UPDATE Filme
SET titulo = 'Desafio dos 100'
WHERE idFilme = 6;

-- Excluir o filme com o id=3
DELETE FROM Filme WHERE idFilme = 3;

-- Exibir os filmes em que o gênero é diferente de drama
SELECT * FROM Filme
WHERE genero <> 'Drama';

-- Exibir os dados dos filmes que o gênero é igual ‘suspense’
SELECT * FROM Filme
WHERE genero = 'Suspense';

-- Descrever os campos da tabela mostrando a atualização do campo protagonista e diretor
DESC Filme;

-- Limpar os dados da tabela
TRUNCATE TABLE Filme;



-- Exercício 4



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

-- Exibir todos os dados da tabela
SELECT * FROM Professor;

-- Adicionar o campo funcao do tipo varchar(50), onde a função só pode ser ‘monitor’, ‘assistente’ ou ‘titular’
ALTER TABLE Professor
ADD funcao varchar(50) CHECK(funcao = 'monitor' OR funcao = 'assistente' OR funcao = 'titular' );
-- Também da pra restringir as opções que funcão pode ter com um código parecido; CHECK (funcao IN ('monitor', 'assistente', 'titular'));

-- Atualizar os professores inseridos e suas respectivas funções
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

-- Inserir um novo professor
INSERT INTO Professor VALUES
	(7, 'Monica', 'Geografia', '2001-01-21', 'titular');
   
-- Excluir o professor onde o idProfessor é igual a 5
DELETE FROM Professor WHERE idProfessor = 5;

-- Exibir apenas os nomes dos professores titulares
SELECT * FROM Professor
	WHERE funcao = 'titular';

-- Exibir apenas as especialidades e as datas de nascimento dos professores monitores    
SELECT especialidade, dtNasc FROM Professor
	WHERE funcao = 'monitor';

-- Atualizar a data de nascimento do idProfessor igual a 3
UPDATE Professor
SET dtNasc = '1999-10-23'
WHERE idProfessor = 3;

-- Limpar a tabela Professor
TRUNCATE TABLE Professor;



-- Exercício 5



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
    
-- Exibir todos os dados da tabela
SELECT * FROM Curso;

-- Exibir apenas os coordenadores dos cursos
SELECT coordenador FROM Curso;

-- Exibir apenas os dados dos cursos de uma determinada sigla
SELECT * FROM Curso
	WHERE sigla LIKE 'ADS';
    
-- Exibir os dados da tabela ordenados pelo nome do curso
SELECT * FROM Curso ORDER BY nome;

-- Exibir os dados da tabela ordenados pelo nome do coordenador em ordem decrescente
SELECT * FROM Curso ORDER BY coordenador desc;

-- Exibir os dados da tabela, dos cursos cujo nome comece com uma determinada letra
SELECT * FROM Curso
	WHERE nome LIKE 'C%';
    
-- Exibir os dados da tabela, dos cursos cujo nome termine com uma determinada letra
SELECT * FROM Curso
	WHERE nome LIKE '%o';

-- Exibir os dados da tabela, dos cursos cujo nome tenha como segunda letra uma determinada letra
SELECT * FROM Curso
	WHERE nome LIKE '_i%';
    
-- Exibir os dados da tabela, dos cursos cujo nome tenha como penúltima letra uma determinada letra
SELECT * FROM Curso
	WHERE nome LIKE '%a_';
    
-- Elimine a tabela    
DROP TABLE Curso;



-- Exercício 6



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
    
-- Exibir todos os dados da tabela
SELECT * FROM Revista;

-- Atualize os dados das categorias das 3 revistas inseridas. Exibir os dados da tabela novamente para verificar se atualizou corretamente

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

-- Insira mais 3 registros completos
INSERT INTO Revista (nome, categoria) VALUES
	('Capricho', 'Moda'),
    ('Ana Maria', 'Receita'),
    ('Tititi', 'Fofoca'),
    ('Fiocruz', 'Estudo Científico');
    
-- Exibir novamente os dados da tabela
SELECT * FROM Revista;

-- Exibir a descrição da estrutura da tabela
DESC Revista;

-- Alterar a tabela para que a coluna categoria possa ter no máximo 40 caracteres
ALTER TABLE Revista
MODIFY COLUMN categoria varchar(40);

-- Exibir novamente a descrição da estrutura da tabela, para verificar se alterou o tamanho da coluna categoria
DESC Revista;

-- Acrescentar a coluna periodicidade à tabela, que é varchar(15)
ALTER TABLE Revista
ADD periodicidade varchar(15);

-- Exibir os dados da tabela
SELECT * FROM Revista;

-- Excluir a coluna periodicidade da tabela
ALTER TABLE Revista
DROP COLUMN periodicidade;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
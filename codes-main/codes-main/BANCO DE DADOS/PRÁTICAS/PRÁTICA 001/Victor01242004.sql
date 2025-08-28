-- Criação e abertura da database
CREATE DATABASE sprint1;
USE sprint1; 

-- Criação da tabela atleta 
	CREATE TABLE atleta ( 
	idAtleta int primary key,
	nome varchar(40),
	modalidade varchar(40),
    qtdMedalha int );
    
-- Exibir dados da tabela
    desc atleta;
    
-- Adicionar dados na tabela

    INSERT INTO atleta VALUES
    (1001, 'Fan Zhendong', 'Tênis De Mesa', 1),
    (1002, 'Alexis Lebrun', 'Tênis De Mesa', 1),
    (1003, 'Rebeca Andrade', 'Ginástica Artística', 1),
    (1004, 'Simone Biles', 'Ginástica Artística', 4),
    (1005, 'Beatriz Souza', 'Judô', 1),
    (1006, 'Natsumi Tsunoda', 'Judô', 2);
    
-- Exibir todos os dados da tabela
	SELECT * FROM atleta;
-- Exibir apenas nomes e quantidade de medalhas.
	SELECT nome, qtdMedalha FROM atleta;
-- Exibir os dados de apenas uma modalidade.
	SELECT * FROM atleta
		WHERE modalidade LIKE 'Ginástica Artística';
-- Exibir os dados da tabela ordenados pela modalidade.
	SELECT * FROM atleta ORDER BY modalidade;
-- Exibir os dados da tabela ordenados pela quantidade de medalhas, em ordem decrescente.
	SELECT * FROM atleta ORDER BY qtdMedalha desc;
-- Exibir os dados da tabela, dos atletas cujo nome contenha a letra s.
	SELECT * FROM atleta
		WHERE nome LIKE '%s%';
-- Exibir os dados da tabela, dos atletas cujo nome comece com determinada letra. 
	SELECT * FROM atleta
		WHERE nome LIKE 'f%';
-- Exibir os dados da tabela, dos atletas cujo nome termine com a letra o. 
	SELECT * FROM atleta
		WHERE nome LIKE '%o';
-- Exibir os dados da tabela, dos atletas cujo nome tenha a penúltima letra r. 
	SELECT * FROM atleta
		WHERE nome LIKE '%r_';
	
-- Eliminar a tabela
DROP TABLE atleta;


-- Criação da tabela Musica 
	CREATE TABLE Musica ( 
	idMusica int primary key,
    titulo varchar(40),
	artista varchar(40),
	genero varchar(40)  );
        
-- Inserir dados na tabela
	INSERT INTO Musica VALUES
	(101, 'Fish Man', 'Hotel Ugly', 'Indie'),
    (102, 'Front Desk', 'Hotel Ugly', 'Indie'),
    (103, 'Billie Jean', 'Michael Jackson', 'Pop'),
    (104, 'Beat It', 'Michael Jackson', 'Pop'),
    (105, 'DEVIL IS A LIE', 'Tommy Richman', 'Rap'),
    (106, 'FOGGY', 'Tommy Richman', 'Rap'),
    (107, 'In My Room', 'Frank Ocean', 'Soul');
    
-- Exibir todos os dados da tabela.
	SELECT * FROM Musica;
-- Exibir apenas os títulos e os artistas das músicas.
	SELECT titulo, artista FROM Musica;
-- Exibir apenas os dados das músicas de um determinado gênero.
	SELECT * FROM Musica
		WHERE genero LIKE 'Rap';
-- Exibir apenas os dados das músicas de um determinado artista.
	SELECT * FROM Musica
		WHERE artista LIKE 'Tommy Richman';
-- Exibir os dados da tabela ordenados pelo título da música.
	SELECT * FROM Musica ORDER BY titulo;
-- Exibir os dados da tabela ordenados pelo artista em ordem decrescente. 
	SELECT * FROM Musica ORDER BY artista desc;
-- Exibir os dados da tabela, das músicas cujo título comece com uma determinada letra.
	SELECT * FROM Musica
		WHERE titulo LIKE 'B%';
-- Exibir os dados da tabela, das músicas cujo artista termine com uma determinada letra.
	SELECT * FROM Musica
		WHERE artista LIKE '%n';
-- Exibir os dados da tabela, das músicas cujo gênero tenha como segunda letra uma determinada letra.
	SELECT * FROM Musica
		WHERE genero LIKE '_o%';
-- Exibir os dados da tabela, das músicas cujo título tenha como penúltima letra uma determinada letra. 
	SELECT * FROM Musica
		WHERE titulo LIKE '%i_';
        
DROP TABLE Musica;        


-- Criação da tabela Filme 
	CREATE TABLE Filme ( 
	idFilme int primary key,
    titulo varchar(50),
	genero varchar(40),
	diretor varchar(40) );
    
-- Inserir dados na tabela
	INSERT INTO Filme VALUES
	(1101, 'Batman: O Cavaleiro das Trevas', 'Ação', 'Christopher Nolan'),    
	(1102, 'Interestelar', 'Ficção Científica', 'Christopher Nolan'),
	(1103, 'A Bruxa', 'Terror', 'Robert Eggers'),
    (1104, 'Hereditário', 'Terror', 'Ari Aster'),
    (1105, 'Gente Grande', 'Comédio', 'Dennis Dugan'),
    (1106, 'Tá Chovendo Hambúrguer', 'Infantil', 'Phil Lord'),
    (1107, 'No Limite do Amanhã', 'Ação', 'Doug Liman');
    
--  Exibir todos os dados da tabela.   
	SELECT * FROM Filme;
--  Exibir apenas os títulos e os diretores do filme.
	SELECT titulo, diretor FROM Filme;
--  Exibir apenas os dados dos filmes de um determinado gênero.
	SELECT * FROM Filme
		WHERE genero LIKE 'Terror';
--  Exibir apenas os dados dos filmes de um determinado diretor.       
	SELECT * FROM Filme
		WHERE diretor LIKE 'Christopher Nolan';
--  Exibir os dados da tabela ordenados pelo título.       
	SELECT * FROM Filme ORDER BY titulo;
--  Exibir os dados da tabela ordenados pelo diretor em ordem decrescente.   
    SELECT * FROM Filme ORDER BY diretor desc;
--  Exibir os dados da tabela, dos filmes cujo título comece com uma determinada letra.   
    SELECT * FROM Filme 
		WHERE titulo LIKE 'a%';
--  Exibir os dados da tabela, dos filmes cujo título termine com uma determinada letra.       
	SELECT * FROM Filme
		WHERE titulo LIKE '%o';
--  Exibir os dados da tabela, dos filmes cujo genêro tenha como segunda letra uma determinada letra.
    SELECT * FROM Filme
		WHERE genero LIKE '_e%';
--  Exibir os dados da tabela, dos filmes cujo genêro tenha como penúltima letra uma determinada letra.   
    SELECT * FROM Filme
		WHERE titulo LIKE '%a_';
		
DROP TABLE Filme; 
    
    
-- Criação da tabela Professor
	CREATE TABLE Professor ( 
	idProfessor int primary key,
    nome varchar(50),
	especialidade varchar(40),
	dtNasc date            );
    
-- Inserir dados na tabela
	INSERT INTO Professor VALUES
    (10001, 'Jeferson', 'Nutrologo', '1991-10-05'),
    (10002, 'Cleber', 'Biologia', '1989-08-12'),
    (10003, 'Vivian', 'Banco de Dados', '2005-10-23'),
    (10004, 'Matheus', 'Matematica', '1983-02-05'),
    (10005, 'Joilson', 'Fisica', '1987-04-09'),
    (10006, 'Brenda', 'Biologia', '1991-09-30');
    
--  Exibir todos os dados da tabela.    
	SELECT * FROM Professor;
--  Exibir apenas as especialidades dos professores.
	SELECT especialidade FROM Professor; 
--  Exibir os dados dos professores de uma determinada especialidade.
	SELECT * FROM Professor
		WHERE especialidade LIKE 'Biologia';
-- Exibir os dados da tabela ordenados pelo nome dos professores.     
	SELECT * FROM Professor ORDER BY nome;
-- Exibir os dados da tabela ordenados pela data de nascimento do professor em ordem decrescente. 
	SELECT * FROM Professor ORDER BY dtNasc asc;
-- ( Percebi que o comando desc (decrescente) acaba executando o comando em ordem crescente com datas, 
--   então utilizei o asc (crescente) para testar se acontecia o reverso e deu certo.                  )
-- ()

-- Exibir os dados da tabela, dos professores cujo nome comece com uma determinada letra.
	SELECT * FROM Professor
		WHERE nome LIKE 'V%';
-- Exibir os dados da tabela, dos professores cujo nome termine com uma determinada letra.   
	SELECT * FROM Professor
		WHERE nome LIKE '%n';
-- Exibir os dados da tabela, dos professores cujo nome tenha como segunda letra uma determinada letra.        
	SELECT * FROM Professor
		WHERE nome LIKE '_e%';
-- Exibir os dados da tabela, dos professores cujo nome tenha como penúltima letra uma determinada letra.      
	SELECT * FROM Professor
		WHERE nome LIKE '%o_';

DROP TABLE Professor;    

    
-- Criação da tabela Curso
	CREATE TABLE Curso( 
	idCurso int primary key,
    nome varchar(50),
    sigla varchar(3),
	coordenador varchar(40) ); 
    
-- Inserir dados na tabela    
	INSERT INTO Curso VALUES
    (1, 'Análise e Desenvolvimento de Sistemas', 'ADS', 'Gerson'),
	(2, 'Ciência da Computação', 'CCO', 'Alex'),
    (3, 'Sistemas de Informação', 'SIS', 'Brandão');
    
-- Exibir todos os dados da tabela.
	SELECT * FROM Curso;
-- Exibir apenas os coordenadores dos cursos.
	SELECT coordenador FROM Curso;
-- Exibir apenas os dados dos cursos de uma determinada sigla.
	SELECT * FROM Curso
		WHERE sigla LIKE 'ADS';
-- Exibir os dados da tabela ordenados pelo nome do curso.
	SELECT * FROM Curso ORDER BY nome; 
-- Exibir os dados da tabela ordenados pelo nome do coordenador em ordem decrescente.
	SELECT * FROM Curso ORDER BY coordenador desc;
-- Exibir os dados da tabela, dos cursos cujo nome comece com uma determinada letra.
	SELECT * FROM Curso
		WHERE nome LIKE 'C%';
-- Exibir os dados da tabela, dos cursos cujo nome termine com uma determinada letra.
	SELECT * FROM Curso
		WHERE nome LIKE '%o';
-- Exibir os dados da tabela, dos cursos cujo nome tenha como segunda letra uma determinada letra.
	SELECT * FROM Curso
		WHERE nome LIKE '_i%';
-- Exibir os dados da tabela, dos cursos cujo nome tenha como penúltima letra uma determinada letra.
	SELECT * FROM Curso
		WHERE nome LIKE '%a_';

DROP TABLE Curso;


-- Criação da tabela Revista
	CREATE TABLE Revista( 
	idRevista int primary key AUTO_INCREMENT,
    nome varchar(40),
    categoria varchar(30) );
    
-- Inserir dados na tabela
INSERT INTO Revista (nome) VALUES
	('Veja'),
    ('Epoca'),
    ('Quatro Rodas'),
    ('Estadao');

-- Exibir os dados da tabela.
SELECT * FROM Revista; 
-- Atualize os dados das categorias das 3 revistas inseridas. Exibir os dados da tabela novamente para verificar se atualizou corretamente.
UPDATE Revista SET 
	categoria = 'Notícia' 
WHERE idRevista = 1;
-- 
UPDATE Revista SET 
	categoria = 'Notícia' 
WHERE idRevista = 2;
--    
UPDATE Revista SET 
	categoria = 'Vendas' 
WHERE idRevista = 3;

UPDATE Revista SET 
	categoria = 'Notícia' 
WHERE idRevista = 4;

-- Exibir os dados da tabela.
SELECT * FROM Revista; 

-- Insira mais 3 registros completos.
INSERT INTO Revista (nome, categoria) VALUES
	('OGlobo', 'Notícia'),
    ('Eudora', 'Vendas'),
    ('Capricho', 'Entreterimento'),
    ('Recreio', 'Entreterimento');

-- Exibir os dados da tabela.
SELECT * FROM Revista; 

-- Exibir a descrição da estrutura da tabela.
desc Revista;

-- Alterar a tabela para que a coluna categoria possa ter no máximo 40 caracteres.
ALTER TABLE Revista
MODIFY COLUMN categoria varchar(40);

-- Exibir novamente a descrição da estrutura da tabela, para verificar se alterou o tamanho da coluna categoria.
desc Revista;

-- Acrescentar a coluna periodicidade à tabela, que é varchar(15).
ALTER TABLE Revista
ADD periodicidade varchar(15);

-- Exibir os dados da tabela.
SELECT * FROM Revista;

-- Excluir a coluna periodicidade da tabela.
ALTER TABLE Revista
DROP COLUMN periodicidade;

-- Exibir os dados da tabela para checar se a coluna periodicidade foi exluída.
SELECT * FROM Revista;


-- Fim da atividade.
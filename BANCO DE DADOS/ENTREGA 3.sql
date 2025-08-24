-- EX 1
CREATE DATABASE game_store;
USE game_store;

CREATE TABLE jogos(
id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(30),
diretor VARCHAR(30),
genero CHAR(30),
dtLancamento DATE,
nota INT,
quantidade INT 
);

-- Insira pelo menos 5 registros para a tabela.
INSERT INTO jogos(nome, diretor, genero, dtLancamento, nota, quantidade) VALUES
('Elden Ring', 'Hidetaka Miyazaki', 'Soulslike', '2022-02-25', 10, 657),
('The Elder Scrolls V: Skyrim', 'Todd Howard', 'RPG', '2011-11-11', 10, 172),
('League of Legends', 'Andrei Van Roon', 'MOBA', '2009-08-27', 4, 982),
('Minecraft', 'Markus Persson', 'Sandbox', '2011-11-18', 7, 28),
('Mortal Kombat 1', 'Paulo Garcia', 'Luta', '2023-07-19', 7, 428);

SELECT * FROM jogos;

-- Altere a tabela para inserir uma coluna que represente o tipo de mídia que
-- deve armazenar o tipo de jogo apenas com os valores “física” ou “digital”.
ALTER TABLE jogos ADD COLUMN midia VARCHAR(7) CONSTRAINT chkMidia CHECK(midia IN('fisica', 'digital'));

-- Atualize os registros dos jogos inseridos anteriormente.
UPDATE jogos SET midia = 'fisica'
WHERE id IN (1, 2, 5);

UPDATE jogos SET midia = 'digital'
WHERE id IN (3, 4);

SELECT * FROM jogos;

-- Exiba apenas os jogos com data de lançamento a partir de 2015.
SELECT nome FROM jogos
WHERE dtLancamento >= '2015-01-01';

-- Exiba os jogos que tenham a letra “a” em seu nome e são de mídia física.
SELECT nome FROM jogos
WHERE nome LIKE '%a%' AND midia = 'fisica';

-- Exiba os jogos onde o nome do diretor não contenha a letra “e”
SELECT nome FROM jogos
WHERE diretor NOT LIKE '%e%';

-- Altere a tabela para criar uma checagem na inserção da nota, onde o valor não pode ser menor que 0 e nem maior que 10.
ALTER TABLE jogos ADD CONSTRAINT chkNota CHECK(nota BETWEEN 0 AND 10);

-- Exiba os jogos de um determinado gênero e que ainda esteja em estoque.
SELECT nome FROM jogos
WHERE genero = 'RPG' AND quantidade >= 1;

-- Exclua os jogos que não têm mais unidades disponíveis em estoque.
-- EXCLUIR ATRAVÉS DO DELETE SEM UTILIZAR O ID ESPECIFICO NÃO É POSSÍVEL
INSERT INTO jogos(nome, diretor, genero, dtLancamento, nota, quantidade) VALUES
('Chiquinho Simulator', 'Jose da Padaria', 'Terror', '2017-10-05', 1, 0);

SELECT * FROM jogos;

DELETE FROM jogos
WHERE id = 6;

SELECT * FROM jogos;

-- Renomeie a coluna “diretor” para “criador” e exiba como ficou a estrutura da tabela. 

ALTER TABLE jogos RENAME COLUMN diretor TO criador;

DESCRIBE jogos;










-- EX 2
CREATE DATABASE olimpiadas;
USE olimpiadas;

CREATE TABLE esporte(
idEsporte INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(40),
categoria VARCHAR(20),
qtdJogadores INT,
estreia DATE,
paisOrigem VARCHAR(30),
CONSTRAINT chkCategoria CHECK (categoria IN('Individual', 'Coletivo'))
);

-- Insira pelo menos 5 registros na tabela.
INSERT INTO esporte (nome, categoria, qtdJogadores, estreia, paisOrigem) VALUES
('Atletismo', 'Individual', 1, '1896-04-06', 'Grécia'),
('Futebol', 'Coletivo', 11, '1900-10-23', 'Inglaterra'),
('Judô', 'Individual', 1, '1964-10-10', 'Japão'),
('Basquete', 'Coletivo', 5, '1936-08-07', 'Estados Unidos'),
('Vôlei', 'Coletivo', 6, '1964-10-13', 'Estados Unidos'),
('Taekwondo', 'Individual', 1, '2000-09-27', 'Coreia do Sul'),
('Skateboarding', 'Individual', 1, '2021-07-25', 'Estados Unidos');

SELECT * FROM esporte;


-- Altere a tabela para adicionar uma coluna popularidade que armazene a popularidade do esporte como um valor decimal entre 0 e 10 e exiba como ficou a estrutura da tabela.
ALTER TABLE esporte ADD COLUMN popularidade DECIMAL(4,2);
describe esporte;

-- Atualize os registros para definir a popularidade dos esportes inseridos anteriormente.
UPDATE esporte SET popularidade = 9.50  WHERE idEsporte = 1; 
UPDATE esporte SET popularidade = 10.00 WHERE idEsporte = 2; 
UPDATE esporte SET popularidade = 8.30  WHERE idEsporte = 3; 
UPDATE esporte SET popularidade = 9.10  WHERE idEsporte = 4; 
UPDATE esporte SET popularidade = 7.85  WHERE idEsporte = 5; 
UPDATE esporte SET popularidade = 6.40  WHERE idEsporte = 6; 
UPDATE esporte SET popularidade = 5.75  WHERE idEsporte = 7; 

-- Exiba os esportes ordenados por popularidade em ordem crescente.
SELECT nome FROM esporte ORDER BY popularidade ASC;

-- Exiba apenas os esportes que estrearam nas Olimpíadas a partir do ano 2000.
SELECT nome FROM esporte WHERE estreia >= '2000-01-01'; 

-- Crie uma checagem para que não possa ser inserido valores dentro de estreia que seja menor que 06 de abril de 1896 e depois da data atual.
ALTER TABLE esporte ADD CONSTRAINT chkEstreia CHECK (estreia >= '1896-04-06' AND estreia <= '2025-08-24');

-- Altere a tabela para excluir a regra de inserção de categoria, assim podendo colocar valores além de "Individual" ou "Coletivo".
ALTER TABLE esporte DROP CONSTRAINT chkCategoria;

INSERT INTO esporte (nome, categoria, qtdJogadores, estreia, paisOrigem, popularidade)
VALUES ('Escalada Esportiva', 'Individualissima', 1, '2021-08-03', 'França', 7.80);

SELECT * FROM esporte;

-- Exiba apenas os esportes cujo nome do país de origem tenha "a" na segunda letra.
SELECT nome FROM esporte
WHERE paisOrigem LIKE '_a%';

-- Exiba os dados onde o número de jogadores por equipe esteja entre 4 e 11.
SELECT * FROM esporte
WHERE qtdJogadores BETWEEN 4 AND 11;

-- Remova os registros onde id seja 1, 3 e 5
DELETE FROM esporte WHERE idEsporte = 1;
DELETE FROM esporte WHERE idEsporte = 3;
DELETE FROM esporte WHERE idEsporte = 5;

SELECT * FROM esporte;





-- EX 3
CREATE DATABASE desenho;
USE desenho;

CREATE TABLE desenho_animado(
id INT PRIMARY KEY AUTO_INCREMENT,
titulo CHAR(50),
dtLancamento DATE,
nomeEmissora CHAR(50),
classificacao VARCHAR(2),
statusDesenho CHAR(15),
nota INT,
CONSTRAINT chkNota CHECK (nota BETWEEN 1 AND 5)
)AUTO_INCREMENT = 10; 

INSERT INTO desenho_animado (titulo, dtLancamento, nomeEmissora, classificacao, statusDesenho, nota) VALUES
('Tom & Jerry', '1940-02-10', 'MGM', 'L', 'Finalizado', 4),
('Bob Esponja', '1999-05-01', 'Nickelodeon', 'L', 'Exibindo', 4),
('Dragon Ball Z', '1989-04-26', 'Fuji TV', '12', 'Finalizado', 2),
('Pica-Pau', '1940-07-06', 'Paramount', 'L', 'Cancelado', 5),
('Pokémon', '1997-04-01', 'TV Tokyo', 'L', 'Exibindo', 3),
('Hora de Aventura', '2010-04-05', 'Cartoon Network', '10', 'Finalizado', 4);

-- Exibir todos os dados da tabela
SELECT * FROM desenho_animado;

-- Exibir todos os desenhos com a classificação menor ou igual a 14 anos
SELECT titulo FROM desenho_animado 
WHERE classificacao = 'L' OR classificacao = '10' OR classificacao = '12' OR classificacao = '14';

-- Exibir todos os desenhos de uma mesma emissora original
INSERT INTO desenho_animado (titulo, dtLancamento, nomeEmissora, classificacao, statusDesenho, nota) VALUES
('Tom & Jerry', '2012-04-27', 'Cartoon Network', '10', 'Finalizado', 5);

SELECT * FROM desenho_animado
WHERE nomeEmissora = 'Cartoon Network';

-- Modificar o campo status, para que aceite apenas o status 'exibindo', 'finalizado', 'cancelado', tente inserir algum outro valor para ver se a regra foi aplicada
ALTER TABLE desenho_animado ADD CONSTRAINT chkStatus CHECK (statusDesenho IN('Finalizado', 'Cancelado', 'Exibindo'));

-- Modificar o status 'exibindo' para 'finalizado' de 2 desenhos pelo ID
SELECT * FROM desenho_animado;

UPDATE desenho_animado SET statusDesenho = 'Finalizado'
WHERE id = 11;

UPDATE desenho_animado SET statusDesenho = 'Finalizado'
WHERE id = 14;

-- Deletar a linha do desenho de ID 12
DELETE FROM desenho_animado
WHERE id = 12;

-- Exibir apenas os desenhos que comecem com uma determinada letra
SELECT titulo FROM desenho_animado
WHERE titulo LIKE 'P%';

-- Renomear a coluna classificacao para classificacaoIndicativa
ALTER TABLE desenho_animado RENAME COLUMN classificacao TO classificacaoIndicativa;

-- Atualizar a nota e data de lançamento do desenho de ID 11
UPDATE desenho_animado SET dtLancamento = '2025-08-24'
WHERE id = 11;

-- Limpe todos os dados da tabela
TRUNCATE desenho_animado;

-- Remover a regra do status do desenho
ALTER TABLE desenho_animado DROP CONSTRAINT chkStatus;









-- EX 4
CREATE DATABASE estoque;
USE estoque;

CREATE TABLE misteriosSA(
idEstoque INT PRIMARY KEY,
nome VARCHAR(40),
dtCompra DATE,
preco FLOAT,
peso INT,
dtRetirada DATE
);

-- Insira na tabela, no mínimo 5 compras de alimentos com datas diferentes. Por agora, não preencha a coluna referente a "data de retirada".
INSERT INTO misteriosSA (idEstoque, nome, dtCompra, preco, peso) VALUES
(1, 'Arroz', '2025-01-10', 24.90, 5000),
(2, 'Feijão Preto', '2025-01-15', 8.50, 1000),
(3, 'Macarrão Espaguete', '2025-02-02', 4.75, 500),
(4, 'Carne Bovina', '2025-02-20', 38.90, 1000),
(5, 'Queijo Mussarela', '2025-03-05', 22.30, 500),
(6, 'Biscoitos Scooby', '2025-08-01', 50.50, 2000),
(7, 'Cachorro-quente', '2025-08-12', 20.00, 2500);

-- Verifique se os valores foram inseridos corretamente.
SELECT * FROM misteriosSA;

-- Exiba os nomes, as datas de compra e retirada e o id dos alimentos ordenados a partir da data de compra mais antiga.
SELECT nome, dtCompra, dtRetirada, idEstoque FROM misteriosSA ORDER BY dtCompra ASC;

-- Alguém comeu uma caixa de biscoitos, atualize a data de retirada da caixa de “Biscoitos Scooby” que foi comprada a mais tempo.
UPDATE misteriosSA SET dtRetirada = '2025-08-24'
WHERE idEstoque = 6;

-- Altere o nome da coluna id para idComida.
ALTER TABLE misteriosSA RENAME COLUMN idEstoque TO idComida;

-- Altere o tipo do check para que os alimentos só possam ser “Biscoitos Scooby” ou “Cachorro-quente”.
UPDATE misteriosSA SET nome = 'Biscoitos Scooby' WHERE idComida = 1;
UPDATE misteriosSA SET nome = 'Biscoitos Scooby' WHERE idComida = 3;
UPDATE misteriosSA SET nome = 'Biscoitos Scooby' WHERE idComida = 4;
UPDATE misteriosSA SET nome = 'Cachorro-quente' WHERE idComida = 2;
UPDATE misteriosSA SET nome = 'Cachorro-quente' WHERE idComida = 5;

ALTER TABLE misteriosSA ADD CONSTRAINT chkAlimentos CHECK (nome IN('Biscoitos Scooby', 'Cachorro-quente'));	

-- Exiba os produtos onde o nome seja "Biscoitos Scooby" de forma que o nome das colunas dataCompra apareça como "data da compra" e dataRetirada apareça como "data da retirada".
SELECT nome, dtCompra AS 'Data da Compra', dtRetirada AS 'Data da Retirada' FROM misteriosSA
WHERE nome = 'Biscoitos Scooby'; 

-- Exiba os alimentos que foram comprados antes do dia 25 de julho de 2024.
SELECT nome FROM misteriosSA
WHERE dtCompra < '2024-07-25';

-- Exiba os alimentos que possuem um preço acima ou igual a 30.50.
SELECT nome FROM misteriosSA
WHERE preco >= 30.50;

-- Limpe a tabela.
TRUNCATE misteriosSA;
SELECT * FROM misteriosSA;









-- EX 5 
CREATE DATABASE vingadores;
USE vingadores;

CREATE TABLE heroi(
id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45),
versao VARCHAR(45),
habilidade VARCHAR(20),
altura INT
);

INSERT INTO heroi (nome, versao, habilidade, altura) VALUES
('Homem-Aranha', 'Homem-Aranha: Sem Volta Para Casa', 'Teias', 178),
('Mulher-Maravilha', 'Mulher-Maravilha 1984', 'Força', 183),
('Pantera Negra', 'Pantera Negra', 'Reflexos', 188),
('Capitão América', 'Capitão América: O Primeiro Vingador', 'Força', 188),
('Thor', 'Thor: Ragnarok', 'Raio', 198);

-- Exiba os dados inseridos na tabela
SELECT * FROM heroi;

-- Adicione um campo de regeneração, onde ele aceitará apenas os valores booleanos de TRUE ou FALSE.
ALTER TABLE heroi ADD COLUMN regeneracao BOOL;

-- Modifique o campo versão para aceitar até 100 caracteres.
ALTER TABLE heroi MODIFY COLUMN versao VARCHAR(100);

-- Remova o herói de id 3 pois ele se morreu em batalha.
DELETE FROM heroi
WHERE id = 3;

-- Chegou reforços, insira um novo herói para a equipe.
INSERT INTO heroi(nome, versao, habilidade, altura, regeneracao) VALUES
('Flash', 'Flash', 'Velocidade', '175', TRUE);

-- Exiba todos os dados inseridos na tabela onde o nome do herói começa com “C” ou “H”.
SELECT * FROM heroi
WHERE nome LIKE 'C%' OR nome LIKE 'H%';

-- Exiba todos os dados inseridos na tabela onde o nome do herói não contém a letra “A” no campo nome.
SELECT * FROM heroi 
WHERE nome NOT LIKE '%a%';

-- Exiba apenas o nome do herói onde a altura for maior que 190.
SELECT nome FROM heroi 
WHERE altura > 190;

-- Exiba todos os dados da tabela de forma decrescente pelo nome onde a altura do herói for maior que 180.
SELECT * FROM heroi 
WHERE altura > 180 ORDER BY nome DESC;

-- Limpe os dados da tabela.
TRUNCATE heroi;












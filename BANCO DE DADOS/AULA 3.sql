/* 
NÚMEROS DECIMAIS
FLOAT - 7 CARACTERES
DOUBLE - 15 CARACTERES
DECIMAL() - É NECESSÁRIO UTILIZAR PARÂMETROS, ACEITANDO EM MYSQL 32 CARACTERES
-- PESO - 999,99KG
-- DECIMAL (5, 2) 
-- 5 SENDO O TOTAL DE CARACTERES E 2 AS CASAS APÓS A VIRGULA DENTRO DESSE TOTAL.
-- PARA SEPARAR A CASA DECIMAL, POR EXEMPLO, AO INSERIR ALGUM VALOR, UTILIZAR O PONTO .
*/



USE sprint1;

SHOW TABLES;

CREATE TABLE cadastro(
idCadastro INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(50) NOT NULL,
peso DECIMAL(5,2),
altura FLOAT,
plano VARCHAR(40),
CONSTRAINT chkPlano CHECK(plano IN('Mensal', 'Semanal', 'Avulso')),
dtCadastro DATETIME DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO cadastro( nome, peso, altura, plano) VALUES
('Dexter', 90.50, 1.67, 'Mensal'),
('Damon', 72.50, 1.90, 'Avulso'),
('Dean', 81.30, 1.78, 'Mensal'),
('Blair', 49.10, 1.42, 'Semanal'),
('Walter', 88.40, 1.81, 'Avulso');

SELECT * FROM cadastro;

-- EXIBIÇÃO DE DADOS

SELECT nome, peso, altura FROM cadastro;

-- ALIAS - "APELIDAR" COLUNA
SELECT nome AS NomeAluno FROM cadastro;
SELECT nome AS 'Nome do Aluno' FROM cadastro;

SELECT nome AS 'Nome do Aluno', 
peso AS 'Peso do aluno', 
altura AS 'Altura em Metro', 
plano AS 'Plano de Pagamento', 
dtCadastro AS 'Data de Cadastro no Sistema'
FROM cadastro;

-- CRIAR FRASES
-- CONCAT (CONCATENAR)

SELECT CONCAT(nome, plano) FROM cadastro;

SELECT CONCAT('O aluno ', nome, ' escolheu o plano de pagamento', ' ', plano, '!') 
	AS 'Plano de pagamento do aluno' 
FROM cadastro;

-- IF ELSE 
-- CASE
SELECT nome,
	CASE
    WHEN plano = 'Mensal' THEN '30 DIAS!'
    WHEN plano = 'Semanal' THEN '7 DIAS!'
    WHEN plano = 'Avulso' THEN '1 DIAS!'
    ELSE 'Sem plano'
    END AS 'Plano de Pagamento'
    FROM cadastro;

SELECT nome,
	CASE
    WHEN plano = 'Mensal' THEN 'Plano Mensal'
    ELSE 'Plano não Mensal'
    END AS 'Plano de Pagamento'
    FROM cadastro;
    
INSERT INTO cadastro(nome, plano) VALUES
('Barbie', null);

UPDATE cadastro SET NOME =
	CASE 
    WHEN nome = 'Dexter' THEN 'Dexter the Best'
    WHEN nome = 'Blair' THEN 'Blair the Witch'
    END
    WHERE idCadastro IN (1, 4);
   
SELECT * FROM cadastro;







 
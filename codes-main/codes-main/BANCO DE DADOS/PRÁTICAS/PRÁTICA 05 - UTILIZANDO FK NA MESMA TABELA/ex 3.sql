CREATE DATABASE listaEx;
USE listaEx;

CREATE TABLE aluno(
idAluno INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45),
fkMonitor INT);

INSERT INTO aluno (nome) VALUES
('Victor'),
('Isabela'),
('Julia'),
('Moises'),
('Eduarda');

SELECT * FROM aluno;

ALTER TABLE aluno ADD CONSTRAINT chMonitorPessoa
FOREIGN KEY (fkMonitor)
REFERENCES aluno(idAluno);

UPDATE aluno
SET fkMonitor = 2
WHERE idAluno = 1;

UPDATE aluno
SET fkMonitor = 3
WHERE idAluno = 2;

UPDATE aluno
SET fkMonitor = 2
WHERE idAluno = 3;

UPDATE aluno
SET fkMonitor = 3
WHERE idAluno = 4;

UPDATE aluno
SET fkMonitor = 2
WHERE idAluno = 5;

SELECT * FROM aluno;

SELECT Aluno.nome AS Aluno,
	   Monitor.nome AS Monitor
	FROM aluno AS Aluno
    JOIN aluno AS Monitor
    ON Aluno.fkMonitor = Monitor.idAluno;
    
    SELECT  Aluno.idAluno,
			Aluno.nome AS Aluno,
            Aluno.fkMonitor,
			Monitor.nome AS Monitor
	FROM aluno AS Aluno
    JOIN aluno AS Monitor
    ON Aluno.fkMonitor = Monitor.idAluno;

-- Testar se ele aparece em select
INSERT INTO aluno (nome) VALUES
('Cleber');

SELECT * FROM aluno;

SELECT CASE
	WHEN aluno.nome = 'Julia' THEN 'Monitora'
    WHEN aluno.nome = 'Isabela' THEN 'Monitora'
    END AS 'Função',
    ifnull(monitor.fkMonitor, 'Sem função')
    FROM aluno AS aluno
	JOIN aluno AS monitor
	ON monitor.idAluno = aluno.fkMonitor;


























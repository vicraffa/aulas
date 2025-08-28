CREATE DATABASE sprint2;
USE sprint2;

CREATE TABLE usuario(
idUsuario INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45),
email VARCHAR(45),
fkLogin INT
) auto_increment = 100;

INSERT INTO usuario VALUES
(DEFAULT, 'Alegria', null, null);

SELECT * FROM usuario;

-- ATUALIZANDO O CAMPO PARA UNIQUE JÁ QUE A FK NÃO PODE SE REPETIR POIS O RELACIONAMENTO É 1:1
ALTER TABLE usuario
MODIFY COLUMN fkLogin INT UNIQUE;

DESCRIBE usuario;

CREATE TABLE login(
idLogin INT PRIMARY KEY AUTO_INCREMENT,
username VARCHAR(45),
senha VARCHAR(45),
dataUltimoAcesso DATETIME DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO login VALUES
(DEFAULT, 'Alegria2024', md5('urubu100'), DEFAULT);

SELECT * FROM login;

ALTER TABLE usuario ADD CONSTRAINT fkUsuarioLogin
	FOREIGN KEY (fkLogin) REFERENCES login(idLogin);
    
UPDATE usuario SET fkLogin = 1
WHERE idUsuario = 100;

SELECT * FROM usuario;

INSERT INTO login VALUES
(DEFAULT, 'Alegria Mudada', md5('urubu100'), DEFAULT);

SELECT * FROM login;

INSERT INTO usuario VALUES
(DEFAULT, 'Alegria', 'alegria@alegria.com', 2);

INSERT INTO usuario VALUES
(100, 'Alegria', 'alegria@alegria.com', 1);

UPDATE login SET username = 'Nojinho',
senha = md5('urubu100'), dataUltimoAcesso = DEFAULT
WHERE idLogin = 2;

SELECT * FROM login;
SELECT * FROM usuario;

UPDATE usuario 
SET nome = 'Nojinho', email = 'nojinho@nojinho.com' 
WHERE idUsuario = 100;

UPDATE login
SET username = 'Nojinho'
WHERE idLogin = 1;

UPDATE login
SET username = 'Alegria'
WHERE idLogin = 2;

SELECT * FROM usuario JOIN login
	ON idLogin = fkLogin;
    
SELECT  nome AS NomeUsuario, 
email AS EmailUsuario,
username AS 'Apelido User',
senha AS Criptografada
FROM usuario JOIN login
ON idLogin = fkLogin;

SELECT  u.nome AS NomeUsuario, 
		u.email AS EmailUsuario,
		l.username AS 'Apelido User',
		l.senha AS Criptografada
FROM usuario AS u JOIN login AS l
ON idLogin = fkLogin;

SELECT  u.nome AS NomeUsuario, 
		ifnull(u.email, 'Sem Email') AS EmailUsuario,
		l.username AS 'Apelido User',
		l.senha AS Criptografada
FROM usuario AS u JOIN login AS l
ON idLogin = fkLogin
WHERE senha = md5('urubu100');

INSERT INTO usuario VALUES
(DEFAULT, 'Raiva', NULL, NULL);

SELECT CASE 
	WHEN nome = 'Alegria' THEN 'Muita Alegria'
    ELSE 'Nenhuma Alegria'
    END as tipoAlegria
    FROM usuario;

INSERT INTO login VALUES
(DEFAULT, 'raiva@raiva.com', md5('urubu100'), DEFAULT);

SELECT * FROM usuario;
SELECT * FROM login;


UPDATE usuario SET fkLogin = 3
WHERE idUsuario = 106;





















-- CRIAÇÃO DE TABELAS BASE

CREATE DATABASE portal_de_materias;


CREATE TABLE especialistas (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    especialidade VARCHAR(100) NOT NULL
);

-- Insira os dados na tabela especialistas para que a tabela dicas possa ser criada

INSERT INTO especialistas (nome, especialidade) VALUES
('Liliana de Castro', 'Apresentadora'),
('Ana Beatriz', 'Estudante de Química'),
('Renato Alves', 'Pesquisador Cognitivo'),
('Gabriel Cabral', 'Professor de Química'),
('Rubens Castilho', 'Professor de Química');

-- Insira os dados na tabela especialistas para que a tabela entrevistas possa ser criada

INSERT INTO especialistas (nome, especialidade) VALUES
('Andressa Bruscato', 'Mestre Bioquimica'),
('João Borghi', 'Estudante SESI');


-- Insira os dados na tabela especialistas para que a tabela noticias possa ser criada
INSERT INTO especialistas (nome, especialidade) VALUES
('Lucas Afonso', 'Químico'),
('Mariana Silva', 'Estudante de Química'),
('Pablo Borghi', 'Pesquisador Cognitivo'),
('Manuela Barbosa', 'Jornalista'),
('Cristina Alves', 'Professora de Química'),
('Alexandre Rodrigues', 'Professor de Quimica');

-- consultando a tabela especialistas
SELECT * FROM especialistas;
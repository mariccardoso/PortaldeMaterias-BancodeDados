-- CRIAÇÃO DE TABELAS BASE

CREATE DATABASE portal_de_materias;


CREATE TABLE especialistas (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    especialidade VARCHAR(100) NOT NULL
)
-- CRIAÇÃO DE TABELAS BASE

CREATE DATABASE portal_de_materias;

CREATE TABLE paginas_diciplinas (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT NOT NULL,
);

CREATE TABLE media (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    tipo VARCHAR(100) NOT NULL,
    url VARCHAR(100) NOT NULL,
    id_pagina INT NOT NULL,
    FOREIGN KEY (id_pagina) REFERENCES paginas_diciplinas(id)
)

CREATE TABLE especialistas (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    id_pagina INT NOT NULL,
    especialidade VARCHAR(100) NOT NULL,

    FOREIGN KEY (id_pagina) REFERENCES paginas_diciplinas(id)
)

CREATE TABLE noticias (
    id SERIAL PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    subtitulo VARCHAR(100) NOT NULL,
    breve_descricao TEXT NOT NULL,
    conteudo TEXT NOT NULL,
    id_imagem INT NOT NULL,
    id_autor INT NOT NULL,

    FOREIGN KEY (id_imagem) REFERENCES media(id),
    FOREIGN KEY (id_autor) REFERENCES especialistas(id)
)

-- CRIAÇÃO DA TABELA DE DICAS
CREATE TABLE dicas (
    id SERIAL PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    descricao TEXT NOT NULL,
    id_video INT NOT NULL,

    FOREIGN KEY (id_video) REFERENCES media(id)
)

-- CRIAÇÃO DA PÁGINA DE SIMULADOS

-- TABELA DE SIMULADOS
CREATE TABLE simulados (
    id SERIAL PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    descricao TEXT NOT NULL,
    id_autor INT NOT NULL,

    FOREIGN KEY (id_autor) REFERENCES autor(id)
)

-- TABELA DE QUESTÕES

CREATE TABLE questoes (
    id SERIAL PRIMARY KEY,
    enunciado TEXT NOT NULL,
    alternativa_a TEXT NOT NULL,
    alternativa_b TEXT NOT NULL,
    alternativa_c TEXT NOT NULL,
    alternativa_d TEXT NOT NULL,
    alternativa_e TEXT NOT NULL,
    resposta_correta VARCHAR(1) NOT NULL,
    id_simulado INT NOT NULL,

    FOREIGN KEY (id_simulado) REFERENCES simulados(id)
)

-- CRIAÇÃO DA PAGINA SOBRE NOS

CREATE TABLE funcoes_scrum (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
)

CREATE TABLE sobre_nos (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    id_funcao VARCHAR(100) NOT NULL,
    url_linkedin VARCHAR(100) NOT NULL,
    descricao TEXT NOT NULL,
    id_imagem INT NOT NULL,

    FOREIGN KEY (id_imagem) REFERENCES media(id)
    FOREIGN KEY (id_funcao) REFERENCES funcoes_scrum(id)
)

-- CRIAÇÃO DA PAGINA DE CARREIRAS

CREATE TABLE cursos(
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    conexao_quimica VARCHAR(100) NOT NULL,
    descricao TEXT NOT NULL,
    habilidades_necessarias TEXT NOT NULL
)

-- CRIAÇÃO DA PAGINA DE CONTATO

CREATE TABLE contato (
    id SERIAL PRIMARY KEY,
    nome_completo VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    mensagem TEXT NOT NULL
)

-- CRIAÇÃO DA HOME

CREATE TABLE home (
    id SERIAL PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    descricao TEXT NOT NULL,
    id_imagem INT NOT NULL,

    FOREIGN KEY (id_imagem) REFERENCES media(id)
)

CREATE TABLE ferramentas (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT NOT NULL,
    id_imagem INT NOT NULL,

    FOREIGN KEY (id_imagem) REFERENCES media(id)
)

-- PAGINA DE ENTREVISTAS

CREATE TABLE entrevistas (
    id SERIAL PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    descricao TEXT NOT NULL,
    id_entrevistado INT NOT NULL,

    FOREIGN KEY (id_entrevistado) REFERENCES especialistas(id)
)




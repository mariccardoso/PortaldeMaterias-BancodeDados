-- PRONTA, SEM ALTERAÇÕES

CREATE TABLE funcoes_scrum (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
)

CREATE TABLE integrantes (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    id_funcao VARCHAR(100) NOT NULL,
    url_linkedin VARCHAR(100) NOT NULL,
    descricao TEXT NOT NULL,
    url_imagem INT NOT NULL,

    FOREIGN KEY (id_funcao) REFERENCES funcoes_scrum(id)
)
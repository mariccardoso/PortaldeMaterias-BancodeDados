-- PRONTO, SEM ALTERAÇÕES

CREATE TABLE dicas (
    id SERIAL PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    descricao TEXT NOT NULL,
    url_video INT NOT NULL,
    id_autor INT NOT NULL,

    FOREIGN KEY (id_autor) REFERENCES especialistas(id)
)
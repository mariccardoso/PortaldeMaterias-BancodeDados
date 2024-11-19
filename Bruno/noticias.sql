-- PRONTO, SEM ALTERAÇÕES

CREATE TABLE media_noticia (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    tipo VARCHAR(100) NOT NULL,
    url VARCHAR(100) NOT NULL,
    id_noticia INT NOT NULL,

    FOREIGN KEY (id_noticia) REFERENCES noticias(id)

)

CREATE TABLE noticias (
    id SERIAL PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    subtitulo VARCHAR(100) NOT NULL,
    breve_descricao TEXT NOT NULL,
    conteudo TEXT NOT NULL,
    id_autor INT NOT NULL,

    FOREIGN KEY (id_autor) REFERENCES especialistas(id)
)
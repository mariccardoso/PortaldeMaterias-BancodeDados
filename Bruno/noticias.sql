-- Insira os dados na tabela especialistas para que a tabela noticias possa ser criada

INSERT INTO especialistas (nome, especialidade) VALUES
('Especialista 01', 'Químico'),
('Especialista 02', 'Biólogo'),
('Especialista 03', 'Físico'),
('Especialista 04', 'Matemático'),
('Especialista 05', 'Engenheiro Químico');

-- Insira os dados na tabela noticias para que a tabela media_noticia possa ser criada
CREATE TABLE noticias (
    id SERIAL PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    subtitulo VARCHAR(100) NOT NULL,
    breve_descricao TEXT NOT NULL,
    conteudo TEXT NOT NULL,
    id_autor INT NOT NULL,

    FOREIGN KEY (id_autor) REFERENCES especialistas(id) ON DELETE CASCADE ON UPDATE CASCADE
)

-- Insira os links das imagens das noticias na tabela media_noticia
CREATE TABLE media_noticia (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    media_type VARCHAR(100) NOT NULL,
    imagem_url VARCHAR(100) NOT NULL,
    id_noticia INT NOT NULL,

    FOREIGN KEY (id_noticia) REFERENCES noticias(id) ON DELETE CASCADE ON UPDATE CASCADE

)


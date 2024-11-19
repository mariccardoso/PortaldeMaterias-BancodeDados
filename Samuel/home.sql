
CREATE TABLE paginas_portal (
    id SERIAL PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    url VARCHAR(100) NOT NULL
)

CREATE TABLE ferramentas (
    id SERIAL PRIMARY KEY,
    ferramenta VARCHAR(100) NOT NULL,
    descricao TEXT NOT NULL,
    url_img INT NOT NULL
)


CREATE TABLE contato (
    id SERIAL PRIMARY KEY,
    nome_completo VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    mensagem TEXT NOT NULL
)

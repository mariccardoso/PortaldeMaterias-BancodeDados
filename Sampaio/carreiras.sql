-- PRONTO, SEM ALTERAÇÕES

CREATE TABLE cursos(
    id SERIAL PRIMARY KEY,
    curso VARCHAR(100) NOT NULL,
    conexao_quimica VARCHAR(100) NOT NULL,
    descricao TEXT NOT NULL,
    habilidades_necessarias TEXT NOT NULL
    url_externo VARCHAR(100) NOT NULL
)
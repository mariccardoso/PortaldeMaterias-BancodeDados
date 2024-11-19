-- PRONTA, SEM ALTERAÇÕES

CREATE TABLE simulados (
    id SERIAL PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    tipo VARCHAR(100) NOT NULL
)
-- TABELA DE QUESTÕES
CREATE TABLE questoes (
    id_questao SERIAL PRIMARY KEY,
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


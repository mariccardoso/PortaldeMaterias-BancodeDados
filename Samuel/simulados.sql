-- EM ANDAMENTO (INSERÇÃO DOS DADOS) --

-- CRIAÇÃO DAS TABELAS --

-- TABELA DE SIMULADOS -- ATUALIZADA
CREATE TABLE simulados (
    id SERIAL PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    dificuldade VARCHAR(100) NOT NULL,
    questoes INT NOT NULL,
    tipo VARCHAR(100) NOT NULL
);

-- TABELA DE QUESTÕES --
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
    -- CHAVE ESTRANGEIRA --
    FOREIGN KEY (id_simulado) REFERENCES simulados(id)
);

-- INSEÇÕES NAS TABELAS:

-- INSERTS - SIMULADOS - OPÇÃO 1 - JÁ FORAM TESTADOS --
INSERT INTO simulados (titulo, dificuldade, questoes, tipo) VALUES 
('Mergulhe no conhecimento - Questões', 'Fácil', 10, 'Questões de vestibulares'),
('Para Gabaritar! - Questões', 'Intermediário', 10, 'Questões de vestibulares'),
('Para Gabaritar! - Questões', 'Básico', 10, 'Questões de vestibulares'),
('Para Gabaritar! - Questões', 'Difícil', 10, 'Questões de vestibulares');
-- TESTE:
SELECT * FROM simulados;

-- INSERTS - SIMULADOS - OPÇÃO 2 - JÁ FORAM TESTADOS --
INSERT INTO simulados (titulo, dificuldade, questoes, tipo) VALUES 
('Mergulhe no conhecimento - Questões', 'Fácil', 10, 'Questões de: PUC, Fatec, Fuvest, UFRGS, UFAL, Mackenzie, UESPI'),
('Para Gabaritar! - Questões', 'Intermediário', 10, 'Questões de: UFPI, PUC, UECE, ITA, Uespi, Ufes, Mackenzie'),
('Para Gabaritar! - Questões', 'Básico', 10, 'Questões de: ENEM, UNIUBE, UFF, Mack'),
('Para Gabaritar! - Questões', 'Difícil', 10, 'Questões de: Precisa colocar as questões ainda');
-- TESTE:
SELECT * FROM simulados;
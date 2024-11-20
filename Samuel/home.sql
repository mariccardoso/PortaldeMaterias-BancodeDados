-- EM ANDAMENT0 (INSERÇÃO DOS DADOS)    
CREATE TABLE paginas_portal (
    id SERIAL PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    url VARCHAR(100) NOT NULL
);

CREATE TABLE ferramentas (
    id SERIAL PRIMARY KEY,
    ferramenta VARCHAR(100) NOT NULL,
    descricao TEXT NOT NULL,
    url_img TEXT NOT NULL
);


CREATE TABLE contato (
    id SERIAL PRIMARY KEY,
    nome_completo VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    mensagem TEXT NOT NULL
);

-- INSERTS

-- FERRAMENTAS
INSERT INTO ferramentas (ferramenta, descricao, url_img) VALUES 
('Omni Calculator', 'Calculadoras para matemática e ciências.', 'https://portal-de-materias.vercel.app/assets/img/logos/ominiCalculator.png'),
('Ptable', 'Tabela periódica interativa com dados químicos.', 'https://portal-de-materias.vercel.app/assets/img/logos/ptable.png'),
('Symbolab', 'Solucionador de equações matemáticas.', 'https://portal-de-materias.vercel.app/assets/img/logos/symbolab.png'),
('Notion', 'Ferramenta de produtividade e organização.', 'https://portal-de-materias.vercel.app/assets/img/logos/notion.png'),
('Google', 'Busca e serviços online.', 'https://portal-de-materias.vercel.app/assets/img/logos/google.png'),
('Quizlet', 'Flashcards e recursos de aprendizado.', 'https://portal-de-materias.vercel.app/assets/img/logos/quizlet.png');

-- TESTE:
SELECT * FROM ferramentas;
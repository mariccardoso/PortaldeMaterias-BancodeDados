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

-- INSERTS - PÁGINAS DO PORTAL - OPÇÃO 1 (COM CAMINHO DAS PASTAS) - JÁ FORAM TESTADOS --

INSERT INTO paginas_portal (titulo, url) VALUES 
('Inicio', 'index.html'),
('Carreiras', '/pages/carreira.html'),
('Dicas', '/pages/dicas.html'),
('Sobre nós', '/pages/sobre.html'),
('Notícias', '/pages/noticia.html'),
('Simulados' , '/pages/simulado.html'),
('Entrevistas', '/pages/entrevista.html');

-- TESTE:
SELECT * FROM paginas_portal;

-- INSERTS - PÁGINAS DO PORTAL - OPÇÃO 2 (COM O URL DA PÁGINA) - JÁ FORAM TESTADOS --

INSERT INTO paginas_portal (titulo, url) VALUES 
('Inicio', 'https://portal-de-materias.vercel.app/'),
('Carreiras', 'https://portal-de-materias.vercel.app/pages/carreira.html'),
('Dicas', 'https://portal-de-materias.vercel.app/pages/dica.html'),
('Sobre nós', 'https://portal-de-materias.vercel.app/pages/sobre.html'),
('Notícias', 'https://portal-de-materias.vercel.app/pages/noticia.html'),
('Simulados' , 'https://portal-de-materias.vercel.app/pages/simulado.html'),
('Entrevistas', 'https://portal-de-materias.vercel.app/pages/entevista.html');

-- TESTE:
SELECT * FROM paginas_portal;

-- INSERTS - FERRAMENTAS - JÁ FORAM TESTADOS --

INSERT INTO ferramentas (ferramenta, descricao, url_img) VALUES 
('Omni Calculator', 'Calculadoras para matemática e ciências.', 'https://portal-de-materias.vercel.app/assets/img/logos/ominiCalculator.png'),
('Ptable', 'Tabela periódica interativa com dados químicos.', 'https://portal-de-materias.vercel.app/assets/img/logos/ptable.png'),
('Symbolab', 'Solucionador de equações matemáticas.', 'https://portal-de-materias.vercel.app/assets/img/logos/symbolab.png'),
('Notion', 'Ferramenta de produtividade e organização.', 'https://portal-de-materias.vercel.app/assets/img/logos/notion.png'),
('Google', 'Busca e serviços online.', 'https://portal-de-materias.vercel.app/assets/img/logos/google.png'),
('Quizlet', 'Flashcards e recursos de aprendizado.', 'https://portal-de-materias.vercel.app/assets/img/logos/quizlet.png');

-- TESTE:
SELECT * FROM ferramentas;
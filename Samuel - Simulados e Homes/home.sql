-- FINALIZADO (INSERÇÃO DOS DADOS) --

-- CRIAÇÃO DAS TABELAS --

-- TABELA DE PÁGINAS DO PORTAL --
CREATE TABLE paginas_portal (
    id SERIAL PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    url VARCHAR(100) NOT NULL
);

-- TABELA DE FERRAMENTAS --
CREATE TABLE ferramentas (
    id SERIAL PRIMARY KEY,
    ferramenta VARCHAR(100) NOT NULL,
    descricao TEXT NOT NULL,
    url_img TEXT NOT NULL
);

-- TABELA DE CONTATO --
CREATE TABLE contato (
    id SERIAL PRIMARY KEY,
    nome_completo VARCHAR(100) NOT NULL,
    email VARCHAR(320) NOT NULL,
    mensagem TEXT NOT NULL
);

-- INSEÇÕES NAS TABELAS:

INSERT INTO paginas_portal (titulo, url) VALUES
('Portal Pricipal', 'https://luschettini.github.io/site-portaleducacional/'),
('Matematica', 'https://projeto-portal-matematica.vercel.app/'),
('Portugues', 'https://lp-projeto.vercel.app/'),
('História', 'https://site-historia-six.vercel.app/'),
('Geografia', 'https://projeto-geografia.vercel.app/'),
('Biologia', 'https://site-biologia-41g2.vercel.app/'),
('Física', 'https://site-fisica.vercel.app/'),
('Inglês', 'https://site-ingles-theta.vercel.app/'),
('Filosfia', 'https://site-filosofia.vercel.app/'),
('Sociologia', 'https://site-sociologia.vercel.app/'),
('Artes', 'https://portal-noticias-html.vercel.app/');

-- INSERTS - PÁGINAS DO PORTAL -  JÁ FORAM TESTADOS --
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

-- INSERTS - CONTATO - JÁ FORAM TESTADOS --
INSERT INTO contato (nome_completo, email, mensagem) VALUES
('Ana Clara Souza', 'ana.souza@exemplo.com', 'O portal é muito útil, parabéns!'),
('Bruno Henrique Silva', 'bruno.silva@exemplo.com', 'Gostei muito das ferramentas disponíveis.'),
('Carla Maria Oliveira', 'carla.oliveira@exemplo.com', 'O site é muito intuitivo e fácil de usar.'),
('Daniela Ferreira Lima', 'daniela.lima@exemplo.com', 'As dicas são muito boas, obrigado!'),
('Eduardo Pereira Santos', 'eduardo.santos@exemplo.com', 'Parabéns pelo excelente trabalho!'),
('Fernanda Costa Almeida', 'fernanda.almeida@exemplo.com', 'Adorei a seção de entrevistas.'),
('Gabriel Martins Ribeiro', 'gabriel.ribeiro@exemplo.com', 'O conteúdo é muito bom e bem organizado.'),
('Helena Rodrigues Cardoso', 'helena.cardoso@exemplo.com', 'Gostei muito do portal, está de parabéns!'),
('Igor Mendes Silva', 'igor.silva@exemplo.com', 'As ferramentas são muito úteis para meus estudos.'),
('Juliana Fátima Souza', 'juliana.souza@exemplo.com', 'O site é muito completo e informativo.'),
('Lucas Henrique Oliveira', 'lucas.oliveira@exemplo.com', 'Gostei muito das dicas e simulados.'),
('Mariana Pereira Lima', 'mariana.lima@exemplo.com', 'O portal é muito intuitivo e fácil de usar.'),
('Nathalia Costa Santos', 'nathalia.santos@exemplo.com', 'Parabéns pelo trabalho, está excelente!'),
('Otávio Martins Ribeiro', 'otavio.ribeiro@exemplo.com', 'As entrevistas são muito inspiradoras.'),
('Patrícia Rodrigues Silva', 'patricia.silva@exemplo.com', 'Adorei a seção de carreiras.');
-- TESTE:

-- CONSULTAS --

-- CONSULTA 1 - PÁGINAS DO PORTAL --
SELECT * FROM paginas_portal;

-- CONSULTA 2 - FERRAMENTAS --
SELECT * FROM ferramentas;

-- CONSULTA 3 - CONTATO --
SELECT * FROM contato;
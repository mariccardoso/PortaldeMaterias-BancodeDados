-- Criação do Mer do projeto

-- Entidades 
TABLE especialistas
TABLE dicas
TABLE noticias
TABLE media_noticia
TABLE entrevistas
TABLE simulados
TABLE questoes
TABLE funcoes_scrum
TABLE integrantes
TABLE ferramentas
TABLE paginas_portal
TABLE contato
TABLE carreiras

-- Atributos
especialistas
    id SERIAL PRIMARY KEY
    nome VARCHAR(100) NOT NULL
    especialidade VARCHAR(100) NOT NULL

carreiras
    curso VARCHAR(100) NOT NULL
    conexao_quimica VARCHAR(100) NOT NULL
    descricao TEXT NOT NULL
    habilidades_necessarias TEXT NOT NULL
    url_externo VARCHAR(100) NOT NULL

dicas
    id SERIAL PRIMARY KEY
    titulo VARCHAR(100) NOT NULL
    descricao TEXT
    video_url VARCHAR(255) NOT NULL
    id_autor INT NOT NULL

    FOREIGN KEY (id_autor) REFERENCES especialistas(id)

noticias
    id SERIAL PRIMARY KEY
    titulo VARCHAR(100) NOT NULL
    descricao TEXT
    data DATE
    id_autor INT NOT NULL
    FOREIGN KEY (id_autor) REFERENCES especialistas(id)

media_noticia
    id SERIAL PRIMARY KEY
    id_noticia INT NOT NULL
    url VARCHAR(255) NOT NULL
    FOREIGN KEY (id_noticia) REFERENCES noticias(id)

entrevistas
    id SERIAL PRIMARY KEY
    titulo VARCHAR(100) NOT NULL
    descricao TEXT
    data DATE
    id_entrevistado INT NOT NULL
    FOREIGN KEY (id_entrevistado) REFERENCES especialistas(id)

simulados
    id SERIAL PRIMARY KEY
    titulo VARCHAR(100) NOT NULL
    descricao TEXT
    data DATE
    id_autor INT NOT NULL
    FOREIGN KEY (id_autor) REFERENCES especialistas(id)

questoes
    id SERIAL PRIMARY KEY
    id_simulado INT NOT NULL
    enunciado TEXT NOT NULL
    resposta TEXT NOT NULL
    FOREIGN KEY (id_simulado) REFERENCES simulados(id)

funcoes_scrum
    id SERIAL PRIMARY KEY
    funcao VARCHAR(100) NOT NULL

integrante
    id SERIAL PRIMARY KEY
    descricao TEXT NOT NULL

ferramentas
    id SERIAL PRIMARY KEY
    ferramenta VARCHAR(100) NOT NULL
    descricao TEXT NOT NULL
    url_img INT NOT NULL

paginas_portal
    id SERIAL PRIMARY KEY
    titulo VARCHAR(100) NOT NULL
    url VARCHAR(100) NOT NULL

contato
    id SERIAL PRIMARY KEY
    nome_completo VARCHAR(100) NOT NULL
    email VARCHAR(100) NOT NULL
    mensagem TEXT NOT NULL

-- Chaves estrangeiras
Cada dica tem um autor (1:N)
Cada noticia tem um autor (1:N)
Cada noticia tem várias mídias (1:N)
Cada entrevista tem um entrevistado (1:N)
Cada questão tem um simulado (1:N)
Cada integrante tem uma função no scrum (1:1)

-- Restrições
Cada especialista deve ter um nome e uma especialidade
Cada dica deve ter um título, uma descrição, uma url de vídeo e um autor
Cada noticia deve ter um título, uma descrição e um autor
Cada mídia de noticia deve ter uma url e uma noticia
Cada entrevista deve ter um título, uma descrição, uma data e um entrevistado
Cada simulado deve ter um título, uma descrição, uma data e um autor
Cada questão deve ter um enunciado, uma resposta e um simulado
Cada integrante deve ter uma função no scrum
Cada página do portal deve ter um título e uma url
Cada ferramenta deve ter um nome, uma descrição e uma url de imagem
Cada contato deve ter um nome, um email e uma mensagem
Cada curso deve ter um nome, uma conexão química, uma descrição, habilidades necessárias e uma url externa

# Portal de Matérias - Banco de Dados

## Introdução
Este, é o nosso projeto final da disciplina de Banco de Dados. Neste projeto, você verá o nosso banco de dados para o [Portal de Química](https://portal-de-materias.vercel.app/), que contém todas as funcionalidades e conteúdos do portal, juntamente com um Modelo Entidade-Relacionamento (MER) e um Diagrama de Entidades e Relacionamentos (DER), além das queries SQL.

## Papéis de Cada Integrante
- **Mariana (Scrum Master)**: Responsável pelo repositório, MER, DER e o código SQL de dicas e das tabelas gerais.
- **Maria Eduarda (Desenvolvedora)**: Responsável pelo MER e o código SQL de entrevistas e sobre.
- **Samuel (Product Owner)**: Responsável pelo código SQL da página inicial do Portal e simulados.
- **Bruno (Desenvolvedor)**: Responsável pelo código SQL de notícias.
- **Vitor (Desenvolvedor)**: Responsável pelo código SQL de carreiras.

## Modelo Entidade-Relacionamento (MER)
O MER do projeto foi desenvolvido para representar todas as entidades e seus relacionamentos no banco de dados do portal. As principais entidades incluem especialistas, dicas, notícias, media_noticia, entrevistas, simulados, questões, funcoes_scrum, integrantes, ferramentas, paginas_portal e contato.

### Entidades e Atributos
- **especialistas**
    - id SERIAL PRIMARY KEY
    - nome VARCHAR(100) NOT NULL
    - especialidade VARCHAR(100) NOT NULL

- **dicas**
    - id SERIAL PRIMARY KEY
    - titulo VARCHAR(100) NOT NULL
    - descricao TEXT
    - video_url VARCHAR(255) NOT NULL
    - id_autor INT NOT NULL
    - FOREIGN KEY (id_autor) REFERENCES especialistas(id)

- **noticias**
    - id SERIAL PRIMARY KEY
    - titulo VARCHAR(100) NOT NULL
    - descricao TEXT
    - data DATE
    - id_autor INT NOT NULL
    - FOREIGN KEY (id_autor) REFERENCES especialistas(id)

- **media_noticia**
    - id SERIAL PRIMARY KEY
    - id_noticia INT NOT NULL
    - url VARCHAR(255) NOT NULL
    - FOREIGN KEY (id_noticia) REFERENCES noticias(id)

- **entrevistas**
    - id SERIAL PRIMARY KEY
    - titulo VARCHAR(100) NOT NULL
    - descricao TEXT
    - data DATE
    - id_entrevistado INT NOT NULL
    - FOREIGN KEY (id_entrevistado) REFERENCES especialistas(id)

- **simulados**
    - id SERIAL PRIMARY KEY
    - titulo VARCHAR(100) NOT NULL
    - descricao TEXT
    - data DATE
    - id_autor INT NOT NULL
    - FOREIGN KEY (id_autor) REFERENCES especialistas(id)

- **questoes**
    - id SERIAL PRIMARY KEY
    - id_simulado INT NOT NULL
    - enunciado TEXT NOT NULL
    - resposta TEXT NOT NULL
    - FOREIGN KEY (id_simulado) REFERENCES simulados(id)

- **funcoes_scrum**
    - id SERIAL PRIMARY KEY
    - id_integrante INT NOT NULL
    - funcao VARCHAR(100) NOT NULL

- **integrante**
    - id SERIAL PRIMARY KEY
    - descricao TEXT NOT NULL

- **ferramentas**
    - id SERIAL PRIMARY KEY
    - ferramenta VARCHAR(100) NOT NULL
    - descricao TEXT NOT NULL
    - url_img INT NOT NULL

- **paginas_portal**
    - id SERIAL PRIMARY KEY
    - titulo VARCHAR(100) NOT NULL
    - url VARCHAR(100) NOT NULL

- **contato**
    - id SERIAL PRIMARY KEY
    - nome_completo VARCHAR(100) NOT NULL
    - email VARCHAR(100) NOT NULL
    - mensagem TEXT NOT NULL

### Chaves Estrangeiras
- Cada dica tem um autor (1:N)
- Cada notícia tem um autor (1:N)
- Cada notícia tem várias mídias (1:N)
- Cada entrevista tem um entrevistado (1:N)
- Cada questão tem um simulado (1:N)
- Cada integrante tem uma função no scrum (1:1)

### Restrições
- Cada especialista deve ter um nome e uma especialidade
- Cada dica deve ter um título, uma descrição, uma URL de vídeo e um autor
- Cada notícia deve ter um título, uma descrição e um autor
- Cada mídia de notícia deve ter uma URL e uma notícia
- Cada entrevista deve ter um título, uma descrição, uma data e um entrevistado
- Cada simulado deve ter um título, uma descrição, uma data e um autor
- Cada questão deve ter um enunciado, uma resposta e um simulado
- Cada integrante deve ter uma função no scrum
- Cada página do portal deve ter um título e uma URL
- Cada ferramenta deve ter um nome, uma descrição e uma URL de imagem
- Cada contato deve ter um nome, um email e uma mensagem

## Diagrama de Entidades e Relacionamentos (DER)
_Futuramente, esta seção será preenchida com o DER do projeto._

## Integrantes
- **Mariana**
    - ![Foto Mariana](#)
- **Maria Eduarda**
    - ![Foto Maria Eduarda](#)
- **Samuel**
    - ![Foto Samuel](#)
- **Bruno**
    - ![Foto Bruno](#)
- **Vitor**
    - ![Foto Vitor](#)

## Queries (Códigos SQL)
### Tabelas Gerais
```sql
-- CRIAÇÃO DE TABELAS BASE

CREATE DATABASE portal_de_materias;

CREATE TABLE especialistas (
        id SERIAL PRIMARY KEY,
        nome VARCHAR(100) NOT NULL,
        especialidade VARCHAR(100) NOT NULL
);

-- Insira os dados na tabela especialistas para que a tabela dicas possa ser criada

INSERT INTO especialistas (nome, especialidade) VALUES
('Liliana de Castro', 'Apresentadora'),
('Ana Beatriz', 'Estudante de Química'),
('Renato Alves', 'Pesquisador Cognitivo'),
('Gabriel Cabral', 'Professor de Química'),
('Rubens Castilho', 'Professor de Química');

-- Insira os dados na tabela especialistas para que a tabela entrevistas possa ser criada

INSERT INTO especialistas (nome, especialidade) VALUES
('Andressa Bruscato', 'Mestre Bioquimica'),
('João Borghi', 'Estudante SESI');

-- Insira os dados na tabela especialistas para que a tabela noticias possa ser criada

INSERT INTO especialistas (nome, especialidade) VALUES
('Especialista 01', 'Químico'),
('Especialista 02', 'Biólogo'),
('Especialista 03', 'Físico'),
('Especialista 04', 'Matemático'),
('Especialista 05', 'Engenheiro Químico');
```

### Dicas
```sql
-- REVISÃO DE SINTAXE E TESTES DE INSERÇÃO DE DADOS

CREATE TABLE dicas (
        id SERIAL PRIMARY KEY,
        titulo VARCHAR(100) NOT NULL,
        descricao TEXT,
        video_url  VARCHAR(255) NOT NULL,
        id_autor INT NOT NULL,
        FOREIGN KEY (id_autor) REFERENCES especialistas(id)
);

-- Inserindo dados na tabela dicas
INSERT INTO dicas (titulo, descricao, video_url, id_autor) VALUES
('Método Pomodoro para Estudo Eficiente em Química', 'https://www.youtube.com/embed/YI9oxHGf6iE?si=TFyXYdKPSvv2M2_o', 3),
...
```

### Entrevistas
_Fazer_

### Sobre
_Fazer_

### Home
```sql
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
...
```

### Simulados
```sql
-- EM ANDAMENTO (INSERÇÃO DOS DADOS) --

-- CRIAÇÃO DAS TABELAS --

-- TABELA DE SIMULADOS -- ATUALIZADA
CREATE TABLE simulados (
        id SERIAL PRIMARY KEY,
        titulo VARCHAR(100) NOT NULL,
        dificuldade VARCHAR(100) NOT NULL,
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
...
```

### Notícias
_Fazer_

### Carreiras
_Fazer_

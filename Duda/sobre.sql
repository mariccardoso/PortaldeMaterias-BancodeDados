-- PRONTA, SEM ALTERAÇÕES

CREATE TABLE funcoes_scrum (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE integrantes (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    id_funcao INT NOT NULL,
    url_linkedin VARCHAR(100) NOT NULL,
    descricao TEXT,
    url_imagem TEXT NOT NULL,

    FOREIGN KEY (id_funcao) REFERENCES funcoes_scrum(id)
);


-- INSERTS: TABELA DE FUNÇÕES

INSERT INTO funcoes_scrum (nome) VALUES 
('Product Owner'),
('Scrum Master'),
('Equipe de desenvolvimento');

-- INSERTS: TABELA DE INTEGRANTES

INSERT INTO integrantes (nome, id_funcao, url_linkedin, url_imagem) VALUES
('Samuel Braga', 1,'https://www.linkedin.com/in/samuelbrag4/', ' https://avatars.githubusercontent.com/u/158165702?v=4'),
('Mariana Cardoso', 2,'https://www.linkedin.com/in/mariana-cardoso-507bba244/', 'https://avatars.githubusercontent.com/u/158165810?v=4'),
('Vitor Sampaio', 3,'https://www.linkedin.com/in/vitor-sampaio-152839241/', 'https://github.com/mariccardoso/PortaldeMaterias/raw/main/assets/img/integrantes/vitor.png'),
('Maria Eduarda', 3,'https://www.linkedin.com/in/maria-eduarda-reis-pereira-0756542b1/', 'https://avatars.githubusercontent.com/u/158165914?v=4'),
('Bruno Quintino', 3,'https://www.linkedin.com/in/bruno-quintino-2268b932b/', 'https://avatars.githubusercontent.com/u/158165665?v=4');

UPDATE integrantes SET descricao = 'Estudante do SENAI, contribuiu com HTML, CSS e foi fundamental na gestão do produto. Aplicou conceitos de UI/UX Design para desenvolver uma interface intuitiva, funcional e atrativa, aprimorando a experiência do usuário e a estética do projeto.' WHERE id = 1;
UPDATE integrantes SET descricao = 'Estudante do SENAI, liderou a equipe com sua experiência em gestão de projetos. Colaborou diretamente no desenvolvimento das páginas com HTML e CSS, unindo liderança e habilidades técnicas para garantir a qualidade e o alinhamento do projeto.' WHERE id = 2;
UPDATE integrantes SET descricao = 'Estudante do SENAI, dedicou- se ao desenvolvimento das páginas com HTML e CSS, agregando ao projeto sua habilidade técnica. Sua colaboração foi essencial para manter a harmonia e o dinamismo no trabalho em equipe.' WHERE id = 3;
UPDATE integrantes SET descricao = 'Estudante do SENAI, desempenhou um papel crucial na documentação do projeto. Sua capacidade de organização foi indispensável para assegurar que o foco e a eficiência fossem mantidos durante todas as etapas do desenvolvimento.' WHERE id = 4;
UPDATE integrantes SET descricao = 'Estudante do SENAI, mostrou empenho e comprometimento ao longo de todo o projeto. Sua dedicação foi essencial para o sucesso das entregas, contribuindo significativamente para o bom desempenho e a integração da equipe.' WHERE id = 5;

SELECT i.nome, f.nome, i.url_linkedin, i.url_imagem
FROM funcoes_scrum f
JOIN integrantes i ON f.id = i.id_funcao;

-- INSERT PARA REALIZAR O DELETE (CRUD)

INSERT INTO integrantes (nome, id_funcao, url_linkedin, url_imagem) VALUES
('Mariana Cardoso', 1,'https://www.linkedin.com/in/mariana-cardoso-507bba244/', 'https://avatars.githubusercontent.com/u/158165810?v=4');

-- DELETE PARA REMOVER O INSERT ACIMA

DELETE FROM integrantes WHERE nome = 'Mariana Cardoso' AND id_funcao = 1;

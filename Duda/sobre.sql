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
    descricao TEXT NOT NULL,
    url_imagem TEXT NOT NULL,

    FOREIGN KEY (id_funcao) REFERENCES funcoes_scrum(id)
);


-- INSERTS: TABELA DE FUNÇÕES

INSERT INTO funcoes_scrum (nome) VALUES 
('Product Owner'),
('Scrum Master'),
('Equipe de desenvolvimento');

-- INSERTS: TABELA DE INTEGRANTES

INSERT INTO integrantes (nome, id_funcao, url_linkedin, descricao, url_imagem) VALUES
('Samuel Braga', 1,'https://www.linkedin.com/in/samuelbrag4/', 'Estudante do SENAI, contribuiu com HTML, CSS e foi fundamental na gestão do produto. Aplicou conceitos de UI/UX Design para desenvolver uma interface intuitiva, funcional e atrativa, aprimorando a experiência do usuário e a estética do projeto.', ' https://avatars.githubusercontent.com/u/158165702?v=4'),
('Mariana Cardoso', 2,'https://www.linkedin.com/in/mariana-cardoso-507bba244/', 'Estudante do SENAI, liderou a equipe com sua experiência em gestão de projetos. Colaborou diretamente no desenvolvimento das páginas com HTML e CSS, unindo liderança e habilidades técnicas para garantir a qualidade e o alinhamento do projeto.', 'https://avatars.githubusercontent.com/u/158165810?v=4'),
('Vitor Sampaio', 3,'https://www.linkedin.com/in/vitor-sampaio-152839241/', 'Estudante do SENAI, dedicou- se ao desenvolvimento das páginas com HTML e CSS, agregando ao projeto sua habilidade técnica. Sua colaboração foi essencial para manter a harmonia e o dinamismo no trabalho em equipe.', 'https://github.com/mariccardoso/PortaldeMaterias/raw/main/assets/img/integrantes/vitor.png'),
('Maria Eduarda', 3,'https://www.linkedin.com/in/maria-eduarda-reis-pereira-0756542b1/', 'Estudante do SENAI, desempenhou um papel crucial na documentação do projeto. Sua capacidade de organização foi indispensável para assegurar que o foco e a eficiência fossem mantidos durante todas as etapas do desenvolvimento.', 'https://avatars.githubusercontent.com/u/158165914?v=4'),
('Bruno Quintino', 3,'https://www.linkedin.com/in/bruno-quintino-2268b932b/', 'Estudante do SENAI, mostrou empenho e comprometimento ao longo de todo o projeto. Sua dedicação foi essencial para o sucesso das entregas, contribuindo significativamente para o bom desempenho e a integração da equipe.', 'https://avatars.githubusercontent.com/u/158165665?v=4');
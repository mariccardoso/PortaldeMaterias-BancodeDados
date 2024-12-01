-- CRIAÇÃO DA TABELA ENTREVISTAS
CREATE TABLE entrevistas (
    id SERIAL PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    descricao TEXT,
    id_entrevistado INT NOT NULL,

    FOREIGN KEY (id_entrevistado) REFERENCES especialistas(id)
);

-- INSERÇÃO DE DADOS NA TABELA ENTREVISTAS
INSERT INTO entrevistas (titulo, id_entrevistado) VALUES
('Tragetória Profissional de Andressa Bruscato', 6),
('Como escolher minha área na química?',  6),
('⁠Se preparando para vestibulares', 6),
('Como o portal de química te ajuda no mercado de trabalho',  7);


UPDATE entrevistas SET descricao = 'Andressa Bruscato é mestre em Bioquímica e conta um pouco sobre sua trajetória profissional.' WHERE id = 1;
UPDATE entrevistas SET descricao = 'Andressa compartilha um pouco sobre sua experiência e dá dicas para quem deseja seguir carreira na área da química.' WHERE id = 2;
UPDATE entrevistas SET descricao = 'Andressa Bruscato dá dicas para quem está se preparando para vestibulares e ENEM.' WHERE id = 3;
UPDATE entrevistas SET descricao = 'João Borghi, estudante do SESI/SENAI, conta como o portal de química o ajudou no mercado de trabalho.' WHERE id = 4;


-- CONSULTA DE ENTREVISTAS
SELECT e.titulo, es.nome, es.especialidade
FROM entrevistas e
JOIN especialistas es ON e.id_entrevistado = es.id;
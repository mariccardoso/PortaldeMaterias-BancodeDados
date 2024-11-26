CREATE TABLE entrevistas (
    id SERIAL PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    descricao TEXT NOT NULL,
    id_entrevistado INT NOT NULL,

    FOREIGN KEY (id_entrevistado) REFERENCES especialistas(id)
)

INSERT INTO entrevistas (titulo, descricao, id_entrevistado) VALUES
('Tragetória Profissional de Andressa Bruscato', 'Andressa Bruscato é mestre em Bioquímica e conta um pouco sobre sua trajetória profissional.', 1),
('Como escolher minha área na química?', 'Andressa compartilha um pouco sobre sua experiência e dá dicas para quem deseja seguir carreira na área da química.', 1),
('⁠Se preparando para vestibulares', 'Andressa Bruscato dá dicas para quem está se preparando para vestibulares e ENEM.', 1),
('Como o portal de química te ajuda no mercado de trabalho', 'João Borghi, estudante do SESI/SENAI, conta como o portal de química o ajudou no mercado de trabalho.', 2);
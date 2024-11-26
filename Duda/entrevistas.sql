CREATE TABLE entrevistas (
    id SERIAL PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    descricao TEXT NOT NULL,
    id_entrevistado INT NOT NULL,

    FOREIGN KEY (id_entrevistado) REFERENCES especialistas(id)
)
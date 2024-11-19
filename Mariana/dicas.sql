-- REVISÃO DE SINTAXE E TESTES DE INSERÇÃO DE DADOS

CREATE TABLE dicas (
    id SERIAL PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    descricao TEXT,
    video_url  VARCHAR(255) NOT NULL,
    id_autor INT NOT NULL
    ,
    FOREIGN KEY (id_autor) REFERENCES especialistas(id)
)

-- Inserindo dados na tabela dicas
INSERT INTO dicas (titulo, descricao, video_url, id_autor) VALUES
('Método Pomodoro para Estudo Eficiente em Química', 'https://www.youtube.com/embed/YI9oxHGf6iE?si=TFyXYdKPSvv2M2_o', 3),
('Laboratórios de Análises Químicas – O Que Esperar?', 'https://www.youtube.com/embed/vQoXojpZi3k?si=UF4WvEVGal4kXRx2', 4),
('Memorize Conceitos Difíceis com Técnicas especificas', 'https://www.youtube.com/embed/eTLlzBIHOQU?si=NdaCyEVLQ7it0oJ_', 5),
('Por Onde Começar em Química?', 'https://www.youtube.com/embed/4P9eSpy5OdI?si=ne9PreJqJ8i0wHIg', 6),
('Entenda a Importância da Química no Cotidiano', 'https://www.youtube.com/embed/uMhJmoNlGz8?si=v_Z9IZLyUcUQJGq3', 7);


UPDATE dicas 
SET descricao = 'Técnica de estudo que consiste em dividir o tempo de estudo em períodos de 25 minutos, separados por breves intervalos. A técnica foi desenvolvida por Francesco Cirillo no final dos anos 1980. A técnica é baseada na ideia de que pausas frequentes podem melhorar a agilidade mental.' 
WHERE id = 1;

UPDATE dicas 
SET descricao = 'Muitas carreiras em Química envolvem trabalho em laboratório. Pesquise o ambiente de laboratórios de análises químicas para entender melhor a rotina de trabalho, desde testes e procedimentos até a manipulação de equipamentos. Isso ajudará a ter uma visão clara do que o mercado exige.' 
WHERE id = 2;

UPDATE dicas 
SET descricao = 'Estudos mostraram que, nos estudos, não é o mais rápido que vence o mais lento, mas aquele que possui a melhor memória que acaba se destacando no mercado. O conhecimento é um fator determinante para o sucesso em qualquer área, entretanto, ele deve ser associado a uma boa memória, caso contrário não haverá retenção e, consequentemente, o aproveitamento no uso diário.' 
WHERE id = 3;

UPDATE dicas 
SET descricao = 'Começar seus estudos de Química pode parecer desafiador, mas com o foco certo, torna-se mais fácil. Primeiramente, estude os conceitos básicos, como átomos, moléculas e as leis fundamentais da Química. Entenda a Tabela Periódica e suas famílias de elementos. Em seguida, aprofunde-se em temas como ligações químicas, ácidos e bases, e reações químicas. Pratique com exercícios e resolva questões de vestibulares, pois isso ajuda a fixar o conteúdo e a entender como ele é cobrado.' 
WHERE id = 4;

UPDATE dicas 
SET descricao = 'A Química está presente em diversos aspectos da nossa vida, desde a alimentação até os produtos de limpeza. Estudar como a Química afeta o dia a dia ajuda a conectar a teoria com a prática e torna o aprendizado mais interessante. Tente observar os materiais e processos ao seu redor e investigue como a Química explica esses fenômenos.' 
WHERE id = 5;

-- Consulta de todas as dicas
SELECT * FROM dicas;

-- Consulta de dicas com nome e especialidade do autor
SELECT d.titulo, d.descricao, d.video_url, e.nome, e.especialidade
FROM dicas d
JOIN especialistas e ON d.id_autor = e.id; 
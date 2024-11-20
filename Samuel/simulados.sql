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

-- INSEÇÕES NAS TABELAS:

-- INSERTS - SIMULADOS - OPÇÃO 1 - JÁ FORAM TESTADOS --
INSERT INTO simulados (titulo, dificuldade, questoes, tipo) VALUES 
('Mergulhe no conhecimento - Questões', 'Fácil', 'Questões de vestibulares'),
('Para Gabaritar! - Questões', 'Intermediário', 'Questões de vestibulares'),
('Para Gabaritar! - Questões', 'Básico', 'Questões de vestibulares'),
('Para Gabaritar! - Questões', 'Difícil', 'Questões de vestibulares');
-- TESTE:
SELECT * FROM simulados;
-- INSERTS - SIMULADOS - OPÇÃO 2 - JÁ FORAM TESTADOS --
INSERT INTO simulados (titulo, dificuldade, questoes, tipo) VALUES 
('Mergulhe no conhecimento - Questões', 'Fácil', 'Questões de: PUC, Fatec, Fuvest, UFRGS, UFAL, Mackenzie, UESPI'),
('Para Gabaritar! - Questões', 'Intermediário', 'Questões de: UFPI, PUC, UECE, ITA, Uespi, Ufes, Mackenzie'),
('Para Gabaritar! - Questões', 'Básico', 'Questões de: ENEM, UNIUBE, UFF, Mack'),
('Para Gabaritar! - Questões', 'Difícil', 'Questões de: Precisa colocar as questões ainda');
-- TESTE:
SELECT * FROM simulados;

-- INSERTS - QUESTÕES - SIMULADO 1 - SERÁ TERMNADO NA QUINTA --
INSERT INTO questoes (enunciado, alternativa_a, alternativa_b, alternativa_c, alternativa_d, alternativa_e, resposta_correta, id_simulado) VALUES 
('Questão01: (PUC) O número normal de subníveis existentes no quarto nível energético dos átomos é igual a:', ' a) 2', 'b) 5', 'c) 3', 'd) 1', ' e) 4', 'E', 1),

('Questão02: (PUC-PR) Alcinos são hidrocarbonetos:', 'a) alifáticos saturados.', 'b) alicíclicos saturados.', 'C) alifáticos insaturados com dupla ligação.', 'd) alicíclicos insaturados com tripla ligação.', 'e) alifáticos insaturados com tripla ligação.', 'E', 2),

('Questão03: (Fatec) Considere as afirmações a seguir, segundo a Lei de Hess. I – O calor de reação (ΔH) depende apenas dos estados inicial e final do processo. II – As equações termoquímicas podem ser somadas como se fossem equações matemáticas. III – Podemos inverter uma equação termoquímica desde que se inverta o sinal de ΔH. IV – Se o estado final do processo for alcançado por vários caminhos, o valor de ΔH dependerá dos estados intermediários através dos quais o sistema pode passar. Conclui-se que:', 'a) as afirmações I e II são verdadeiras.', 'b) as afirmações II e III são verdadeiras.', 'c) as afirmações I, II e III são verdadeiras.', 'd) todas são verdadeiras.', 'e) todas são falsas.', 'E', 3),

-- QUESTÃO 4 - RESOLVER COM A MARI - QUESTÃO COM IMAGEM

('Questão05: (UFRGS) Nos compostos orgânicos, além do carbono e do hidrogênio, é muito frequente a presença do oxigênio. Assinale a alternativa em que os três compostos apresentam oxigênio.', 'a) formaldeído, ácido acético, cloreto de etila.', 'b) trinitrotolueno, etanol, fenilamina.', 'c) ácido fórmico, butanol-2, propanona.', 'd) isooctano, metanol, metóxi-etano.', 'e) acetato de isobutila, metil-benzeno, hexeno-2.', 'N', 5),

-- QUESTÃO 6 - RESOLVER COM A MARI - QUESTÃO COM IMAGEM

-- QUESTÃO 7 - RESOLVER COM A MARI - QUESTÃO COM IMAGEM

-- QUESTÃO 8 - RESOLVER COM A MARI - QUESTÃO COM IMAGEM

-- QUESTÃO 9 - RESOLVER COM A MARI - QUESTÃO COM IMAGEM

('Questão10: (PUC-SP) Resolva a questão com base na análise das afirmativas abaixo. I – A tabela periódica moderna atual está disposta em ordem crescente de massa atômica. II – Todos os elementos que possuem 1 elétron e 2 elétrons na camada de valência são, respectivamente, metais alcalinos e metais alcalinoterrosos, desde que o número quântico principal dessa camada (n não igual1). III – Em um mesmo período, os elementos apresentam o mesmo número de níveis (camadas). IV – Em um mesmo grupo (família), os elementos apresentam o mesmo número de níveis (camadas). IV – Em um mesmo grupo (família), os elementos apresentam o mesmo número de níveis (camadas).', 'a) I e IV (apenas)', 'b) I e II (apenas)', 'c) II e III (apenas) hidroxônio.', 'd) II e IV (apenas)', 'e) III e IV (apenas). monovalente.', 'E', 10);

-- INSERTS - QUESTÕES - SIMULADO 2 - SERÁ TERMNADO NA QUINTA --
INSERT INTO questoes (enunciado, alternativa_a, alternativa_b, alternativa_c, alternativa_d, alternativa_e, resposta_correta, id_simulado) VALUES
-- DADOS AQUI:

-- INSERTS - QUESTÕES - SIMULADO 3 - SERÁ TERMNADO NA QUINTA --
INSERT INTO questoes (enunciado, alternativa_a, alternativa_b, alternativa_c, alternativa_d, alternativa_e, resposta_correta, id_simulado) VALUES
-- DADOS AQUI:

-- INSERTS - QUESTÕES - SIMULADO 4 - SERÁ TERMNADO NA QUINTA --
INSERT INTO questoes (enunciado, alternativa_a, alternativa_b, alternativa_c, alternativa_d, alternativa_e, resposta_correta, id_simulado) VALUES
-- DADOS AQUI:
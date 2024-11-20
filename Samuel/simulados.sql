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
INSERT INTO simulados (titulo, dificuldade, tipo) VALUES 
('Mergulhe no conhecimento - Questões', 'Fácil', 'Questões de vestibulares'),
('Para Gabaritar! - Questões', 'Intermediário', 'Questões de vestibulares'),
('Para Gabaritar! - Questões', 'Básico', 'Questões de vestibulares'),
('Para Gabaritar! - Questões', 'Difícil', 'Questões de vestibulares');
-- TESTE:
SELECT * FROM simulados;
-- INSERTS - SIMULADOS - OPÇÃO 2 - JÁ FORAM TESTADOS --
INSERT INTO simulados (titulo, dificuldade, tipo) VALUES 
('Mergulhe no conhecimento - Questões', 'Fácil', 'Questões de: PUC, Fatec, Fuvest, UFRGS, UFAL, Mackenzie, UESPI'),
('Para Gabaritar! - Questões', 'Intermediário', 'Questões de: UFPI, PUC, UECE, ITA, Uespi, Ufes, Mackenzie'),
('Para Gabaritar! - Questões', 'Básico', 'Questões de: ENEM, UNIUBE, UFF, Mack'),
('Para Gabaritar! - Questões', 'Difícil', 'Questões de: Precisa colocar as questões ainda');
-- TESTE:
SELECT * FROM simulados;

-- SIMULADO 1 - TABELA DE QUESTÕES 
INSERT INTO questoes (enunciado, alternativa_a, alternativa_b, alternativa_c, alternativa_d, alternativa_e, resposta_correta, id_simulado) VALUES 
('Questão01: (PUC) O número normal de subníveis existentes no quarto nível energético dos átomos é igual a:', 'a) 2', 'b) 5', 'c) 3', 'd) 1', 'e) 4', 'E', 1),

('Questão02: (PUC-PR) Alcinos são hidrocarbonetos:', 'a) alifáticos saturados.', 'b) alicíclicos saturados.', 'c) alifáticos insaturados com dupla ligação.', 'd) alicíclicos insaturados com tripla ligação.', 'e) alifáticos insaturados com tripla ligação.', 'E', 1),

('Questão03: (Fatec) Considere as afirmações a seguir, segundo a Lei de Hess. I – O calor de reação (ΔH) depende apenas dos estados inicial e final do processo. II – As equações termoquímicas podem ser somadas como se fossem equações matemáticas. III – Podemos inverter uma equação termoquímica desde que se inverta o sinal de ΔH. IV – Se o estado final do processo for alcançado por vários caminhos, o valor de ΔH dependerá dos estados intermediários através dos quais o sistema pode passar. Conclui-se que:', 'a) as afirmações I e II são verdadeiras.', 'b) as afirmações II e III são verdadeiras.', 'c) as afirmações I, II e III são verdadeiras.', 'd) todas são verdadeiras.', 'e) todas são falsas.', 'C', 1),

-- QUESTÃO 4 - RESOLVER COM A MARI - QUESTÃO COM IMAGEM

('Questão05: (UFRGS) Nos compostos orgânicos, além do carbono e do hidrogênio, é muito frequente a presença do oxigênio. Assinale a alternativa em que os três compostos apresentam oxigênio.', 'a) formaldeído, ácido acético, cloreto de etila.', 'b) trinitrotolueno, etanol, fenilamina.', 'c) ácido fórmico, butanol-2, propanona.', 'd) isooctano, metanol, metóxi-etano.', 'e) acetato de isobutila, metil-benzeno, hexeno-2.', 'C', 1),

-- QUESTÃO 6 - RESOLVER COM A MARI - QUESTÃO COM IMAGEM

-- QUESTÃO 7 - RESOLVER COM A MARI - QUESTÃO COM IMAGEM

-- QUESTÃO 8 - RESOLVER COM A MARI - QUESTÃO COM IMAGEM

-- QUESTÃO 9 - RESOLVER COM A MARI - QUESTÃO COM IMAGEM

('Questão10: (PUC-SP) Resolva a questão com base na análise das afirmativas abaixo. I – A tabela periódica moderna atual está disposta em ordem crescente de massa atômica. II – Todos os elementos que possuem 1 elétron e 2 elétrons na camada de valência são, respectivamente, metais alcalinos e metais alcalinoterrosos, desde que o número quântico principal dessa camada (n não igual1). III – Em um mesmo período, os elementos apresentam o mesmo número de níveis (camadas). IV – Em um mesmo grupo (família), os elementos apresentam o mesmo número de níveis (camadas).', 'a) I e IV (apenas)', 'b) I e II (apenas)', 'c) II e III (apenas)', 'd) II e IV (apenas)', 'e) III e IV (apenas)', 'C', 1);

-- SIMULADO 2 - TABELA DE QUESTÕES

INSERT INTO questoes (enunciado, alternativa_a, alternativa_b, alternativa_c, alternativa_d, alternativa_e, resposta_correta, id_simulado) VALUES 

-- QUESTÃO 1 - RESOLVER COM A MARI - QUESTÃO COM IMAGEM

('Questão02: (ENEM-2016) Na preparação da massa do pão, presente na mesa do café da maioria dos brasileiros, utilizase o fungo Saccharomyces cerevisiae vivo, contido no fermento. Sua finalidade é fazer com que a massa cresça por meio da produção de gás carbônico. Esse processo químico de liberação de gás é causado pela:', 'a) fermentação alcoólica.', 'b) glicogênese lática', 'c) produção de ácido lático.', 'd) produção de lactobacilos.', 'e) formação do ácido pirúvico', 'A', 2),

('Questão03: (ENEM-2018) O suco de repolho-roxo pode ser utilizado como indicador ácido-base em diferentes soluções. Para isso, basta misturar um pouco desse suco à solução desejada e comparar a coloração final com a escala indicadora de pH, com valores de 1 a 14, mostrada a seguir: Utilizando-se o indicador ácido-base e a escola para determinar o pH da saliva humana e o do suco gástrico, têm-se, respectivamente, as cores:', 'a) vermelha e vermelha.', 'b) vermelha e azul', 'c) rosa e roxa.', 'd) roxa e amarela.', 'e) roxa e vermelha', 'E', 2),

('Questão04: (ENEM-2018) Na hidrogenação parcial de óleos vegetais, efetuada pelas indústrias alimentícias, ocorrem processos paralelos que conduzem à conversão das gorduras cis e trans. Diversos estudos têm sugerido uma relação direta entre os ácidos graxos trans e o aumento do risco de doenças vasculares.', 'a) Adição.', 'b) Ácido-base.', 'c) Substituição', 'd) Isomerização.', 'e) Oxirredução', 'D', 2),

-- QUESTÃO 5 - RESOLVER COM A MARI - QUESTÃO COM IMAGEM

('Questão06: (UNIUBE-MG) Foi realizada uma festa de formatura do terceiro ano do ensino médio de uma escola de Uberaba. Dois formandos estavam muito entusiasmados com a festa, que aconteceu em um dia quente de primavera. Percebendo os fenômenos químicos e físicos que ocorriam ao seu redor, afirmaram: I) O gelo, que está nos copos, após a ingestão dos sucos, está derretendo com muita facilidade. II) A carne do churrasco está ao ponto. III) Para acender o fogo na churrasqueira foi utilizado um pouco de etanol em gel, facilitando, assim, o processo. IV) A água da piscina não estava quente, porém visivelmente evaporava com facilidade devido à alta temperatura ambiente. Assinale a alternativa que contém a(s) afirmação(ções) em que há presença de um fenômeno químico:', 'a) I, apenas', 'b) II, apenas', 'c) III, apenas', 'd) I e IV, apenas', 'e) II e III, apenas', 'E', 2),

('Questão07: (ENEM/2014) Alguns materiais poliméricos não podem ser utilizados para a produção de certos tipos de artefatos, seja por limitações das propriedades mecânicas, seja pela facilidade com que sofrem degradação, gerando subprodutos indesejáveis para aquela aplicação. Torna-se importante, então, a fiscalização, para determinar a natureza do polímero utilizado na fabricação do artefato. Um dos métodos possíveis baseia-se na decomposição do polímero para a geração dos monômeros que lhe deram origem. A decomposição controlada de um artefato gerou a diamina H2N(CH2)6NH2 e o diácido HO2C(CH2)4CO2H. Logo, o artefato era feito de', 'a) poliéster.', 'b) poliamida.', 'c) polietileno.', 'd) poliacrilato.', 'e) polipropileno.', 'B', 2),

-- QUESTÃO 8 - RESOLVER COM A MARI - QUESTÃO COM IMAGEM

('Questão09: (UFF) Tem-se uma amostra gasosa formada por um dos seguintes compostos: CH4; C2H4; C2H6; C3H6 ou C3H8. Se 22 g dessa amostra ocupam o volume de 24,6 L à pressão de 0,5 atm e temperatura de 27 °C (Dado: R = 0,082 L .atm.K–1.mol–1), conclui-se que se trata do gás:', 'a) etano.', 'b) metano.', 'c) propano.', 'd) propeno.', 'e) eteno.', 'C', 2),

('Questão10: (Mack-2003) Uma distribuição eletrônica possível para um elemento X, que pertence à mesma família do elemento bromo, cujo número atômico é igual a 35, é:', 'a) 1s2, 2s2, 2p5', 'b) 1s2, 2s2, 2p6, 3s2, 3p1', 'c) 1s2, 2s2, 2p2', 'd) 1s2, 2s2, 2p6, 3s1', 'e) 1s2, 2s2, 2p6, 3s2, 3p6, 4s2, 3d5', 'A', 2);

-- SIMULADO 3 - TABELA DE QUESTÕES
INSERT INTO questoes (enunciado, alternativa_a, alternativa_b, alternativa_c, alternativa_d, alternativa_e, resposta_correta, id_simulado) VALUES 

('Questão01: (UFPI) A nova legislação de trânsito prevê um limite máximo de 6 decigramas de álcool, C2H5OH, por litro de sangue do motorista (0,6 g/L). Considerando que a porcentagem média de álcool ingerida que fica no sangue é de 15% em massa, identifique, para um adulto com peso médio de 70 kg cujo volume de sangue é de 5 litros, o número máximo de latas de cerveja (volume = 350 mL) ingeridas sem que o limite estabelecido seja ultrapassado. Dados complementares: a cerveja tem 5% de álcool em volume, e a densidade do álcool é 0,80 g/mL.', 'a) 1', 'b) 2', 'c) 3', 'd) 4', 'e) 5', 'A', 3),

('Questão02: (PUC-Campinas) Evapora-se totalmente o solvente de 250 mL de uma solução aquosa de MgCl2 de concentração 8,0 g/L. Quantos gramas de soluto são obtidos?', 'a) 8,0', 'b) 6,0', 'c) 4,0', 'd) 2,0', 'e) 1,0', 'D', 3),

('Questão03: (UECE/2021-Adaptada) A nomenclatura IUPAC (União Internacional da Química Pura e Aplicada) dos compostos orgânicos é muito importante para identificá-los internacionalmente. Essa nomenclatura segue regras que permitem determinar sua fórmula estrutural. Assim, é correto dizer que o composto 5-etil-4-fenil3-metil-hex-1-eno contém', 'a) quatro ligações π(pi).', 'b) apenas três átomos de carbono terciários.', 'c) Uma cadeia carbônica principal saturada.', 'd) quinze átomos de carbono e vinte e um átomos de hidrogênio.', 'e) acetato de isobutila, metil-benzeno, hexeno-2.', 'D', 3),

('Questão04: (ITA) Um alcano pode ser um isômero de:', 'a) um alceno com o mesmo número de átomos de carbono.', 'b) um cicloalcano com a mesma fórmula estrutural.', 'c) outro alcano de mesma fórmula molecular.', 'd) um alcino com apenas uma ligação tripla.', 'e) um alcadieno com o mesmo número de átomos de hidrogênio.', 'C', 3),

-- QUESTÃO 5 - RESOLVER COM A MARI - QUESTÃO COM IMAGEM

('Questão06: (Ufes) A molécula do OF2 é polar, e a molécula do BeF2 é não polar. Isto se deve à (ao):', 'a) diferença de eletronegatividade entre os átomos nas respectivas moléculas', 'b) geometria molecular', 'c) tamanho dos átomos ligados ao flúor.', 'd) grande reatividade do oxigênio em relação ao flúor.', 'e) fato de o oxigênio e o flúor serem gases.', 'B', 3),

-- QUESTÃO 7 - RESOLVER COM A MARI - QUESTÃO COM IMAGEM

-- QUESTÃO 8 - RESOLVER COM A MARI - QUESTÃO COM IMAGEM

-- QUESTÃO 9 - RESOLVER COM A MARI - QUESTÃO COM IMAGEM

('Questão10: (Mackenzie) Qual a concentração, em g/L, da solução obtida ao se dissolverem 4 g de cloreto de sódio em 50 cm3 de água?', 'a) 200 g/L', 'b) 20 g/L', 'c) 0,08 g/L', 'd) 12,5 g/L', 'e) 80 g/L', 'E', 3);
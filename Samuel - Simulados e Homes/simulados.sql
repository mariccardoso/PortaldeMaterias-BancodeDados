-- FINALIZADO E TESTADO --

-- CRIAÇÃO DAS TABELAS --

-- TABELA DE SIMULADOS --
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

-- SIMULADO 1 - QUESTÕES DA TABELA DE QUESTÕES
INSERT INTO questoes (enunciado, alternativa_a, alternativa_b, alternativa_c, alternativa_d, alternativa_e, resposta_correta, id_simulado) VALUES 
('Questão01: (PUC) O número normal de subníveis existentes no quarto nível energético dos átomos é igual a:', 'a) 2', 'b) 5', 'c) 3', 'd) 1', 'e) 4', 'E', 1),
('Questão02: (PUC-PR) Alcinos são hidrocarbonetos:', 'a) alifáticos saturados.', 'b) alicíclicos saturados.', 'c) alifáticos insaturados com dupla ligação.', 'd) alicíclicos insaturados com tripla ligação.', 'e) alifáticos insaturados com tripla ligação.', 'E', 1),
('Questão03: (Fatec) Considere as afirmações a seguir, segundo a Lei de Hess. I – O calor de reação (ΔH) depende apenas dos estados inicial e final do processo. II – As equações termoquímicas podem ser somadas como se fossem equações matemáticas. III – Podemos inverter uma equação termoquímica desde que se inverta o sinal de ΔH. IV – Se o estado final do processo for alcançado por vários caminhos, o valor de ΔH dependerá dos estados intermediários através dos quais o sistema pode passar. Conclui-se que:', 'a) as afirmações I e II são verdadeiras.', 'b) as afirmações II e III são verdadeiras.', 'c) as afirmações I, II e III são verdadeiras.', 'd) todas são verdadeiras.', 'e) todas são falsas.', 'C', 1),
('Questão04: (Fuvest) O besouro-bombardeiro espanta seus predadores expelindo uma solução quente. Quando ameaçado, em seu organismo ocorre a mistura de soluções aquosas de hidroquinona, peróxido de hidrogênio e enzimas, que promovem uma reação exotérmica, representada por: Assim sendo, o calor envolvido na reação que ocorre no organismo do besouro é', 'a) −558 kJ ∙ mol−1', 'b) −204 kJ ∙ mol−1', 'c) +177 kJ ∙ mol−1', 'd) +558 kJ ∙ mol−1', 'e) +585 kJ ∙ mol−1', 'C', 1)
('Questão05: (UFRGS) Nos compostos orgânicos, além do carbono e do hidrogênio, é muito frequente a presença do oxigênio. Assinale a alternativa em que os três compostos apresentam oxigênio.', 'a) formaldeído, ácido acético, cloreto de etila.', 'b) trinitrotolueno, etanol, fenilamina.', 'c) ácido fórmico, butanol-2, propanona.', 'd) isooctano, metanol, metóxi-etano.', 'e) acetato de isobutila, metil-benzeno, hexeno-2.', 'C', 1),
('Questão06: (PUC-RS) Para responder à questão a seguir, numere a coluna B, que contém alguns nomes de compostos orgânicos, de acordo com a coluna A, na qual estão citadas funções orgânicas. A sequência CORRETA dos números da coluna B, de cima para baixo, é:', 'a) 2 - 1 - 3 - 5 - 4.', 'b) 3 - 1 - 2 - 4 - 5.', 'c) 4 - 3 - 2 - 1 - 5.', 'd) 3 - 2 - 5 - 1 - 4.', 'e) 2 - 4 - 5 - 1 - 3.', 'B', 1),
('Questão07: (UFAL) Considere os compostos orgânicos representados por: Analise os compostos representados. ( ) Dois deles são aromáticos. ( ) Dois deles são hidrocarbonetos. ( ) Dois deles representam cetonas. ( ) O composto V é um dimetilcicloexano. ( ) O único composto que forma sais quer reagindo com ácidos ou com bases é o IV.', 'a) V - F - V - F - V', 'b) F- V - F - V - V', 'c) V - V - F - F - F', 'd) F - V - V - F - V', 'e) V - F - F - V - V', 'B', 1),
('Questão08: (Unesp) O nome da substância com a fórmula C4H8O é:', 'a) butanol', 'b) butano', 'c) butanoato de etila', 'd) butanal', 'e) metanol', 'A', 1),
('Questão09: (UNICAMP) O composto etanol (C2H5OH) é classificado como:', 'a) aldeído', 'b) álcool', 'c) cetona', 'd) ácido carboxílico', 'e) éster', 'B', 1),
('Questão10: (PUC-SP) Resolva a questão com base na análise das afirmativas abaixo. I – A tabela periódica moderna atual está disposta em ordem crescente de massa atômica. II – Todos os elementos que possuem 1 elétron e 2 elétrons na camada de valência são, respectivamente, metais alcalinos e metais alcalinoterrosos, desde que o número quântico principal dessa camada (n não igual1). III – Em um mesmo período, os elementos apresentam o mesmo número de níveis (camadas). IV – Em um mesmo grupo (família), os elementos apresentam o mesmo número de níveis (camadas).', 'a) I e IV (apenas)', 'b) I e II (apenas)', 'c) II e III (apenas)', 'd) II e IV (apenas)', 'e) III e IV (apenas)', 'C', 1);
-- TESTE:
SELECT * FROM questoes;


-- SIMULADO 2 - QUESTÕES DA TABELA DE QUESTÕES
INSERT INTO questoes (enunciado, alternativa_a, alternativa_b, alternativa_c, alternativa_d, alternativa_e, resposta_correta, id_simulado) VALUES 
('Questão01: (UFPI) A nova legislação de trânsito prevê um limite máximo de 6 decigramas de álcool, C2H5OH, por litro de sangue do motorista (0,6 g/L). Considerando que a porcentagem média de álcool ingerida que fica no sangue é de 15% em massa, identifique, para um adulto com peso médio de 70 kg cujo volume de sangue é de 5 litros, o número máximo de latas de cerveja (volume = 350 mL) ingeridas sem que o limite estabelecido seja ultrapassado. Dados complementares: a cerveja tem 5% de álcool em volume, e a densidade do álcool é 0,80 g/mL.', 'a) 1', 'b) 2', 'c) 3', 'd) 4', 'e) 5', 'A', 2),
('Questão02: (ENEM-2016) Na preparação da massa do pão, presente na mesa do café da maioria dos brasileiros, utilizase o fungo Saccharomyces cerevisiae vivo, contido no fermento. Sua finalidade é fazer com que a massa cresça por meio da produção de gás carbônico. Esse processo químico de liberação de gás é causado pela:', 'a) fermentação alcoólica.', 'b) glicogênese lática', 'c) produção de ácido lático.', 'd) produção de lactobacilos.', 'e) formação do ácido pirúvico', 'A', 2),
('Questão03: (ENEM-2018) O suco de repolho-roxo pode ser utilizado como indicador ácido-base em diferentes soluções. Para isso, basta misturar um pouco desse suco à solução desejada e comparar a coloração final com a escala indicadora de pH, com valores de 1 a 14, mostrada a seguir: Utilizando-se o indicador ácido-base e a escola para determinar o pH da saliva humana e o do suco gástrico, têm-se, respectivamente, as cores:', 'a) vermelha e vermelha.', 'b) vermelha e azul', 'c) rosa e roxa.', 'd) roxa e amarela.', 'e) roxa e vermelha', 'E', 2),
('Questão04: (ENEM-2018) Na hidrogenação parcial de óleos vegetais, efetuada pelas indústrias alimentícias, ocorrem processos paralelos que conduzem à conversão das gorduras cis e trans. Diversos estudos têm sugerido uma relação direta entre os ácidos graxos trans e o aumento do risco de doenças vasculares.', 'a) Adição.', 'b) Ácido-base.', 'c) Substituição', 'd) Isomerização.', 'e) Oxirredução', 'D', 2),
('Questão05: (Uespi)
Associe a coluna da esquerda com a coluna da direita, relacionando a espécie química com a sua respectiva geometria molecular, e marque a sequência correta, de cima para baixo:', 'a) II, V, III, I, IV', 'b) IV, V, III, I, II', 'c) II, III, V, I, IV', 'd) IV, III, V, I, II', 'e) IV, V, III, II, I', 'D', 2),
('Questão06: (UNIUBE-MG) Foi realizada uma festa de formatura do terceiro ano do ensino médio de uma escola de Uberaba. Dois formandos estavam muito entusiasmados com a festa, que aconteceu em um dia quente de primavera. Percebendo os fenômenos químicos e físicos que ocorriam ao seu redor, afirmaram: I) O gelo, que está nos copos, após a ingestão dos sucos, está derretendo com muita facilidade. II) A carne do churrasco está ao ponto. III) Para acender o fogo na churrasqueira foi utilizado um pouco de etanol em gel, facilitando, assim, o processo. IV) A água da piscina não estava quente, porém visivelmente evaporava com facilidade devido à alta temperatura ambiente. Assinale a alternativa que contém a(s) afirmação(ções) em que há presença de um fenômeno químico:', 'a) I, apenas', 'b) II, apenas', 'c) III, apenas', 'd) I e IV, apenas', 'e) II e III, apenas', 'E', 2),
('Questão07: (ENEM/2014) Alguns materiais poliméricos não podem ser utilizados para a produção de certos tipos de artefatos, seja por limitações das propriedades mecânicas, seja pela facilidade com que sofrem degradação, gerando subprodutos indesejáveis para aquela aplicação. Torna-se importante, então, a fiscalização, para determinar a natureza do polímero utilizado na fabricação do artefato. Um dos métodos possíveis baseia-se na decomposição do polímero para a geração dos monômeros que lhe deram origem. A decomposição controlada de um artefato gerou a diamina H2N(CH2)6NH2 e o diácido HO2C(CH2)4CO2H. Logo, o artefato era feito de', 'a) poliéster.', 'b) poliamida.', 'c) polietileno.', 'd) poliacrilato.', 'e) polipropileno.', 'B', 2),
('Questão08: (Unesp) Em uma cena de um filme, um indivíduo corre carregando uma maleta tipo 007 (volume de 20 dm3) cheia de barras de um certo metal. Considerando que um adulto de massa média (70 kg) pode deslocar, com uma certa velocidade, no máximo o equivalente à sua própria massa, indique qual o metal contido na maleta, observando os dados da tabela. (Dado: 1 dm3 = 1 L = 1.000 cm3)', 'a) Alumínio', 'b) Zinco', 'c) Prata', 'd) Chumbol', 'e) Ouro', 'A', 2),
('Questão09: (UFF) Tem-se uma amostra gasosa formada por um dos seguintes compostos: CH4; C2H4; C2H6; C3H6 ou C3H8. Se 22 g dessa amostra ocupam o volume de 24,6 L à pressão de 0,5 atm e temperatura de 27 °C (Dado: R = 0,082 L .atm.K–1.mol–1), conclui-se que se trata do gás:', 'a) etano.', 'b) metano.', 'c) propano.', 'd) propeno.', 'e) eteno.', 'C', 2),
('Questão10: (Mack-2003) Uma distribuição eletrônica possível para um elemento X, que pertence à mesma família do elemento bromo, cujo número atômico é igual a 35, é:', 'a) 1s2, 2s2, 2p5', 'b) 1s2, 2s2, 2p6, 3s2, 3p1', 'c) 1s2, 2s2, 2p2', 'd) 1s2, 2s2, 2p6, 3s1', 'e) 1s2, 2s2, 2p6, 3s2, 3p6, 4s2, 3d5', 'A', 2);
-- TESTE:
SELECT * FROM questoes;


-- SIMULADO 3 - QUESTÕES DA TABELA DE QUESTÕES
INSERT INTO questoes (enunciado, alternativa_a, alternativa_b, alternativa_c, alternativa_d, alternativa_e, resposta_correta, id_simulado) VALUES 
('Questão01: (UFPI) A nova legislação de trânsito prevê um limite máximo de 6 decigramas de álcool, C2H5OH, por litro de sangue do motorista (0,6 g/L). Considerando que a porcentagem média de álcool ingerida que fica no sangue é de 15% em massa, identifique, para um adulto com peso médio de 70 kg cujo volume de sangue é de 5 litros, o número máximo de latas de cerveja (volume = 350 mL) ingeridas sem que o limite estabelecido seja ultrapassado. Dados complementares: a cerveja tem 5% de álcool em volume, e a densidade do álcool é 0,80 g/mL.', 'a) 1', 'b) 2', 'c) 3', 'd) 4', 'e) 5', 'A', 3),
('Questão02: (PUC-Campinas) Evapora-se totalmente o solvente de 250 mL de uma solução aquosa de MgCl2 de concentração 8,0 g/L. Quantos gramas de soluto são obtidos?', 'a) 8,0', 'b) 6,0', 'c) 4,0', 'd) 2,0', 'e) 1,0', 'D', 3),
('Questão03: (UECE/2021-Adaptada) A nomenclatura IUPAC (União Internacional da Química Pura e Aplicada) dos compostos orgânicos é muito importante para identificá-los internacionalmente. Essa nomenclatura segue regras que permitem determinar sua fórmula estrutural. Assim, é correto dizer que o composto 5-etil-4-fenil3-metil-hex-1-eno contém', 'a) quatro ligações π(pi).', 'b) apenas três átomos de carbono terciários.', 'c) Uma cadeia carbônica principal saturada.', 'd) quinze átomos de carbono e vinte e um átomos de hidrogênio.', 'e) acetato de isobutila, metil-benzeno, hexeno-2.', 'D', 3),
('Questão04: (ITA) Um alcano pode ser um isômero de:', 'a) um alceno com o mesmo número de átomos de carbono.', 'b) um cicloalcano com a mesma fórmula estrutural.', 'c) outro alcano de mesma fórmula molecular.', 'd) um alcino com apenas uma ligação tripla.', 'e) um alcadieno com o mesmo número de átomos de hidrogênio.', 'C', 3),
('Questão05: (ENEM-2018) O ácido acetilsalicílico é um analgésico que pode ser obtido pela reação de esterificação do ácido salicílico. Quando armazenado em condições de elevadas temperaturas e umidade, ocorrem mudanças físicas e químicas em sua estrutura, gerando um odor característico. A figura representa a fórmula estrutural do ácido acetilsalicílico. Esse odor é provocado pela liberação de:', 'a) etanol', 'b) etanal', 'c) ácido etanoico', 'd) etanoato de etila', 'e) benzoato de etila', 'C', 3),
('Questão06: (Ufes) A molécula do OF2 é polar, e a molécula do BeF2 é não polar. Isto se deve à (ao):', 'a) diferença de eletronegatividade entre os átomos nas respectivas moléculas', 'b) geometria molecular', 'c) tamanho dos átomos ligados ao flúor.', 'd) grande reatividade do oxigênio em relação ao flúor.', 'e) fato de o oxigênio e o flúor serem gases.', 'B', 3),
('Questão07: (ENEM/2014) Alguns materiais poliméricos não podem ser utilizados para a produção de certos tipos de artefatos, seja por limitações das propriedades mecânicas, seja pela facilidade com que sofrem degradação, gerando subprodutos indesejáveis para aquela aplicação. Torna-se importante, então, a fiscalização, para determinar a natureza do polímero utilizado na fabricação do artefato. Um dos métodos possíveis baseia-se na decomposição do polímero para a geração dos monômeros que lhe deram origem. A decomposição controlada de um artefato gerou a diamina H2N(CH2)6NH2 e o diácido HO2C(CH2)4CO2H. Logo, o artefato era feito de', 'a) poliéster', 'b) poliamida', 'c) polietileno', 'd) poliacrilato', 'e) polipropileno','B', 3),
('Questão08: (ENEM/2014) Um método para determinação do teor de etanol na gasolina consiste em mistura volumes conhecidos de água e de gasolina em um frasco específico. Após agitar o frasco e aguardar um período de tempo, medem-se os volumes das duas fases imiscíveis que são obtidas: uma orgânica e outra aquosa. O etanol, antes miscível com a gasolina, encontra-se agora miscível com a água. Para explicar o comportamento do etanol antes e depois da adição de água, é necessário conhecer', 'a) a densidade dos líquidos', 'b) o tamanho das moléculas', 'c) o ponto de ebulição dos líquidos', 'd) os átomos presentes nas moléculas', 'e) o tipo de interação entre as moléculas', 'E', 3),
('Questão09: (UNICAMP) Tem-se uma amostra gasosa formada por um dos seguintes compostos: CH4; C2H4; C2H6; C3H6 ou C3H8. Se 22 g dessa amostra ocupam o volume de 24,6 L à pressão de 0,5 atm e temperatura de 27 °C (Dado: R = 0,082 L .atm.K–1.mol–1), conclui-se que se trata do gás:', 'a) etano', 'b) metano', 'c) propano', 'd) propeno', 'e) eteno', 'C', 3),
('Questão10: (Mackenzie) Qual a concentração, em g/L, da solução obtida ao se dissolverem 4 g de cloreto de sódio em 50 cm3 de água?', 'a) 200 g/L', 'b) 20 g/L', 'c) 0,08 g/L', 'd) 12,5 g/L', 'e) 80 g/L', 'E', 3);
-- TESTE:
SELECT * FROM questoes;


-- SIMULADO 4 - QUESTÕES DA TABELA DE QUESTÕES - TESTADO
INSERT INTO questoes 
(enunciado, alternativa_a, alternativa_b, alternativa_c, alternativa_d, alternativa_e, resposta_correta, id_simulado) 
VALUES 
('Questão01: (FUVEST) Estudos recentes parecem indicar que o formato do olho humano e a visão são influenciados pela quantidade da substância X, sintetizada pelo organismo. A produção dessa substância é favorecida pela luz solar, e crianças que fazem poucas atividades ao ar livre tendem a desenvolver dificuldade para enxergar objetos distantes. Essa disfunção ocular é comumente chamada de miopia. Considere a fórmula estrutural da substância X e os diferentes formatos de olho: Observação: As linhas tracejadas representam o feixe de luz incidente no olho. Com base nessas informações, conclui-se que a miopia poderá atingir crianças cujo organismo venha a produzir ......... X em quantidade insuficiente, levando à formação de olho do tipo .......... As lacunas da frase acima devem ser preenchidas, respectivamente, por', 'a) o aminoácido; III', 'b) a amina; II', 'c) o aminoácido; I', 'd) o fenol; I', 'e) a amina; III', 'E', 4),
('Questão02: (ENEM/2000) O suco extraído do repolho roxo pode ser utilizado como indicador do caráter ácido (pH entre 0 e 7) ou básico (pH entre 7 e 14) de diferentes soluções. Misturando-se um pouco de suco de repolho e da solução, a mistura passa a apresentar diferentes cores, segundo sua natureza ácida ou básica, de acordo com a escala abaixo. Algumas soluções foram testadas com esse indicador, produzindo os seguintes resultados: De acordo com esses resultados, as soluções I, II, III e IV têm, respectivamente, caráter:', 'a) ácido/básico/básico/ácido', 'b) ácido/básico/ácido/básico', 'c) básico/ácido/básico/ácido', 'd) ácido/ácido/básico/básico', 'e) básico/básico/ácido/ácido', 'E', 4),
('Questao03: (FUVEST) A aparelhagem esquematizada na figura abaixo pode ser utilizada para identificar gases ou vapores produzidos em transformacoes quimicas. No frasco 1, cristais azuis de CoCl2 anidro adquirem coloracao rosa em contato com vapor dagua. No frasco 2, a solucao aquosa saturada de Ca(OH)2 turva-se em contato com CO2 (g). Utilizando essa aparelhagem em tres experimentos distintos, um estudante de Quimica investigou os produtos obtidos em tres diferentes processos: I. aquecimento de CaCO3 puro; II combustao de uma vela; III reacao de raspas de Mg (s) com HCl (aq). O aparecimento de coloracao rosa nos cristais de CoCl2 anidro e a turbacao da solucao aquosa de Ca(OH)2 foram observados, simultaneamente, em', 'a) I, apenas', 'b) II, apenas', 'c) III, apenas', 'd) I e III, apenas', 'e) I e II, apenas', 'B', 4);
('Questão04: (Fuvest) Na Química, para se caracterizar um determinado material são utilizadas, dentre outras, quatro constantes físicas: ponto de fusão, ponto de ebulição, densidade e solubilidade que constituem um “quarteto fantástico”. Em um laboratório, foram obtidos os dados da tabela abaixo, relativos a propriedades específicas de amostras de alguns materiais. Considerando os dados da tabela, analise as afirmações seguintes. I) À temperatura de 25 ºC, os materiais C e D estão no estado líquido. II) Massa e volume são propriedades específicas de cada material. III) Se o material B for insolúvel em D, quando for adicionado a um recipiente que contenha o material D ele deverá afundar. IV) Se o material A for insolúvel em D, quando for adicionado a um recipiente que contenha o material D ele deverá flutuar. V) À temperatura de 20 °C, a densidade do material C é igual a 0,74 g/mL. Das afirmações acima, são corretas, apenas:', 'a) I, III e V.', 'b) II, III e V.', 'c) III, IV e IV.', 'd) I e V.', 'e) I, III e IV.', 'A', 4),
('Questão05: (UFMG) Algumas propriedades físicas são características do conjunto das moléculas de uma substância, enquanto outras são atributos intrínsecos a moléculas individuais. Assim sendo, é CORRETO afirmar que uma propriedade intrínseca de uma molécula de água é a:', 'a) densidade', 'b) polaridade', 'c) pressão de vapor', 'd) temperatura de ebulição', 'e) geometria molecular', 'E', 4),
('Questão06: (FUVEST) Uma usina de reciclagem de plástico recebeu um lote de raspas de 2 tipos de plásticos, um deles com densidade 1,10 kg/L e outro com densidade 1,14 kg/L. Para efetuar a separação dos dois tipos de plásticos, foi necessário preparar 1000 L de uma solução de densidade apropriada, misturando-se volumes adequados de água (densidade = 1,00 kg/L) e de uma solução aquosa de NaCl, disponível no almoxarifado da usina, de densidade 1,25 kg/L. Esses volumes, em litros, podem ser, respectivamente:', 'a) 900 e 100', 'b) 800 e 200', 'c) 500 e 500', 'd) 200 e 800', 'e) 100 e 900', 'C', 4),
('Questão07: (UFAL) Uma jovem estudante quis demonstrar para sua mãe o que é uma reação química. Para tanto, preparou, em cinco copos, as seguintes soluções: Em seguida, começou a fazer misturas aleatórias de amostras das soluções contidas nos copos, juntando duas amostras diferentes a cada vez. Qual é a probabilidade de que ocorra uma reação química ao misturar amostras dos conteúdos de dois dos cinco copos?', 'a) 1/10', 'b) 1/8', 'c) 1/5', 'd) 1/2', 'e) 1/3', 'C', 4),
('Questão08: (UFAL) Uma pessoa comprou um frasco de álcool anidro. Para se certificar de que o conteúdo do frasco não foi fraudado com a adição de água, basta que ela determine, com exatidão, I. a densidade II. o volume III. a temperatura de ebulição IV. a massa. Dessas afirmações, são corretas SOMENTE:', 'a) I e II', 'b) I e III', 'c) I e IV', 'd) II e III', 'e) III e IV', 'B', 4),
('Questão09: (PUC-SP) Numa indústria de fabricação do metanol, CH3OH, a queda acidental do álcool no reservatório de água potável tornou-a imprópria para o consumo. Apesar do incidente, duas características da água potável permaneceram inalteradas:', 'a) cor e densidade', 'b) sabor e ponto de ebulição', 'c) odor e calor específico', 'd) cor e condutividade elétrica', 'e) sabor e ponto de fusão', 'D', 4),
('Questão10: (Enem/2014) A baunilha é uma espécie de orquídea. A partir de sua flor, é produzida a vanilina (conforme representação química), que dá origem ao aroma de baunilha. Na vanilina estão presentes as funções orgânicas:', 'a) aldeído, éter e fenol', 'b) álcool, aldeído e éter', 'c) álcool, cetona e fenol', 'd) aldeído, cetona e fenol', 'e) ácido carboxílico, aldeído e éter', 'A', 4);

-- CONSULTAS

-- Seleciona todas as questões
SELECT * FROM questoes;

-- Seleciona o título, dificuldade, tipo do simulado e as alternativas das questões
SELECT s.titulo, s.dificuldade, s.tipo, q.enunciado, q.alternativa_a, q.alternativa_b, q.alternativa_c, q.alternativa_d, q.alternativa_e, q.resposta_correta
FROM simulados s
JOIN questoes q ON q.id_simulado = s.id;

-- Seleciona o título, dificuldade, tipo do simulado e a resposta correta das questões
SELECT s.titulo, s.dificuldade, s.tipo, q.id_questao, q.resposta_correta
FROM simulados s
JOIN questoes q ON q.id_simulado = s.id;

-- TESTE:
-- Seleciona todas as questões
SELECT * FROM questoes;

-- CONSULTAS

-- Todas as questões do simulado 1
SELECT * FROM questoes WHERE id_simulado = 1;

-- Todas as questões que têm a alternativa E como resposta correta
SELECT * FROM questoes WHERE resposta_correta = 'E';
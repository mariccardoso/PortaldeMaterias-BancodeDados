-- Insira os dados na tabela especialistas para que a tabela noticias possa ser criada

-- Inserindo especialistas para serem referenciados na tabela noticias
INSERT INTO especialistas (nome, especialidade) VALUES
('Especialista 01', 'Químico'),
('Especialista 02', 'Biólogo'),
('Especialista 03', 'Físico'),
('Especialista 04', 'Matemático'),
('Especialista 05', 'Engenheiro Químico');

-- Insira os dados na tabela noticias para que a tabela media_noticia possa ser criada
CREATE TABLE noticias (
    id SERIAL PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    subtitulo VARCHAR(100) NOT NULL,
    breve_descricao TEXT NOT NULL,
    conteudo TEXT NOT NULL,
    id_autor INT NOT NULL,

    FOREIGN KEY (id_autor) REFERENCES especialistas(id) ON DELETE CASCADE ON UPDATE CASCADE
);

-- Insira os links das imagens das noticias na tabela media_noticia
CREATE TABLE media_noticia (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    media_type VARCHAR(100) NOT NULL,
    imagem_url VARCHAR(255) NOT NULL,
    id_noticia INT NOT NULL,

    FOREIGN KEY (id_noticia) REFERENCES noticias(id) ON DELETE CASCADE ON UPDATE CASCADE
);

-- Inserindo notícias na tabela noticias
INSERT INTO noticias (titulo, subtitulo, breve_descricao, conteudo, id_autor) VALUES
('O Novo Elemento', 'Ununênio, o novo elemento químico', 
'Uma equipe de cientistas japoneses embarcou recentemente em um projeto tão fascinante quanto complexo: a busca pelo elemento 119 da tabela periódica.', 
'Uma equipe de cientistas japoneses embarcou recentemente em um projeto tão fascinante quanto complexo: a busca pelo elemento 119 da tabela periódica. Em 2016, a tabela criada pelo químico russo Dimitri Mendeléiev em 1869 ganhou quatro novos elementos: o 113 (nihônio), o 115 (moscóvio), o 117 (tennessino) e o 118 (oganessono).

Agora, o físico Hideto Enyo e sua equipe querem inaugurar a oitava fileira da tabela com um metal chamado até agora de ununênio (um, um e nove, em latim), que ninguém, até o momento, conseguiu sintetizar. Os elementos da tabela periódica são organizados pelos números de prótons no núcleo do átomo de cada um, pela distribuição de seus elétrons e pela recorrência de suas propriedades periódicas.

O Plano
O plano para descobrir o novo elemento é o seguinte:

Os elementos mais leves: como o hélio (2) e o lítio (3), se formaram imediatamente após o Big Bang. O restante, a partir de uma fusão nuclear no coração das estrelas.
Elementos elevados: Os elementos que têm um número de prótons superior a 26 têm uma origem mais duvidosa. E os que são mais pesados que o plutônio (94) não existem naturalmente na Terra. Eles precisam ser sintetizados em laboratório.

Por quê?: isso ocorre porque os elementos mais pesados têm uma carga maior que os elementos mais leves. Isso é o que faz com que eles sejam mais fáceis de encontrar em laboratórios. Eles são mais propensos a reagir com reatores químicos, e por isso, são mais propensos a serem sintetizados.
Como acontecerá: O plano dos cientistas japoneses é disparar feixes do metal vanádio, de 23 prótons, contra um alvo de cúrio (96), um elemento criado artificialmente, já que ele tem um número de prótons superior a 26. O feixe vai atingir o cúrio e vai ser quebrado, liberando um número de prótons igual ao do metal. Esses prótons são então transportados para a superfície, e são usados para sintetizar o novo elemento.
O experimento: O experimento deve acontecer em um acelerador de partículas perto de Tóquio. O acelerador deve ser capaz de acelerar as partículas até cerca de 10 km/s. A velocidade máxima de aceleração é de cerca de 20 km/s.', 9);

INSERT INTO noticias (titulo, subtitulo, breve_descricao, conteudo, id_autor) VALUES
('Questões de Química no Enem', 'Química no Enem 2024',

'Ter atenção às unidades de medida, ler os enunciados com calma e analisar bem os gráficos e tabelas estão entre as dicas para ajudar na prova de Química do Enem 2024 aqui',

'Química é uma das disciplinas cobradas na área de "Ciências da Natureza e suas Tecnologias" no Enem 2024. Essa prova conta com 45 questões objetivas no total, com questões também de Biologia e Física.

Entre os temas de Química que mais caem no Enem, estão: Química Ambiental, Orgânica, separação de misturas, Eletroquímica e estequiometria, lista Camila Carvalho, professora parceria da plataforma Amplia. Na hora da prova, a educadora reforça a importância de ler atentamente os textos de apoio, que contam com os comandos e as palavras-chave para responder cada questão.

O que cai na prova de Química do Enem 2024?
Confira quais são os conteúdos e temas que costumam cair na prova de Química do Enem 2024, conforme lista o professor Daniel Mendez:

Ligações químicas, polaridade e forças intermoleculares: compreensão das ligações covalentes, iônicas e metálicas é essencial, assim como a relação entre a polaridade das moléculas e as forças de interação intermoleculares, como as forças de Van der Waals e as ligações de hidrogênio.
Reações orgânicas: o Enem frequentemente aborda tipos de reações orgânicas, como reações de adição, eliminação, substituição e polimerização, comuns em compostos orgânicos. Saber identificar esses processos é importante para resolver questões relacionadas à química dos materiais, bioquímica e aplicações industriais.
Compostos orgânicos: conheça as classes de compostos orgânicos, como hidrocarbonetos, álcoois, ésteres, ácidos carboxílicos, entre outros, e suas propriedades químicas e físicas também é fundamental. Além disso, entender a formação e as aplicações desses compostos no contexto cotidiano.
Eletroquímica: a eletroquímica, que envolve o estudo de reações de oxirredução e a relação entre energia e processos químicos, é um tema recorrente no Enem. Os conceitos de pilhas eletroquímicas, eletrólise e a diferença entre os processos de oxidação e redução são frequentemente cobrados.
Leis ponderais e estequiometria: as leis ponderais, como a Lei da Conservação de Massa e a Lei das Proporções Definidas, são fundamentais para entender a composição das substâncias e a formação de compostos. Já a estequiometria, que envolve o cálculo de quantidades de reagentes e produtos em uma reação, é essencial para resolver questões sobre rendimentos e proporções nas reações químicas. Esses conteúdos são recorrentes nos exames, e dominar esses temas pode fazer toda a diferença para um bom desempenho na prova de Química do Enem.', 8);

INSERT INTO noticias (titulo, subtitulo, breve_descricao, conteudo, id_autor) VALUES
('As Inovações de Química', 'As inovações da química que estão mudando o mundo', 
'Nas últimas décadas, a química avançou significativamente, com descobertas que não apenas transformam a ciência, mas também influenciam temas abordados em vestibulares.',
'Esses desenvolvimentos estão ligados a áreas como bioquímica, sustentabilidade e saúde pública, temas que frequentemente aparecem nas provas e são essenciais para uma preparação completa.

Novos desenvolvimentos são muito importantes para a química, já que é uma matéria bem complexa e sempre descobrem coisas novas sobre.

Quais são essas descobertas?

Engenharia de Proteínas e o Nobel de Química: As pesquisas premiadas com o Nobel de Química de 2023 trouxeram avanços na criação de proteínas personalizadas, aplicáveis na medicina e biotecnologia. No vestibular, esse tema se conecta com conceitos de estrutura molecular e genética.
Sustentabilidade Energética: Com os novos materiais eletroquímicos para baterias e células de combustível, o uso de energia sustentável tornou-se mais viável. Eletroquímica é um tema recorrente em vestibulares, principalmente em questões que relacionam reações de oxirredução e impacto ambiental.
Compostos orgânicos: conheça as classes de compostos orgânicos, como hidrocarbonetos, álcoois, ésteres, ácidos carboxílicos, entre outros, e suas propriedades químicas e físicas também é fundamental. Além disso, entender a formação e as aplicações desses compostos no contexto cotidiano.
Química Ambiental e Saúde Pública: Estudos recentes demonstram o impacto de compostos químicos poluentes na saúde humana, destacando a importância da química ambiental. Esse tema, que aparece em vestibulares, explora a química aplicada à saúde pública e à prevenção de doenças.
Forças Intermoleculares e Propriedades dos Compostos: Entender as forças de interação, como ligações de hidrogênio e forças de Van der Waals, ajuda a resolver questões sobre comportamento e propriedades das substâncias. Esse é um conceito fundamental na química para resolver problemas de propriedades físicas e químicas em provas.', 10);

INSERT INTO noticias (titulo, subtitulo, breve_descricao, conteudo, id_autor) VALUES
('Avanços da Química', 'Avanços Revolucionários', 
'O Avanço significativo da química, Revolucionário e Inovador, esse avanços são cruciais para novas descobertas e novos experimentos.',
'Essas descobertas prometem transformar a medicina e a biotecnologia, facilitando a criação de tratamentos personalizados para doenças complexas.

Trazem à tona tópicos de biotecnologia e bioquímica que são cada vez mais abordados nos vestibulares.

Veja agora os Avanços
Os tópicos a seguir falam sobre fatos químicos descobertos por cientistas.

Os Cientistas e Suas Descobertas: Nesta seção, apresentamos os cientistas premiados e o impacto específico de suas descobertas na química e biologia molecular. A precisão no design de proteínas, agora acessível com as novas tecnologias, é um passo fundamental para a ciência aplicada em diversas áreas, especialmente em relação a avanços médicos e farmacológicos.
Uma Nova Era no Design de Proteínas: O uso de IA, como o AlphaFold, revolucionou a capacidade de prever estruturas de proteínas com alta precisão, facilitando a modelagem de proteínas complexas em um tempo reduzido. Essa tecnologia representa um marco em como cientistas conseguem explorar, com detalhes, proteínas envolvidas em doenças, acelerando a descoberta de medicamentos.
Por Que as Estruturas Tridimensionais São Essenciais: Proteínas desempenham papéis essenciais no organismo, e sua estrutura tridimensional define como elas funcionam. Entender a forma das proteínas ajuda os cientistas a prever interações bioquímicas e abre portas para desenvolver tratamentos mais eficazes.
Aplicações Médicas e Farmacêuticas: A capacidade de criar proteínas específicas traz enormes vantagens para o desenvolvimento de terapias direcionadas, especialmente para doenças genéticas e autoimunes. Os avanços permitem criar moléculas que podem interagir de forma precisa com componentes celulares, uma inovação fundamental para medicina personalizada.
Como Essas Descobertas em Design e Estruturas de Proteínas Impactarão a Biotecnologia: Esses avanços não apenas mudam o cenário atual, mas também abrem possibilidades para que cientistas explorem doenças antes consideradas sem cura. As novas técnicas para previsão de estruturas ampliam o alcance da biotecnologia, tornando possível entender melhor uma variedade de patologias e encontrar soluções inovadoras para tratá-las.', 10);

INSERT INTO noticias (titulo, subtitulo, breve_descricao, conteudo, id_autor) VALUES
('Inovações na Química', 'Tecnologias Químicas', 
'É sempre bom saber as novas tecnologias em químicas, para sempre estar atualizado, principalmente a quem fará faculdade da área.', 
'Essas inovações prometem impactar áreas como sustentabilidade, saúde e química industrial. Entre as tecnologias destacadas estão novos métodos de reciclagem, química verde e inteligência artificial aplicada ao design molecular, temas cada vez mais presentes em vestibulares e com impacto direto na ciência e no meio ambiente.

O uso da inteligência artificial mudou completamente o mundo, no sentido bom e ruim. A IA ajuda pessoas a fazerem pesquisas mais rapidamente e coisas do tipo, porém tem gente que usa pro mal, como criar áudios, vídeos e fotos fakes.',
'O que isso muda na química
Confira agora 5 tópicos sobre:

Tecnologias que Promovem a Redução de Resíduos: Entre as tecnologias listadas, muitas abordam a redução de resíduos e poluição, com destaque para processos de fabricação mais limpos e que minimizam os subprodutos. Essas inovações refletem a tendência da química verde, que busca minimizar o impacto ambiental.
Materiais e Processos que Reduzem o Uso de Compostos Nocivos: A IUPAC destacou o desenvolvimento de materiais biodegradáveis e processos que substituem substâncias tóxicas, essenciais para reduzir a pegada ecológica da indústria.Essas tecnologias abordam uma demanda crescente por materiais sustentáveis e menos poluentes.
Transformando Resíduos Químicos em Novos Produtos de Valor: As novas tecnologias também incluem métodos avançados de reciclagem, que permitem a recuperação de substâncias químicas para serem reutilizadas em novos produtos, promovendo um ciclo mais sustentável e eficiente.
IA no Desenvolvimento de Novos Compostos e Materiais Funcionais: O uso de inteligência artificial para acelerar o design de moléculas e prever reações químicas é uma das grandes promessas da área. A IA permite que químicos testem e desenvolvam novos materiais de forma mais rápida e precisa, o que pode revolucionar setores como farmacologia e ciência de materiais.
Tecnologias Químicas que Visam Melhorar a Qualidade de Vida e a Produção Alimentar: Além da sustentabilidade, algumas das tecnologias emergentes têm aplicação direta na medicina e na agricultura, como novos compostos para tratamentos de doenças e métodos para proteger lavouras de forma mais natural e segura. Esses avanços podem ter implicações significativas para a qualidade de vida e a segurança alimentar global.', 10);

INSERT INTO noticias (titulo, subtitulo, breve_descricao, conteudo, id_autor) VALUES
('Aplicação de inteligências artificiais', 'Aplicação da IA', 
'O Prêmio Nobel de Química de 2024 foi concedido por avanços na previsão de estruturas de proteínas por meio de inteligência artificial, uma inovação que promete revolucionar o design de medicamentos personalizados.',
'Com IA e aprendizado de máquina, o programa AlphaFold, do Google DeepMind, alcançou uma precisão de mais de 95% em prever a estrutura tridimensional de proteínas, o que facilita a compreensão de doenças complexas e a criação de tratamentos direcionados.

Esse conteúdo é fundamental nos vestibulares, onde temas como biotecnologia e IA em biologia molecular são cada vez mais explorados.

IA e Química trabalham juntas
Cientistas Premiados: As trajetórias e os conhecimentos que os levaram a realizar essas descobertas. Muitas vezes, os vestibulares abordam a relevância de certos cientistas ou contextos históricos para inovações tecnológicas, e conhecer os nomes e as áreas de atuação dos premiados pode ser útil em questões de atualidades e ciência.
Novo Caminho para a Previsão de Estruturas Protéicas: Esse conhecimento é relevante para questões de vestibulares sobre bioquímica e avanços tecnológicos, mostrando a aplicação prática de conceitos teóricos e como eles facilitam descobertas científicas.
Possibilidades para Tratamentos Personalizados: Isso permite, por exemplo, criar moléculas que interagem especificamente com células afetadas por doenças, uma abordagem conhecida como medicina personalizada. No vestibular, a aplicação prática de biotecnologia no tratamento de doenças e em novas terapias é uma questão cada vez mais comum, explorando o uso da química para soluções em saúde.
A Estrutura e a Função das Proteínas: a importância da estrutura tridimensional das proteínas para suas funções no organismo, uma vez que a forma de uma proteína define como ela interage com outras moléculas. Em provas de química e biologia, esse conceito é fundamental para responder questões sobre a função das biomoléculas e suas interações no organismo.
Perspectivas para o Futuro na Ciência Médica: projeta o impacto futuro dos avanços na previsão e design de proteínas, destacando como esses métodos podem contribuir para desenvolver tratamentos inovadores para doenças complexas. Essa visão de futuro é relevante para questões de atualidades em vestibulares, permitindo que o estudante compreenda o potencial transformador das descobertas científicas no longo prazo.', 13);

INSERT INTO noticias (titulo, subtitulo, breve_descricao, conteudo, id_autor) VALUES
('Transformação da Sustentabilidade Energética', 'Baterias Eficientes', 
'Com os avanços na engenharia de materiais para baterias e células de combustível, cientistas estão desenvolvendo fontes de energia mais sustentáveis e eficientes.',
'Com os avanços na engenharia de materiais para baterias e células de combustível, cientistas estão desenvolvendo fontes de energia mais sustentáveis e eficientes.

Esses desenvolvimentos são promissores para a sustentabilidade energética, ajudando a reduzir a dependência de combustíveis fósseis.

Engenharia de Materiais para Baterias Eficientes e a Sustentabilidade Energética
Confira quais são os conteúdos sobre Baterias e Sustentabilidade

Materiais Avançados e Energia Sustentável: A escolha de materiais avançados é essencial para o desenvolvimento de baterias mais seguras, com maior capacidade e durabilidade. Esses conhecimentos se alinham ao tema de sustentabilidade nos vestibulares, relacionando a química dos materiais ao desenvolvimento sustentável.
Impacto Ambiental e Eletroquímica: As novas tecnologias em eletroquímica promovem fontes de energia mais limpas e permitem um uso mais consciente dos recursos naturais, reduzindo a dependência de combustíveis fósseis. Em questões de vestibulares, esse tema pode aparecer em tópicos de química ambiental, com perguntas sobre o impacto ambiental das tecnologias de energia.
Como Essas Baterias Funcionam: As baterias de última geração e à explicação dos princípios de oxirredução aplicados nelas. A eletroquímica e as reações de oxirredução são temas recorrentes em vestibulares, e esse conhecimento ajuda os alunos a entender como a ciência básica se aplica no desenvolvimento de tecnologias sustentáveis.
A Importância da Sustentabilidade para o Futuro: Esse ponto ressalta a importância de desenvolver soluções energéticas sustentáveis para o futuro. No contexto dos vestibulares, a sustentabilidade é cada vez mais relevante, e a química tem um papel essencial ao contribuir para novas fontes de energia que sejam menos poluentes.
Aplicações em Veículos Elétricos e Armazenamento Residencial: As aplicações das baterias em tecnologias de uso cotidiano, como veículos elétricos e sistemas de armazenamento de energia para residências. Em exames vestibulares, esse tema ajuda a entender como os avanços em química e engenharia de materiais impactam a vida cotidiana e as soluções de sustentabilidade para a sociedade.', 12);

INSERT INTO noticias (titulo, subtitulo, breve_descricao, conteudo, id_autor) VALUES
('Potencial de captura de carbono', 'Novo Método de Emissões de Gases', 
'A técnica promete reduzir significativamente as emissões de gases do efeito estufa, contribuindo para o combate às mudanças climáticas.',
'A técnica promete reduzir significativamente as emissões de gases do efeito estufa, contribuindo para o combate às mudanças climáticas. Com os avanços na engenharia de materiais para baterias e células de combustível, cientistas estão desenvolvendo fontes de energia mais sustentáveis e eficientes.',
'Como funciona essa forma de reduzir os gases?
Uma Solução Sustentável para o Clima: a captura de carbono pode mitigar o impacto ambiental, reduzindo os níveis de CO₂ e contribuindo para a estabilidade climática.
A Química do Carbono: Foca nos processos químicos que permitem a captura e o armazenamento eficiente do CO₂, facilitando muito a captura e reduzindo gastos e possíveis poluentes do ambiente e do ar.
Aplicações Industriais: Como essa tecnologia é especialmente relevante para setores industriais que emitem grandes quantidades de carbono.
Impacto Ambiental e Econômico: Aborda os benefícios econômicos e ambientais da tecnologia, como redução de multas por emissões e melhoria na imagem das empresas.
O Futuro da Captura de Carbono: Perspectivas de uso global da tecnologia e de sua evolução, com novos processos e aplicações. É uma nova grande tendência para empresas e indústrias diminuir os efeitos do efeito estufa.', 8);

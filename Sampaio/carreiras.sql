-- PRONTO, SEM ALTERAÇÕES

CREATE TABLE cursos(
    id SERIAL PRIMARY KEY,
    curso VARCHAR(200) NOT NULL,
    conexao_quimica VARCHAR(200) NOT NULL,
    descricao TEXT NOT NULL,
    habilidades_necessarias TEXT NOT NULL,
    url_externo VARCHAR(100) NOT NULL
);

INSERT INTO cursos (curso, conexao_quimica, descricao, habilidades_necessarias, url_externo)
VALUES (
    'Administração',
    'Este profissional realiza a instalação, manutenção e reparo de sistemas eletroeletrônicos, garantindo que máquinas e equipamentos funcionem corretamente.',
    'O Técnico em Qualidade garante que produtos e serviços atendam ao máximo os padrões exigidos, realizando auditorias, testes de conformidade e monitorando processos para ter a certeza e assegurar ao todo a qualidade contínua de todo o equipamento.',
    'Para ser um Técnico em Qualidade eficaz, é essencial ter habilidades em análise crítica, atenção aos detalhes, conhecimento em normas técnicas e boa comunicação.',
    'https://sp.senai.br/curso/tecnico-em-qualidade/104516'
),


(
    'Desenvolvimento de Sistemas',
    'Na indústria química, sistemas automatizados são essenciais para controlar reações, processos produtivos e garantir a precisão nas dosagens e misturas de substâncias.',
    'Desenvolvedores criam, desenvolvem e mantêm sistemas que automatizam os processos de programação de softwares e a integração de sistemas para otimização. Na indústria química, a precisão nas dosagens e misturas de substâncias são muito importantes no ramo.',
    'Para ser um Desenvolvedor de Software para Automação de Processos Industriais eficaz, é essencial ter habilidades em programação, automação, resolução de problemas e boa comunicação.',
    'https://www.sp.senai.br/curso/tecnico-em-desenvolvimento-de-sistemas/102811'
),


(
    'Eletroeletrônica',
    'Em indústrias químicas, equipamentos eletrônicos monitoram temperatura, pressão e outros parâmetros essenciais para a segurança e qualidade da produção.',
    'O Técnico em Manutenção de Equipamentos Eletroeletrônicos instala, mantém e repara sistemas eletroeletrônicos, garantindo o funcionamento correto de máquinas e equipamentos. Em indústrias químicas, esses equipamentos monitoram parâmetros essenciais.',
    'Para ser eficaz, é essencial ter conhecimento em eletrônica, habilidades em diagnóstico, capacidade de interpretar esquemas elétricos e familiaridade com ferramentas de teste.',
    'https://www.sp.senai.br/curso/tecnico-em-eletroeletronica/98236'
),


(
    'Mecânica',
    'Na indústria química, maquinários complexos como misturadores e reatores precisam de manutenção constante para evitar falhas no processo produtivo.',
    'O Técnico em Manutenção Industrial é responsável pela instalação, manutenção e conserto de equipamentos industriais. Ele garante que o maquinário funcione de forma coesa e eficiente e segura, realizando inspeções regulares e identificando problemas potenciais.',
    'Para ser um Técnico em Manutenção Industrial eficaz, é essencial ter habilidades em diagnóstico de falhas, manutenção preventiva, mecânica e boa comunicação.',
    'https://sp.senai.br/curso/tecnico-em-fabricacao-mecanica/98722'
);


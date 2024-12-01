
-- consulta de dicas com nome e especialidade do autor
SELECT d.titulo, e.nome, e.especialidade, d.descricao, d.video_url
FROM dicas d
JOIN especialistas e ON d.id_autor = e.id;


-- consulta da tabela de noticias
SELECT n.titulo, n.subtitulo, n.breve_descricao, n.conteudo, a.nome, a.especialidade, mn.imagem_url
FROM noticias n
JOIN especialistas a ON n.id_autor = a.id
JOIN media_noticia mn ON n.id = mn.id_noticia;


-- consulta da tabela de entrevistas

SELECT e.titulo, e.descricao, es.nome, es.especialidade
FROM entrevistas e
JOIN especialistas es ON e.id_entrevistado = es.id;




-- consulta da tabela de integrantes
SELECT i.nome, i.descricao, i.url_imagem, f.nome, i.url_linkedin
FROM funcoes_scrum f
JOIN integrantes i ON f.id = i.id_funcao;


--consulta na tabela simulados
SELECT s.titulo, s.dificuldade, s.tipo, q.enunciado, q.alternativa_a, q.alternativa_b, q.alternativa_c, q.alternativa_d, q.alternativa_e, q.resposta_correta
FROM simulados s
JOIN questoes q ON q.id_simulado = s.id;

SELECT s.titulo, s.dificuldade, s.tipo, q.id_questao, q.resposta_correta
FROM simulados s
JOIN questoes q ON q.id_simulado = s.id;




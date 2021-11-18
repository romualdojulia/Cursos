insert into cursos values
('1', 'HTML4', 'Curso de HTML5', '40', '37', '2014'),
('2', 'Algoritmos', 'Lógica de programação', '20', '15', '2014'),
('3', 'Photoshhop', 'Dicas de photoshop CC', '10', '8', '2014'),
('4', 'PGP', 'Curso de PHP para iniciantes', '40', '20', '2010'),
('5', 'Jarva', 'Introdução à linguagem Java', '10', '29', '2000'),
('6', 'MySQL', 'Banco de dados MySQL', '30', '15', '2016'),
('7', 'Word', 'Curso completo de Word', '40', '30', '2016'),
('8', 'Sapateado', 'Danças rítmicas', '40', '30', '2016'),
('9', 'Cozinha árabe', 'Aprenda a fazer kibe', '40', '30', '2018'),
('10', 'YouTuber', 'Gerar polêmica e ganhar inscritos', '5', '2', '2018');

select * from cursos;

/*mudei apenas o nome do curso*/
update cursos
set nome = 'HTML5'
where idcurso = 1;

update cursos
set nome = 'Photoshop'
where idcurso = 3;

/*alterando dois campos de uma mesma linha*/
update cursos
set nome = 'PHP', ano = '2015'
where idcurso = '4';

update cursos
set nome = 'Java', carga = '40', ano = '2015'
where idcurso = 5
limit 1;

/*mais perigoso pois pode alterar muitos registros*/
update cursos
set ano = '2050', carga = '800'
where ano = '2018';

update cursos
set ano = '2018', carga = '0'
where ano = '2050'
limit 1;

/*apagando linhas/registros da tabelas*/
delete from cursos
where idcurso = '8';

delete from cursos
where ano = '2050'
limit 1;

/*removendo todas as linhas de uma tabela*/
truncate table cursos;
/*seleciona apenas algumas colunas e ordena por dois parametros*/
select nome, carga, ano from cursos
order by nome, ano;

/*apenas os cursos de 2016*/
select nome, carga from cursos
where ano = '2016'
order by nome;

/*condição*/
select nome, descricao, carga, ano from cursos
where ano <='2015'
order by ano;

/*entre - BETWEEN*/
select nome, ano from cursos
where ano between 2014 and 2016
order by ano desc, nome asc;

/*valores especificos - IN*/
select nome, descricao, ano from cursos
where ano in (2014, 2016)
order by ano;

/*combinando operadores*/
select * from cursos
where carga > 35 and totalaulas <30;

select * from cursos
where carga > 35 or totalaulas <30;

select * from cursos;

/*-------------- inserindo coisas -----------------*/
insert into cursos values
('11', 'POO', 'Curso de POO', '30', '15', '2016'),
('19', 'Redes', 'Curso de redes para iniciantes', '40', '30', '2016'),
('12', 'C++', 'Curso de C++ com OO', '40', '25', '2017'),
('13', 'Phyton', 'Curso de Phyton', '40', '18', '2017');
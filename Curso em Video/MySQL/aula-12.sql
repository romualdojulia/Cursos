select * from cursos
where nome like 'P%';

select * from cursos
where nome like '%a';

select * from cursos
where nome like '%a%';

select * from cursos
where nome not like '%a%';

select * from cursos
where nome like 'ph%p';

select * from cursos
where nome like 'php_';

select * from gafanhotos
where nome like '%Morais%';

select distinct nacionalidade from gafanhotos
order by nacionalidade;

select distinct carga from cursos
order by carga;

/*agregação*/
select count(*) from cursos;

select count(*) from cursos where carga > 10;

select max(carga) from cursos;

select max(totalaulas) from cursos where ano = '2016';

select nome, min(totalaulas) from cursos where ano = '2016';

select sum(totalaulas) from cursos where ano = '2016';

select avg(totalaulas) from cursos where ano = '2016';


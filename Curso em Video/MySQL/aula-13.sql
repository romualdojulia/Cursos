/*agrupando*/
select totalaulas, count(*) from cursos
group by totalaulas
order by totalaulas;

select carga, count(nome) from cursos where totalaulas = 30
group by carga;

select ano, count(*) from cursos
group by ano
having count(ano) >= 5 /*só funciona pelo qual você agrupou*/
order by count(*) desc;

select ano, count(*) from cursos
where totalaulas > 30
group by ano
having ano > 2013
order by count(*) desc;

select carga, count(*) from cursos
where ano > 2015
group by carga
having carga > (select avg(carga) from cursos);
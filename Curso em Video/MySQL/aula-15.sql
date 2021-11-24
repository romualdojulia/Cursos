desc gafanhotos;

alter table gafanhotos
add column cursopreferido int;

/*adicionando chave estrangeira - MUL */
alter table gafanhotos
add foreign key(cursopreferido)
references cursos(idcurso);

select * from gafanhotos;
select * from cursos;

update gafanhotos 
set cursopreferido = '6'
where id = '1';

/*erro de integridade referencial - não apaga pq está sendo usado*/
delete from cursos
where idcurso = '6';

select g.nome, c.nome, c.ano
from gafanhotos as g 
inner join cursos as c /*inner join - só com relações*/
on c.idcurso = g.cursopreferido /*on para dar sentido*/
order by g.nome;

select g.nome, c.nome, c.ano
from gafanhotos as g 
left outer join cursos as c /*outer join - todos com preferencia a esquerda - mostra todos os gafanhotos*/
on c.idcurso = g.cursopreferido; 

select g.nome, c.nome, c.ano
from gafanhotos as g 
right outer join cursos as c /*preferencia à direita - mostra todos os cursos*/
on c.idcurso = g.cursopreferido 
order by g.nome;

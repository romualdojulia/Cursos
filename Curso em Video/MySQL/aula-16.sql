create table assiste( 
id int not null auto_increment,
data date, 
idgafanhoto int,
idcurso int,
primary key (id),
foreign key (idgafanhoto) references gafanhotos(id),
foreign key (idcurso) references cursos(idcurso)
);

insert into assiste values
(default, '2014-03-01', '1','2');

select * from assiste;

select g.nome, c.nome from gafanhotos g
join assiste a
on g.id = a.idgafanhoto
join cursos c
on c.idcurso = a.idcurso
order by g.nome;
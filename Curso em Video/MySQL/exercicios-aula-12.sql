INSERT INTO gafanhotos VALUES 
(default,'Caroline Braga', 'Recepcionista', '1995-10-17', 'F', '85.00', '1.98', 'Brasil'),
(default,'Fernando Aparecido', 'Aux Administrativo', '2015-09-26', 'M', '85.00', '1.75', 'Alemanha'),
(default,'Misael Alves', 'Quimico', '1995-06-05', 'M', '67.30', '1.68', 'Belgica'),
(default,'Rosalinda Canavvo', 'Atriz', '1987-11-26', 'F', '76.2', '1.70', 'Italia'),
(default,'Pierpaullo Pretelli', 'Cantor', '1982-03-04', 'M', '82.75', '1.80', 'Belgica'),
(default,'Dayane Mello', 'Modelo', '1987-02-27', 'F', '72.5', '1.77', 'Brasil'),
(default,'Caroline Braga', 'Recepcionista', '1995-10-17', 'F', '85.00', '1.98', 'Brasil'),
(default,'Joaquina Mendonça', 'Modelo', '1983-06-15', 'F', '65.00', '1.59', 'Argentina'),
(default,'Joana Fernandes', 'Atriz', '1973-09-23', 'F', '75.00', '1.65', 'Noruega'),
(default,'Marcos Silva', 'Programador', '1972-07-13', 'M', '95.0', '1.78', 'Portugal'),
(default,'Vitor Silva', 'Modelo', '1976-10-17', 'F', '85.00', '1.98', 'Alemanha'),
(default,'Arizona Robbins', 'Médica', '1978-04-30', 'F', '73.5', '1.69', 'Inglaterra'),
(default,'Alex Karev', 'Programador', '1974-01-24', 'M', '87.4', '1.73', 'Noruega'),
(default,'Jo Wilson', 'Recepcionista', '1945-02-28', 'F', '65.35', '1.67', 'Portugal');

select * from gafanhotos;

/* ================ EXERCICIOS =================*/
/*01 - uma lista com o nome de todas as gafanhotas*/
select nome from gafanhotos
where sexo = "F";

/*02 - uma lista com os dados de todos aqueles que nasceram entre 1/jan/200 e 31/12/2015 */
select * from gafanhotos
where nascimento between '2000-01-01' and '2015-12-31';

/*03 - uma lista com o nome de todos os homens que trabalham como programadores */
select nome from gafanhotos
where sexo = 'M' and prof = 'Programador';

/*04 - uma lista com os dados de todas as mulheres que nasceram no Brasil e que têm seu nome iniciando com a letra J*/
select * from gafanhotos
where sexo = 'F' and nacionalidade = 'Brasil' and nome like 'J%';

/*05 - uma lista com o nome e nacionalidade de todos os homens que têm Silva no nome, não nasceram no Brasil e pesam menos de 100kg*/
select nome, nacionalidade from gafanhotos
where sexo = 'M' and nome like '%silva%' and nacionalidade != 'Brasil' and peso < 100.0;

/*06 - Qual é a maior altura entre gafanhotos homens que moram no Brasil?*/
select max(altura) from gafanhotos
where sexo = 'M' and nacionalidade = 'Brasil';

/*07 - Qual é a média de peso dos gafanhotos cadastrados?*/
select avg(peso) from gafanhotos;

/*08- Qual é o menor peso entre as gafanhotas mulheres que nasceram fora do Brasil e nasceram entre 01/jan/1990 e 31/dez/2000? */
select min(peso) from gafanhotos
where sexo = 'F' and nacionalidade <> 'Brasil' and nascimento between '1990-01-01' and '2000-12-31';

/*09- Quantas gafanhotos mulheres têm mais de 1.90m de altura?*/
select count(altura) from gafanhotos
where sexo = 'F' and altura > 1.90;
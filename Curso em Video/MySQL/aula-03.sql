insert into pessoas
(nome, nascimento, sexo, peso, altura, nacionalidade)
values
('Godofredo', '1984-01-02', 'M', '78.5', '1.83', 'Brasil');

/*id e nacionalidade por padrao*/
insert into pessoas
(id, nome, nascimento, sexo, peso, altura, nacionalidade)
values
(default, 'Francisca', '1920-03-27', 'F', '50.3', '1.65', default);

/*se a ordem for a mesma da tabela n é necessario colocar os tipos primitivos*/
insert into pessoas values
(default, 'Joao', '1975-01-07', 'M', '80.0', '1.75', 'Irlanda');

/*adicionar varias pessoas com o mesmo comando*/
insert into pessoas values
(default, 'Nicolas', '2012-03-27', 'M', '30.0', '1.45', 'Mexico'),
(default, 'Davi', '2009-04-20', 'M', '35.5', '1.45', 'Chile'),
(default, 'Pietro', '2018-12-18', 'M', '25.0', '1.30', 'Colombia');

/* exibe a tabela com os dados, tudo bonitinho :)*/
select * from pessoas;

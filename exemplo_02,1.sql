use teste_bd;

create table pessoas(
	nome varchar(30),
    idade tinyint(3),
    sexo char(1),
    peso float,
    altura float,
    nacionalidade varchar(20)
);

/*            Exemplos com comando alter                  */
/*Adiciona uma nova coluna*/
alter table pessoas add column cpf int(14) after idade;

/*Altera o tipo de uma coluna existente*/
alter table pessoas modify column cpf varchar(14);

/*Altera o nome da coluna*/
alter table pessoas change column sexo genero char(1);

/*Apaga uma coluna*/
alter table pessoas drop column nacionalidade;

/*Altera o nome da tabela*/
alter table pessoas rename to usuarios;

describe usuarios;
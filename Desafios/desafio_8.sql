use desafios;

create table clientes(
	nome int not null auto_increment,
    nascimento year,
    primary key (nome)
);

create table produtos(
	codigo int not null auto_increment,
    nome_produto varchar(30),
    primary key (codigo)
);

alter table clientes add compram int;
alter table clientes add foreign key (compram) references produtos(codigo);


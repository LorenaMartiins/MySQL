create database bd_livros;
use bd_livros;

create table usuario(
	matricula int not null auto_increment,
    nome varchar(30),
    email varchar(100),
    endereco varchar(255),
    telefone varchar(11),
    primary key (matricula)
);

create table emprestimo(
	codigo int not null auto_increment,
    data_emprestimo date,
    matricula_usuario int,
    data_devolucao date,
    primary key (codigo)
);

create table livro_emprestimo(
	codigo_do_livro int not null auto_increment,
    codigo_emprestimo int,
    primary key(codigo_do_livro)
);

create table livro(
	codigo_livro int not null auto_increment,
    titulo varchar(255),
    autor varchar(150),
    codigo_da_secao int,
    primary key (codigo_livro)
);

create table secao(
	codigo_secao int not null auto_increment,
    descricao text,
    localizacao varchar(100),
    primary key (codigo_secao)
);

alter table emprestimo add efetua int;
alter table emprestimo add foreign key (efetua) references usuario(matricula);

alter table emprestimo add contem int;
alter table emprestimo add foreign key (contem) references livro_emprestimo(codigo_do_livro);

alter table livro_emprestimo add contem int;
alter table livro_emprestimo add foreign key (contem) references livro(codigo_livro);

alter table livro add pertence int;
alter table livro add foreign key (pertence) references secao(codigo_secao);

describe emprestimo;

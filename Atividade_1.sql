create database bd_livraria;

use bd_livraria;

create table usuarios(
	matricula int not null auto_increment,
    nome varchar(30),
    email varchar(30),
    endereco varchar(255),
    telefone varchar(14),
    primary key (matricula)
);

create table emprestimo(
	cod_emprestimo int not null auto_increment,
    d_emprestimo date,
    d_devolucao date,
    primary key (cod_emprestimo)
);

alter table emprestimo add mat_usuario int;
alter table emprestimo add foreign key (mat_usuario) references usuarios(matricula);

create table livro_emprestimo(
	cod_livro_emprestimo int not null auto_increment,
    cod_emprestimo int,
    cod_livro int,
    primary key (cod_livro_emprestimo)
);

create table livros(
	cod_livro int not null auto_increment,
    titulo varchar(50),
    autor varchar(30),
    cod_secao int,
    primary key (cod_livro)
);

alter table livro_emprestimo add foreign key (cod_emprestimo) references emprestimo(cod_emprestimo);
alter table livro_emprestimo add foreign key (cod_livro) references livros(cod_livro);

create table secao(
	cod_secao int not null auto_increment,
    descricao text,
    localizacao int,
    primary key (cod_secao)
);

alter table livros add foreign key (cod_secao) references secao(cod_secao);     
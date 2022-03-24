create database bd_escola;

use bd_escola;

create table alunos(
	matricula int not null auto_increment,
	nome varchar(30),
    d_nascimento date,
    genero enum('F', 'M', 'O'),
    endereco varchar(255),
    primary key (matricula)
);

create table cursos(
	id_curso int not null auto_increment,
    nome varchar(30),
    descricao text,
    carga_horaria int,
    total_aulas int,
    ano year default '2022',
    primary key (id_curso)
);

alter table alunos add curso_escolhido int;

alter table alunos add foreign key (curso_escolhido) references cursos(id_curso);

/*
insert into alunos(nome, d_nascimento, genero, endereco)
values ('Jubileu da Silva', '1984-10-18', 'M', 'Rua José da Silva, Número 325');

delete from alunos where matricula = 3;

select * from alunos;
*/
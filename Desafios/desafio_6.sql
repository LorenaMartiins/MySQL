create database desafio_06;
use desafio_06;

create table alunos(
	cpf int(14),
    nome varchar(30),
    data_nascimento date,
    genero  enum('F', 'M', 'O')
);

create table disciplina(
	codigo int,
    nome_disciplina varchar(50),
    descricao text
);

create table professor(
	cpf int(14),
    nome_professor varchar(30),
    data_nascimento date,
    genero  enum('F', 'M', 'O'),
    formacao text
);

describe professor;
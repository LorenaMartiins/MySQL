/*Cria um banco de dados*/
create database teste_bd;

/* Seleciona um banco de dados*/
use teste_bd;

/* Criando a tabela*/
create table pessoas(
	nome varchar(30),
    idade tinyint(3),
    sexo char(1),
    peso float,
    altura float,
    nacionalidade varchar(20) 
);

/* Exibe a estrutura da tabela criada*/
describe pessoas;

create table carros(
	nodelo varchar(20),
    marca varchar(30),
    nome varchar(20),
    cor varchar(20),
    motor varchar(10),
    placa varchar(7),
    ano year,
    eletrico_ou_combustivel char(1),
    automatico_ou_manual char(1),
    velocidade_maxima float,
    descricao text
);

describe carros;

/* Apagando a tabela*/
drop table pessoas;

drop table carros;

/* Apaga o banco de dados*/
drop database teste_bd;
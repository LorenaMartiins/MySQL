use teste_bd;

insert into usuarios(nome, idade, cpf, genero, peso, altura)
values('Jubileu', 45, '123.456.789-00', 'M', 75, 1.68);

insert into usuarios(nome, idade, cpf, genero, peso, altura)
values
('Ana', 35, '123.456.789-00', 'F', 45, 1.63),
('Luiz', 22, '123.456.789-00', 'M', 80, 1.72),
('Paulo', 19, '123.456.789-00', 'M', 70, 1.75),
('Lucas', 12, '123.456.789-00', 'M', 65, 1.80),
('Maria', 28, '123.456.789-00', 'F', 55, 1.78),
('Josue', 10, '123.456.789-00', 'M', 30, 1.50);

select * from usuarios;

select nome, idade, cpf, genero, peso, altura from usuarios
where genero = 'F';

update usuarios
set idade = 20
where nome = 'Paulo';

delete from usuarios
where nome = 'Jubileu';
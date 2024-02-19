CREATE DATABASE Empresa;

/*NOME DO BANCO*/
use Empresa;

/*TABELA COM DADOS DOS FUNCIONARIOS*/
create table Funcionario(
Id int not null auto_increment,
Nome VARCHAR(30),
Idade INT,
Sexo VARCHAR(10),
Bairro VARCHAR(30),
Cidade VARCHAR(30),
primary key(Id)
);

/*DADOS DOS FUNCIONARIOS*/
insert into Funcionario(Nome, Idade, Sexo, Bairro, Cidade) 
values
("Bruno", 40 , "Masculino","Carapina","Serra"),("Sheila",24 , "Feminino","Novo Horizonte","Serra"),
("Marcos",31 , "Masculino","Bicanga","Serra"),("Vinicius",28 , "Masculino","Goiabeiras","Vitoria"),
("Leticia",30 , "Feminino","Enseada_do_Sua","Vitoria"),("Carol",35 , "Feminino","Jardim_Camburi","Vitoria"),
("Cintia",25 , "Feminino","Bairro_Republica","Vitoria"),("Pedro",33 , "Masculino","Barcelona","Serra"),
("Jose", 26, "Masculino","Mestre_Alvaro","Serra"),("Gabriel",29 , "Masculino","Boa_Vista","Serra");


/*TABELA COM OS SETORES DA EMPRESA*/
create table setor(
Id int not null auto_increment,
Nome varchar(20),
primary key(id)
);

/*DADOS DOS SETORES DA EMPRESA*/
insert into setor(Nome) 
values
("Financeiro"),("Recursos Humanos"),("Compras"),("Almoxarifado"),("Informatica");

/*TABELA DOS CARGOS DOS FUNCIONARIOS*/
create table Profissao(
Id int not null auto_increment,
Nome varchar(25),
Salario float,
primary key(id)
);

/*DESCRICAO DE CARGOS DA EMPRESA*/
insert into Profissao(Nome, Salario)
values
("Analista_Financeiro", 3000.00 ),("Tecnino_de_Informatica",2500.00 ),("Analista_De_Rh", 2300.00),
("Comprador", 2800.00),("Estagio", 1000.00); 

/*TABELA DA JORNADA DE TRABALHO*/
create table Horario(
Id int not null auto_increment,
Horario varchar(50),
primary key(id)
);

/*JORNADA DE TRABALHO DOS FUNCIONARIOS*/
insert into Horario(Horario) 
values
("07:00 as 11:00 (11:00 as 12:00) 12:00 as 17:00"),("08:00 as 12:00 (12:00 as 13:00) 13:00 as 18:00"),
("19:00 as 23:00 (23:00 as 00:00) 00:00 as 05:00"),("20:00 as 00:00 (00:00 as 01:00) 01:00 as 06:00");

/*CONSULTAS REALIZADAS

select * FROM Funcionario;

select * from Funcionario order by Nome;

select * from Funcionario join Horario where Horario.id = Funcionario.id; 

select * from Funcionario join Profissao where Profissao.id = Funcionario.id;

update Funcionario set Bairro = "Enseada_do _suá" where id = 5;

select * from Funcionario join Profissao where Profissao.id = Funcionario.id order by Salario;

select * from Horario;
*/

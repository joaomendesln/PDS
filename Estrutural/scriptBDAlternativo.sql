CREATE TABLE Cliente(
	idCliente int identity(1,1) not null,
	nome varchar(45) not null,
	telefones varchar(45) not null,
	cidade varchar(45) not null,
	estado varchar(2) not null,
	endereco varchar(100) not null,
	pessoa bit not null,
	certidao varchar(20) not null,
	email varchar(60) not null,
	primary key(idCliente)
) 

CREATE TABLE Funcionario(
	idFuncionario int identity(1,1) not null,
	nome varchar(45) not null,
	telefones varchar(45) not null,
	identidade varchar(45) not null,
	carteiraDeTrabalho varchar(45) not null,
	salario numeric(10,2) not null,
	motorista bit not null,
	tecnico bit not null,
	observacao varchar(200) not null,
	primary key(idFuncionario)
) 

INSERT INTO Cliente(nome, telefones, cidade, estado, endereco, pessoa, certidao, email)
			VALUES('João Mendes', '849966210701', 'Natal', 'RN', 'Rua Epitacio Andrade, nº 1320, Barro Vermelho. Bloco A, Apartamento 104', 0, '09497563426', 'mendeslopes.joao@gmail.com')

INSERT INTO Funcionario(nome, telefones, identidade, carteiraDeTrabalho, salario, motorista, tecnico, observacao)
			VALUES('João Victor', '8498989898', '7720025', '12341234', 3500.70, 0, 1, 'É um profissional muito bem')

Select * From Cliente
Select * From Funcionario
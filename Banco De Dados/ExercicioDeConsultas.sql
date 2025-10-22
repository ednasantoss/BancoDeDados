create database exercicio1;

/* Parte 1 e 2 do Exercicio*/

select * from clientes;

select nome, email from clientes; 

create table clientes (
cpf varchar(100),
nome varchar(100),
dataDeNascimento varchar(100),
sexo char(1),
email varchar(100),
cidade varchar(100)
);


SELECT * FROM clientes WHERE nome Like 'A%' Group by nome;

SELECT * FROM clientes WHERE cidade NOT IN ('São Paulo', 'Rio de Janeiro');


SELECT * FROM clientes WHERE email LIKE '%@empresa.com';

INSERT INTO clientes (cpf, nome, dataDeNascimento, sexo, email, cidade) values
('12345678900', 'Ana Paula Oliveira', '1985-15-3', 'F', 'ana.oliveira@empresa.com', 'São Paulo'),
('12345678900', 'João Carlos Mendes', '1990-22-7', 'M', 'joao.mendes@empresa.com', 'Rio de Janeiro'),
('12345678900', 'Beatriz Souza Lima', '1985-15-3', 'F', 'beatriz.lima@empresa.com', 'Rio Grande do Sul'),
('12345678900', 'Marcos Vinícius Rocha', '1985-15-3', 'M', 'marcos.rocha@empresa.com', 'Curitiba'),
('12345678900', 'Fernanda Ribeiro', '1985-15-3', 'F', 'fernanda.ribeiro@email.com', 'São Paulo'),
('12345678900', 'Lucas Henrique Martins', '1985-15-3', 'M', 'lucas.martins@email.com', 'Rio de Janeiro'),
('12345678900', 'Juliana Costa', '1985-15-3', 'F', 'juliana.costa@email.com', 'Bahia'),
('12345678900', 'Rafael Almeida', '1985-15-3', 'M', 'rafael.almeida@email.com', 'Paraná'),
('12345678900', 'Camila Ferreira', '1985-15-3', 'F', 'camila.ferreira@email.com', 'Florianopolis'),
('12345678900', 'Pedro Augusto Santana', '1985-15-3', 'M', 'pedro.santana@email.com', 'São Paulo');

select nome, preco from produtos where preco > 100; 

select distinct * from produtos where nomeProduto Like '%Premium%';

create table produtos (
nomeProduto varchar(100),
idProduto varchar(100),
preco numeric(10,2)
);

INSERT INTO produtos (nomeProduto, idProduto, preco) values 
('AirFryer Premium', '85', '700'),
('Liquidificador', '478', '250'),
('Monitor Premium', '30', '970'),
('Mouse', '90', '50'),
('CaboUSB', '7', '15'),
('Teclado Premium', '006', '65'),
('HDMI', '560', '100');


select * from vendas where DataDaVenda between '2024-01-01' and '2025-10-22' group by nome, DataDaVenda;

create table vendas (
nome varchar(100),
idProduto varchar(100),
DataDaVenda varchar(100)
);

INSERT INTO vendas (nome, idProduto, DataDaVenda) values
	('Smartphone X', '001', '2023-14-03'),
		('Notebook Y', '002', '2023-23-10'),
		('Fone Bluetooth', '003', '2024-01-02'),
		('Smartwatch Z', '004', '2024-05-06'),
		('Monitor 24', '005', '2025-10-21' ),
		('Teclado Mecânico', '006', '2025-03-03'),
		('Mouse Gamer', '007', '2024-30-12'),
		('Câmera Webcam', '008', '2022-09-07');
        
        
        select * from funcionarios where cargo = 'Vendas';
        
        select * from funcionarios where cargo IN ('Gerente', 'Supervisor', 'Coordenador');
        
        create table funcionarios (
        nome varchar(100),
        cargo varchar(100)
        );

INSERT INTO funcionarios (nome, cargo) values
('Ana Paula Oliveira', 'Vendas'),
('João Carlos Mendes', 'Vendas'),
('Beatriz Souza Lima', 'Administração'),
('Marcos Vinícius Rocha', 'Estoque'),
('Fernanda Ribeiro', 'Estoque'),
('Lucas Henrique Martins', 'Administração'),
('Juliana Costa', 'Caixa'),
('Rafael Almeida', 'Caixa'),
('Camila Ferreira', 'RH'),
('Carlos Eduardo Silva', 'Gerente'),
('Patrícia Almeida', 'Gerente'),
('Roberto Nunes', 'Gerente'),
('Marcos Vinícius', 'Supervisor'),
('Fernanda Costa', 'Supervisor'),
('Juliana Martins', 'Supervisor'),
('Luciana Ferreira', 'Coordenador'),
('André Luiz Rocha', 'Coordenador'),
('Tatiane Oliveira', 'Coordenador'),
('Pedro Augusto Santana', 'RH');


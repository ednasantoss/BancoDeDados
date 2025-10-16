create database aula;

create table cliente (
cpf varchar(50) not null,
nome varchar(100) not null,
data_nascimento varchar(100) not null,
sexo char(1) not null,
num_cartao varchar(100) not null
);

INSERT INTO cliente (CPF, nome, data_nascimento, sexo, num_cartao) VALUES
('12345678901', 'João Silva', '1990-05-20', 'M', '1111222233334444'),
('23456789012', 'Maria Oliveira', '1985-07-12', 'F', '5555666677778888'),
('34567890123', 'Carlos Pereira', '1978-11-30', 'M', '9999000011112222'),
('45678901234', 'Ana Souza', '1992-03-25', 'F', '3333444455556666'),
('56789012345', 'Paulo Lima', '1988-01-18', 'M', '777788889999000'),
('67890123456', 'Fernanda Rocha', '1995-08-10', 'F', '1122334455667788'),
('78901234567', 'Rafael Costa', '2000-04-07', 'M', '2211334455667788'),
('89012345678', 'Juliana Martins', '1993-09-15', 'F', '3311442255667788');

create table cartao (
num_cartao varchar(100) not null,
tipo_cartao varchar(100) not null,
cvv varchar(100) not null,
validade_cartao varchar(50) not null,
banco_emissor varchar(100) not null,
bandeira varchar(100) not null
);

insert into cartao(num_cartao, tipo_cartao, cvv, validade_cartao, banco_emissor, bandeira) values
('1111222233334444', 'crédito', '123', '2027-12', 'Banco do Brasil', 'Visa'),
('5555666677778888', 'débito', '456', '2026-06', 'Caixa Econômica',
'MasterCard'),
('9999000011112222', 'crédito', '789', '2028-03', 'Itaú', 'Elo'),
('3333444455556666', 'débito', '321', '2025-09', 'Bradesco', 'Visa'),
('7777888899990000', 'crédito', '654', '2029-01', 'Santander', 'MasterCard'),
('1122334455667788', 'débito', '987', '2026-11', 'Nubank', 'Visa'),
('2211334455667788', 'crédito', '741', '2028-07', 'Inter', 'Elo'),
('3311442255667788', 'débito', '852', '2027-04', 'Banco Pan', 'MasterCard');

create table produtos(
id_produto varchar(100) not null,
nome_produto varchar(100) not null,
descricao_produto varchar(100) not null,
marca_produto varchar(100) not null,
preco_unitario varchar(100) not null,
categoria varchar(100) not null
);

insert into produtos(id_produto, nome_produto, descricao_produto, marca_produto, preco_unitario, categoria) values
('P001', 'Smartphone X', 'Smartphone 128GB, tela 6.5"', 'TechBrand', '2500.00', 'Eletrônicos'),
('P002', 'Notebook Y', 'Notebook 16GB RAM, SSD 512GB', 'NoteTech', '4500.00', 'Informática'),
('P003', 'Fone Bluetooth', 'Fone de ouvido sem fio com cancelamento', 'SoundX', '350.00', 'Áudio'),
('P004', 'Smartwatch Z', 'Relógio inteligente com monitor cardíaco', 'WearFit', '780.00', 'Wearables'),
('P005', 'Monitor 24"', 'Monitor LED Full HD 24 polegadas', 'ViewTech', '899.00', 'Informática'),
('P006', 'Teclado Mecânico', 'Teclado RGB com switches azuis', 'KeyPro','320.00', 'Periféricos'),
('P007', 'Mouse Gamer', 'Mouse com 8 botões programáveis', 'ClickMax','210.00', 'Periféricos'),
('P008', 'Câmera Webcam', 'Webcam 1080p com microfone embutido', 'CamPlus', '290.00', 'Acessórios');

create table compras(
id_compra int not null,
cpf varchar(100) not null,
id_produto varchar(100) not null,
num_cartao varchar(100) not null,
quantidade_items_comprados int not null
);

insert into compras(id_compra, cpf, id_produto, num_cartao, quantidade_items_comprados) values
(1, '12345678901', 'P001', '1111222233334444', 1),
(2, '12345678901', 'P003', '1111222233334444', 2),
(3, '23456789012', 'P002', '5555666677778888', 1),
(4, '34567890123', 'P004', '9999000011112222', 1),
(5, '45678901234', 'P003', '3333444455556666', 1),
(6, '45678901234', 'P005', '3333444455556666', 1),
(7, '56789012345', 'P006', '7777888899990000', 1),
(8, '56789012345', 'P007', '7777888899990000', 2),
(9, '67890123456', 'P001', '1122334455667788', 1),
(10, '67890123456', 'P008', '1122334455667788', 1),
(11, '78901234567', 'P003', '2211334455667788', 3),
(12, '78901234567', 'P006', '2211334455667788', 1),
(13, '89012345678', 'P007', '3311442255667788', 1),
(14, '89012345678', 'P004', '3311442255667788', 1),
(15, '23456789012', 'P008', '5555666677778888', 1),
(16, '34567890123', 'P005', '9999000011112222', 1),
(17, '12345678901', 'P006', '1111222233334444', 1),
(18, '78901234567', 'P002', '2211334455667788', 1),
(19, '56789012345', 'P008', '7777888899990000', 1),
(20, '67890123456', 'P007', '1122334455667788', 2);
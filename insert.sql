insert into cliente (nome, cpf, sexo, data_nascimento) values
("Julia", "34523413531", "F" ,'1988-09-11'), 
("Maria", "34523413539", "F" ,'1989-08-10'),
("Marcia", "34523413538", "F" ,'1999-07-09'),
("Gabriel", "34523413537", "M" ,'1996-06-08'),
("Gustavo", "34523413536", "M" ,'2005-05-07'),
("Jackeline", "34523413535", "F" ,'2001-01-16'),
("Daniel", "34523413534", "M" ,'1995-03-05'),
("João", "34523413533", "M" ,'1980-02-04'),
("Pedro", "34523413542", "M" ,'1998-01-03'),
("Jubileu", "42094938400", "M" , '2001-02-23')
;

insert into endereco(id_cliente, logradouro, numero, bairro, estado, cidade, complemento, cep) values
(1, "Rua das Conchas", 1, "Jardim Holanda", "SP", "São Paulo", "", "03613261"),
(2, "Rua das Pedras", 2, "Jardim Europa", "SP", "São Paulo", "Próximo a loja do seu Zé", "03613262"),
(3, "Rua das Folhas", 3, "Jardim América", "SP", "São Paulo", "Próximo ao butéco da esquina", "03613263"),
(4, "Rua dos Ventos", 4, "Jardim das Flores", "SP", "São Paulo", "", "03613264"),
(5, "Rua das Baleias", 5, "Jardim Espanha", "SP", "São Paulo", "Próximo a UBS", "03613265"),
(6, "Rua das Areias", 6, "Jardins", "SP", "São Paulo", "Próximo ao mercado", "03613267"),
(7, "Rua dos Felinos", 7, "Jardim Itália", "SP", "São Paulo", "", "03613268"),
(8, "Rua dos Peixes", 8, "Vila Sonia", "SP", "São Paulo", "Próximo a igreja", "03613269"),
(9, "Corifeu de Azevedo Marques", 233, "Butantã", "SP", "São Paulo", "Próximo a matriz RD e USP", "05581000"),
(10, "Rua das Conchas", 10, "Jardim Holanda", "SP", "São Paulo", "Próximo a loja do seu Zé", "036132610")
;

insert into fabricante(nome, cnpj) values
("Dell", "72381000119"),
("Lenovo", "72381000118"),
("Samsung", "7238100017"),
("Azus", "7238100016"),
("HP", "72381000115"),
("LG", "72381000114 "),
("TCL", "72381000113"),
("Nvidia", "72381000112"),
("Vaio", "72381000111"),
("Apple", "72381000110")
;

insert into produto(id_fabricante, nome, valor, descricao, ficha_tecnica) values
(1, "Inspiron 15", 2100.00 , "Notebook Dell preto", "SSD, Pentium Gold, 4GB RAM"),
(2, "Ideapad3i", 2300.00 , "Notebook Lenovo branco", "SSD, I3, 4GB RAM"),
(3, "Galaxy Book", 2250.00 , "Notebook Samsung rosa", "SSD, I3, 4GB RAM"),
(4, "M515", 2100.00 , "Notebook Azus preto", "SSD, I5, 8GB RAM"),
(5, "6L5Q8LA", 4700.00 , "Notebook HP prata", "SSD, I5, 16GB RAM"),
(6, "LG Gram", 6999.99 , "Notebook Dell preto", "SSD, I5, 8GB RAM"),
(7, "TCL32S615", 1200.00 , "Smart TV 32", "WI-FI, 2GB RAM"),
(8, "Geforce RTX 4090", 40000.00 , "Notebook Nvidia prata", "SSD NVME, I5, 32GB RAM"),
(9, "FE15", 2600.00 , "Notebook Vaio azul", "SSD, I3, 4GB RAM"),
(10, "MacBook Air Pro M2", 40000.00 , "Notebook Apple Prata", "SSD, M2, 8GB RAM")
;

insert into estoque ( id_produto, qtd) values
(1, 20),
(2, 15),
(3, 11),
(4, 10),
(5, 30),
(6, 25),
(7, 22),
(8, 24),
(9, 12),
(10, 15);

insert into carrinho ( id_cliente, id_produto, qtd_prod) values 
(1, 1, 2),
(2, 2, 1),
(3, 3, 3),
(4, 4, 5),
(5, 5, 1),
(6, 6, 4),
(7, 7, 2),
(8, 8, 1),
(9, 9, 1),
(10, 10, 2),
(1, 5, 3);



insert into pagamento (id_cliente, modalidade) values
(1 , "Pix"),
(2 , "Crédito"),
(3 , "Debito"),
(4 , "Boleto"),
(5 , "Pix"),
(6 , "Debito"),
(7 , "Debito"),
(8 , "Credito"),
(9 , "Boleto"),
(10 , "Pix")
;

insert into dados_empresa (nome, cnpj, ie) values 
("World Tech", "72381000118", "388108598");

insert into nota_fiscal (id_cliente, valor_total, cnpj_empresa)  values
(1, 18300.00, "72381000118"),
(2, 2300.00, "72381000118"),
(3, 67500.00, "72381000118"),
(4, 11000.00, "72381000118"),
(5, 4700.00, "72381000118"),
(6, 27999.96, "72381000118"),
(7, 2400.00, "72381000118"),
(8, 40000.00, "72381000118"),
(9, 2600.00, "72381000118"),
(10, 80000.00, "72381000118")
;


insert into historico_compra (data_compra, id_carrinho, id_nota_fiscal, id_pagamento) values 
('2022-11-15', 1, 1, 1),
('2021-12-15', 11, 1, 1),
('2022-10-16', 2, 2, 2),
('2022-09-05', 3, 3, 3),
('2022-01-15', 4, 4, 4),
('2022-02-20', 5, 5, 5),
('2022-03-05', 6, 6, 6),
('2022-11-12', 7, 7, 7),
('2022-06-25', 8, 8, 8),
('2022-07-30', 9, 9, 9),
('2022-08-15', 10, 10, 10);


insert into suporte_cliente (descricao, data_atend, atendente, id_cliente, id_historico_compra) values
("Anúncio do produto incorreto, o notebook anunciado como LG Gram na verdade é da marca Dell. Cliente recebeu notebook da Dell ao invés da LG", '2022-03-10', "Josefa", 6, 7),
("Cliente recebeu notebook com defeito", '2022-08-15', "Cleiton", 9, 10),
("Cliente recebeu não recebeu os produtos", '2022-03-10', "José", 7, 8);


insert into transportadora (nome, cnpj) values 
("WT-Transportes", "12345678000112" ),
("Leva-Bem-transportadora", "12345678000115"),
("Seu-Transporte", "12345678000116"),
("Transporte-Seguro", "12345678000117");

insert into dados_entrega (id_carrinho, id_transportadora) values 
(1, 1),
(2, 1),
(3, 4),
(4, 3),
(5, 2),
(6, 1),
(7, 2),
(8, 4),
(9, 3),
(10, 1);

insert into contato (telefone, ddd, email, id_cliente, id_transportadora) values
("912344565", "11", "julia.correa@email.com", 1, null),
("912345555", "13", "maria.silva@email.com", 2, null),
("912346666", "21", "marcia.almeida@email.com", 3, null),
("912347777", "83", "gabriel.santos@email.com", 4, null),
("912348888", "11", "gustavo.lemos@email.com", 5, null),
("912349999", "21", "jackeline.costa@email.com", 6, null),
("912341010", "11", "daniel.santos@email.com", 7, null),
("912341111", "11", "joão.ferreira@email.com", 8, null),
("912341212", "21", "pedro.alves@email.com", 9, null),
("912341313", "11", "jubileu.neves@email.com", 10, null)
;

insert into contato (telefone, ddd, email, id_cliente, id_transportadora) values
("978984544", "83", "wt.transportes@email.com", null, 1),
("912327898", "13", "leva.bem@email.com", null, 2),
("912458763", "21", "seu.transporte@email.com", null, 3),
("912458956", "11", "transporte.seguro@email.com", null, 4);




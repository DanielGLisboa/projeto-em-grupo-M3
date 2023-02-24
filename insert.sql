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
(19, "Rua das Conchas", 1, "Jardim Holanda", "SP", "São Paulo", "", "03613261"),
(20, "Rua das Pedras", 2, "Jardim Europa", "SP", "São Paulo", "Próximo a loja do seu Zé", "03613262"),
(21, "Rua das Folhas", 3, "Jardim América", "SP", "São Paulo", "Próximo ao butéco da esquina", "03613263"),
(22, "Rua dos Ventos", 4, "Jardim das Flores", "SP", "São Paulo", "", "03613264"),
(23, "Rua das Baleias", 5, "Jardim Espanha", "SP", "São Paulo", "Próximo a UBS", "03613265"),
(24, "Rua das Areias", 6, "Jardins", "SP", "São Paulo", "Próximo ao mercado", "03613267"),
(25, "Rua dos Felinos", 7, "Jardim Itália", "SP", "São Paulo", "", "03613268"),
(26, "Rua dos Peixes", 8, "Vila Sonia", "SP", "São Paulo", "Próximo a igreja", "03613269"),
(27, "Corifeu de Azevedo Marques", 233, "Butantã", "SP", "São Paulo", "Próximo a matriz RD e USP", "05581000"),
(28, "Rua das Conchas", 10, "Jardim Holanda", "SP", "São Paulo", "Próximo a loja do seu Zé", "036132610")
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









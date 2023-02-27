select * from cliente;

select * from cliente inner join contato, endereco where cliente.id=contato.id_cliente and cliente.id=endereco.id_cliente;


select nome, cpf, sexo, data_nascimento, ddd, telefone, email, logradouro, numero, bairro, estado, cidade, complemento, cep from cliente inner join contato, endereco where cliente.id=contato.id_cliente and cliente.id=endereco.id_cliente;


select nome, cpf, sexo, data_nascimento, ddd, telefone, email, logradouro, numero, bairro, estado, cidade, complemento, cep from cliente inner join contato, endereco where cliente.id=contato.id_cliente and cliente.id=endereco.id_cliente and cliente.id=6;


select nome, cnpj, ddd, telefone, email, id_carrinho from transportadora inner join contato, dados_entrega where contato.id_transportadora=transportadora.id and transportadora.id=dados_entrega.id_transportadora;


/* Buscando todos os carrinhos com valores individuais*/
select cliente.nome as nome_cliente, cliente.cpf as cliente_cpf, produto.nome as nome_produto, produto.valor as valor_unidade_produto  from carrinho inner join cliente, produto where carrinho.id_cliente=cliente.id and carrinho.id_produto=produto.id;

/* buscando dados do carrinho de um cliente com valores individuais */
select cliente.nome as nome_cliente, cpf, produto.nome as nome_produto, produto.valor as valor_unidade_produto from carrinho inner join cliente, produto where carrinho.id_cliente=cliente.id and carrinho.id_produto=produto.id and cliente.id=1;

/* Buscando carrinho de um cliente com valor total do carrinho */
select cliente.nome as nome_cliente, cpf, SUM(valor) as valor_total_carrinho from carrinho inner join produto, cliente where carrinho.id_produto=produto.id and carrinho.id_cliente = cliente.id and cliente.id=1 ;

 
 
 select * from historico_compra inner join carrinho, nota_fiscal, pagamento where historico_compra.id_carrinho=carrinho.id and  historico_compra.id_nota_fiscal=nota_fiscal.id and historico_compra.id_pagamento=pagamento.id;

select * from cliente inner join carrinho, produto where cliente.id=carrinho.id_cliente and produto.id=carrinho.id_produto;


/*Buscando todas as notas fiscais*/
select * from nota_fiscal inner join cliente where nota_fiscal.id_cliente=cliente.id;
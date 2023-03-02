
/*Buscando todos os dados da tabela cliente*/
select * from cliente;

/*Buscando dados relacionados filtrados de todos os clientes nas tabelas cliente, contato e endereco */
select nome, cpf, sexo, data_nascimento, ddd, telefone, email, logradouro, numero, bairro, estado, cidade, complemento, cep from contato inner join cliente inner join endereco on cliente.id=contato.id_cliente and cliente.id=endereco.id_cliente;

/*Buscando dados relacionados filtrados de apensa um cliente nas tabelas cliente, contato e endereco */
select nome, cpf, sexo, data_nascimento, ddd, telefone, email, logradouro, numero, bairro, estado, cidade, complemento, cep from contato inner join cliente inner join endereco on cliente.id=contato.id_cliente and cliente.id=endereco.id_cliente and cliente.id=6;

/*Buscando dados da transportadora*/
select nome, cnpj, ddd, telefone, email from transportadora inner join contato on contato.id_transportadora=transportadora.id;

/*Buscando dados da transportadora  e o id do carrinho que será realizada a entrega*/
select nome, cnpj, ddd, telefone, email, id_carrinho from contato inner join transportadora  inner join dados_entrega on contato.id_transportadora=transportadora.id and transportadora.id=dados_entrega.id_transportadora;

/* Buscando todos os carrinhos com valores unitarios dos produto*/
select cliente.nome as nome_cliente, cliente.cpf as cliente_cpf, produto.nome as nome_produto, qtd_prod, concat('R$ ' , format(produto.valor, '2')) as valor_unidade_produto  from cliente inner join carrinho inner join produto on carrinho.id_cliente=cliente.id and carrinho.id_produto=produto.id;

/* buscando dados do carrinho de um cliente com valores unitarios dos produtos */
select cliente.nome as nome_cliente, cpf, produto.nome as nome_produto, qtd_prod as quantidade_produtos, concat('R$ ' , format(produto.valor, '2')) as valor_unidade_produto from cliente inner join carrinho inner join produto on carrinho.id_cliente=cliente.id and carrinho.id_produto=produto.id and cliente.id=1;

/* Buscando carrinho de todosos clientes com valor total do carrinho */
select cliente.nome as nome_cliente, cpf, SUM(qtd_prod) as quantidade_produtos,  concat('R$', format(SUM(valor*qtd_prod), 2))  as valor_total_carrinho from cliente inner join carrinho inner join produto on carrinho.id_produto=produto.id and carrinho.id_cliente = cliente.id group by cliente.id;

/* Buscando carrinho de um cliente com valor total do carrinho */
select cliente.nome as nome_cliente, cpf, SUM(qtd_prod) as quantidade_produtos, concat('R$', format(SUM(valor*qtd_prod), 2)) as valor_total_carrinho from cliente inner join carrinho inner join produto on carrinho.id_produto=produto.id and carrinho.id_cliente = cliente.id and cliente.id=1 ;

/*Buscando Produtos em estqoue*/
select produto.nome as nome_produto, fabricante.nome as fabricante, produto.descricao as descricao, estoque.qtd as quantidade_estoque  from estoque inner join produto inner join fabricante on produto.id = estoque.id_produto and fabricante.id = produto.id_fabricante;

/*Buscando histórico de atendiomentos do suporte cliente*/
select cliente.nome as nome_cliente, descricao, data_atend as data_atendimento, atendente from cliente inner join suporte_cliente on cliente.id = suporte_cliente.id_cliente;
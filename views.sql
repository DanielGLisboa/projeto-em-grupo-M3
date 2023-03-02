/*View de informações dos clientes*/
create view clientes_info as
select nome, cpf, sexo, data_nascimento, ddd, telefone, email, logradouro, numero, bairro, estado, cidade, complemento, cep
from contato
inner join cliente inner join endereco 
on cliente.id=contato.id_cliente and cliente.id=endereco.id_cliente;

select * from clientes_info;

/*View de informações das transportadoras*/
create view transportadoras_info as
select nome, cnpj, ddd, telefone, email 
from transportadora 
inner join contato on contato.id_transportadora=transportadora.id;

select * from transportadoras_info;

/*View de carrinhos com valores unitários dos produtos*/
create view carrinhos_valor_unitario as
select cliente.nome as nome_cliente, cliente.cpf as cliente_cpf,
 produto.nome as nome_produto, qtd_prod,
 concat('R$ ' , format(produto.valor, '2')) as valor_unidade_produto
 from cliente inner join carrinho inner join produto 
 on carrinho.id_cliente=cliente.id
 and carrinho.id_produto=produto.id;
 
select * from carrinhos_valor_unitario;

/*View de carrinhos com valores totais*/
create view carrinhos_valores_totais as
select cliente.nome as nome_cliente, cpf,
SUM(qtd_prod) as quantidade_produtos,
concat('R$', format(SUM(valor*qtd_prod), 2))  as valor_total_carrinho 
from cliente inner join carrinho inner join produto 
on carrinho.id_produto=produto.id and carrinho.id_cliente = cliente.id 
group by cliente.id;

select * from carrinhos_valores_totais;

/*View de produtos em estoque*/
create view estoque_info as
select produto.nome as nome_produto,
 fabricante.nome as fabricante, 
 produto.descricao as descricao,
 estoque.qtd as quantidade_estoque  
 from estoque inner join produto inner join fabricante 
 on produto.id = estoque.id_produto and fabricante.id = produto.id_fabricante;
 
 select * from estoque_info;

/*View de historico de atendimentos do suporte ao cliente*/
create view historico_atendimento_suporte as
select cliente.nome as nome_cliente,
 descricao, data_atend as data_atendimento,
 atendente from cliente inner join suporte_cliente 
 on cliente.id = suporte_cliente.id_cliente;
 
 select * from historico_atendimento_suporte;
 
 


-- 🧑‍💻 Autora

-- Amanda Silva
-- 🎓 Estudante de Sistemas de Informação
-- 📊 Foco em Análise de Dados e Business Intelligence

use vendas;
-- EXTRAINDO VENDAS POR MES 

select
	extract(month from data_venda) as mensal,
	sum(quantidade) as soma_mensal
from 
	vendas
group by
	mensal
order by mensal asc;

--   ------------------------------------------------------------------------------
-- TOP 5 PRODUTOS VENDIDOS
select
	p.id_produto, 
    p.nome,
	SUM(v.quantidade) as soma_por_produto
from 
	vendas as v
join
		produtos as p
on
	v.id_produto = p.id_produto
group by 
		p.id_produto,
        p.nome
order by 
	soma_por_produto desc
limit 
 5;    
--   ----------------------------------------------------------------------    
--  FATURAMENTO POR REGIAO 
    
SELECT ve.regiao,
SUM(p.preco * v.quantidade) AS faturamento_total
FROM vendas v
JOIN vendedores as ve 
ON v.id_vendedor = ve.id_vendedor
join produtos p
on v.id_produto = p.id_produto
group by 
	ve.regiao
order by 
ve.regiao  desc ;

-- -------------------------------------------------------------------------------
-- TICKET MEDIO POR CLIENTE 

    SELECT c.nome,
sum(p.preco * v.quantidade)/ count(distinct v.id_venda) AS ticket_medio
FROM vendas as  v
JOIN clientes as c
ON v.id_cliente = c.id_cliente
join produtos as p 
on v.id_produto = p.id_produto
group by 
	c.nome
order by 
ticket_medio desc ;

    
    
    
 
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
























    

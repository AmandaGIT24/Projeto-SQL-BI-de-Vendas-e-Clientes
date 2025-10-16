
# 📊 Projeto SQL – BI de Vendas e Clientes

Este projeto foi desenvolvido com foco em **Análise de Dados e Business Intelligence (BI)** utilizando **MySQL**.  
O objetivo é criar consultas analíticas que fornecem **insights sobre vendas, produtos, clientes e regiões**.

---

## 🎯 Objetivo do Projeto

Aplicar conceitos de SQL voltados à análise de dados, simulando o dia a dia de um **analista de BI**.  
As consultas permitem explorar indicadores como faturamento, ticket médio, produtos mais vendidos e desempenho por região.

---

## 🧩 Estrutura do Projeto

| Arquivo | Descrição |
|----------|------------|
| `projeto_bi.sql` | Script de criação das tabelas e inserção dos dados fictícios. |
| `consultas_analiticas.sql` | Consultas analíticas desenvolvidas no projeto. |
| `README.md` | Documentação do projeto. |

---

## 🗂️ Modelagem dos Dados

O projeto utiliza quatro tabelas principais:

- **vendas** – informações sobre transações (data, quantidade, valor, produto e cliente)  
- **clientes** – dados básicos dos clientes  
- **produtos** – catálogo de produtos e preços  
- **vendedores** – informações de vendedores e suas regiões  

Essas tabelas se relacionam por meio de chaves primárias e estrangeiras, simulando um banco de dados de vendas corporativas.

---

## 🔍 Consultas Analíticas Desenvolvidas

1. **Total de vendas por mês**
   ```sql
   select
       extract(month from data_venda) as mes,
       sum(quantidade) as soma_mensal
   from vendas
   group by mes
   order by mes asc;
   ```
   > 📈 Mostra o volume total de vendas mensal.

---

2. **Top 5 produtos mais vendidos**
   ```sql
   select
       p.id_produto,
       p.nome,
       sum(v.quantidade) as soma_por_produto
   from vendas v
   join produtos p on v.id_produto = p.id_produto
   group by p.id_produto, p.nome
   order by soma_por_produto desc
   limit 5;
   ```
   > 🏆 Identifica os produtos com maior volume de vendas.

---

3. **Faturamento total por região**
   ```sql
   select
       ve.regiao,
       sum(p.preco * v.quantidade) as faturamento_total
   from vendas v
   join vendedores ve on v.id_vendedor = ve.id_vendedor
   join produtos p on v.id_produto = p.id_produto
   group by ve.regiao
   order by faturamento_total desc;
   ```
   > 🌎 Mostra o desempenho de vendas por região.

---

4. **Ticket médio por cliente**
   ```sql
   select
       c.nome,
       sum(p.preco * v.quantidade) / count(distinct v.id_venda) as ticket_medio
   from vendas v
   join clientes c on v.id_cliente = c.id_cliente
   join produtos p on v.id_produto = p.id_produto
   group by c.nome
   order by ticket_medio desc;
   ```
   > 💰 Calcula o valor médio gasto por cliente.

---

## 🧠 Conceitos Aplicados

- Criação e manipulação de tabelas relacionais  
- Joins entre múltiplas tabelas  
- Agrupamentos e somatórios (`GROUP BY`, `SUM`, `COUNT`)  
- Ordenação e filtros com `ORDER BY`, `LIMIT`  
- Cálculo de indicadores (KPIs) de negócios  
- Simulação de análises de BI em SQL puro  

---


---

## 🧰 Tecnologias Utilizadas

- **MySQL** (consultas e modelagem de dados)  
- **Workbench / DBeaver** (ferramenta de visualização de banco de dados)  
- **GitHub** (versionamento e portfólio)  

---

## 👩‍💻 Autor

**Amanda Silva**  
Estudante de **Sistemas de Informação** | Foco em **Análise de Dados e BI**  
📧 amanda.silvaprogramadora@gmail.com  
🔗 https://www.linkedin.com/in/amanda-silva-3375b4154/  

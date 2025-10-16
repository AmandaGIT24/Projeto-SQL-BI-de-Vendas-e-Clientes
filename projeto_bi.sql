create database vendas;
use vendas;
CREATE TABLE clientes (
  id_cliente SERIAL PRIMARY KEY,
  nome VARCHAR(100),
  cidade VARCHAR(100),
  estado CHAR(2),
  idade INT,
  genero CHAR(1)
);

CREATE TABLE produtos (
  id_produto SERIAL PRIMARY KEY,
  nome VARCHAR(100),
  categoria VARCHAR(50),
  preco DECIMAL(10,2)
);

CREATE TABLE vendedores (
  id_vendedor SERIAL PRIMARY KEY,
  nome VARCHAR(100),
  regiao VARCHAR(50)
);

CREATE TABLE vendas (
  id_venda SERIAL PRIMARY KEY,
  data_venda DATE,
  id_cliente INT REFERENCES clientes(id_cliente),
  id_produto INT REFERENCES produtos(id_produto),
  id_vendedor INT REFERENCES vendedores(id_vendedor),
  quantidade INT
);

-- Inserção de dados

-- Clientes
INSERT INTO clientes VALUES (1, 'Ana Lima', 'São Paulo', 'SP', 28, 'F');
INSERT INTO clientes VALUES (2, 'João Souza', 'Rio de Janeiro', 'RJ', 34, 'M');
INSERT INTO clientes VALUES (3, 'Carla Mendes', 'Belo Horizonte', 'MG', 25, 'F');
INSERT INTO clientes VALUES (4, 'Paulo Silva', 'Curitiba', 'PR', 42, 'M');
INSERT INTO clientes VALUES (5, 'Fernanda Rocha', 'Porto Alegre', 'RS', 30, 'F');
INSERT INTO clientes VALUES (6, 'Lucas Costa', 'Florianópolis', 'SC', 37, 'M');
INSERT INTO clientes VALUES (7, 'Juliana Dias', 'Salvador', 'BA', 29, 'F');
INSERT INTO clientes VALUES (8, 'Marcos Oliveira', 'Recife', 'PE', 41, 'M');
INSERT INTO clientes VALUES (9, 'Camila Santos', 'Brasília', 'DF', 26, 'F');
INSERT INTO clientes VALUES (10, 'Rafael Gomes', 'São Paulo', 'SP', 33, 'M');

-- Produtos
INSERT INTO produtos VALUES (1, 'Shampoo Hidratante', 'Cabelos', 29.9);
INSERT INTO produtos VALUES (2, 'Condicionador Babosa', 'Cabelos', 34.5);
INSERT INTO produtos VALUES (3, 'Creme Facial Vitamina C', 'Rosto', 49.9);
INSERT INTO produtos VALUES (4, 'Sabonete Líquido', 'Corpo', 15.9);
INSERT INTO produtos VALUES (5, 'Perfume Floral', 'Perfumaria', 89.0);
INSERT INTO produtos VALUES (6, 'Hidratante Corporal', 'Corpo', 39.9);
INSERT INTO produtos VALUES (7, 'Máscara Capilar', 'Cabelos', 54.9);
INSERT INTO produtos VALUES (8, 'Protetor Solar FPS 50', 'Rosto', 69.9);
INSERT INTO produtos VALUES (9, 'Esfoliante Corporal', 'Corpo', 27.5);
INSERT INTO produtos VALUES (10, 'Óleo Corporal', 'Corpo', 45.0);

-- Vendedores
INSERT INTO vendedores VALUES (1, 'Mariana Torres', 'Sudeste');
INSERT INTO vendedores VALUES (2, 'Carlos Almeida', 'Sul');
INSERT INTO vendedores VALUES (3, 'Patrícia Ramos', 'Nordeste');
INSERT INTO vendedores VALUES (4, 'Tiago Ferreira', 'Centro-Oeste');

-- Vendas
INSERT INTO vendas VALUES (1, '2024-07-17', 6, 10, 1, 3);
INSERT INTO vendas VALUES (2, '2025-05-19', 8, 10, 4, 1);
INSERT INTO vendas VALUES (3, '2024-10-30', 3, 9, 2, 2);
INSERT INTO vendas VALUES (4, '2025-04-22', 3, 10, 4, 5);
INSERT INTO vendas VALUES (5, '2024-11-28', 8, 7, 2, 5);
INSERT INTO vendas VALUES (6, '2025-06-08', 4, 3, 4, 5);
INSERT INTO vendas VALUES (7, '2024-03-09', 8, 4, 4, 3);
INSERT INTO vendas VALUES (8, '2024-09-07', 2, 9, 1, 2);
INSERT INTO vendas VALUES (9, '2024-07-21', 8, 9, 2, 3);
INSERT INTO vendas VALUES (10, '2025-01-22', 1, 3, 4, 1);
INSERT INTO vendas VALUES (11, '2025-02-21', 5, 4, 2, 3);
INSERT INTO vendas VALUES (12, '2025-03-17', 2, 9, 1, 5);
INSERT INTO vendas VALUES (13, '2025-09-23', 8, 6, 1, 4);
INSERT INTO vendas VALUES (14, '2024-10-05', 9, 2, 2, 3);
INSERT INTO vendas VALUES (15, '2025-05-05', 3, 4, 4, 3);
INSERT INTO vendas VALUES (16, '2025-04-04', 8, 7, 2, 4);
INSERT INTO vendas VALUES (17, '2024-03-28', 9, 10, 3, 2);
INSERT INTO vendas VALUES (18, '2024-12-16', 1, 5, 2, 4);
INSERT INTO vendas VALUES (19, '2024-06-24', 5, 5, 2, 4);
INSERT INTO vendas VALUES (20, '2024-08-23', 6, 10, 4, 1);
INSERT INTO vendas VALUES (21, '2024-05-24', 2, 2, 1, 2);
INSERT INTO vendas VALUES (22, '2024-10-07', 6, 10, 1, 1);
INSERT INTO vendas VALUES (23, '2024-01-24', 8, 8, 3, 3);
INSERT INTO vendas VALUES (24, '2025-07-07', 5, 10, 3, 2);
INSERT INTO vendas VALUES (25, '2025-07-09', 6, 5, 4, 3);
INSERT INTO vendas VALUES (26, '2025-08-08', 3, 7, 4, 5);
INSERT INTO vendas VALUES (27, '2025-10-12', 8, 3, 4, 3);
INSERT INTO vendas VALUES (28, '2025-04-02', 2, 1, 1, 3);
INSERT INTO vendas VALUES (29, '2025-04-14', 4, 9, 3, 3);
INSERT INTO vendas VALUES (30, '2024-01-30', 1, 3, 4, 4);
INSERT INTO vendas VALUES (31, '2025-07-21', 5, 5, 2, 3);
INSERT INTO vendas VALUES (32, '2024-08-26', 10, 6, 1, 4);
INSERT INTO vendas VALUES (33, '2025-09-22', 3, 9, 3, 5);
INSERT INTO vendas VALUES (34, '2025-01-14', 9, 7, 3, 1);
INSERT INTO vendas VALUES (35, '2024-05-17', 2, 10, 3, 1);
INSERT INTO vendas VALUES (36, '2024-09-05', 7, 4, 2, 3);
INSERT INTO vendas VALUES (37, '2024-10-12', 2, 3, 3, 2);
INSERT INTO vendas VALUES (38, '2024-09-18', 9, 9, 2, 4);
INSERT INTO vendas VALUES (39, '2024-01-25', 8, 4, 2, 3);
INSERT INTO vendas VALUES (40, '2024-01-14', 5, 3, 2, 2);
INSERT INTO vendas VALUES (41, '2024-08-25', 4, 3, 3, 5);
INSERT INTO vendas VALUES (42, '2025-01-01', 2, 10, 4, 5);
INSERT INTO vendas VALUES (43, '2025-09-25', 6, 8, 4, 4);
INSERT INTO vendas VALUES (44, '2025-07-13', 8, 2, 2, 4);
INSERT INTO vendas VALUES (45, '2024-04-30', 9, 2, 4, 1);
INSERT INTO vendas VALUES (46, '2025-08-06', 2, 6, 2, 3);
INSERT INTO vendas VALUES (47, '2024-02-12', 5, 7, 2, 4);
INSERT INTO vendas VALUES (48, '2024-07-29', 7, 8, 3, 3);
INSERT INTO vendas VALUES (49, '2025-07-24', 9, 4, 4, 3);
INSERT INTO vendas VALUES (50, '2025-07-26', 6, 10, 1, 5);

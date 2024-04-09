USE sistema_vendas_online;
 
SELECT * FROM cliente;
INSERT INTO cliente
VALUES 
( NULL, 'lavi', 'example1@gmail.com', '99999945', '2009-02-01' ),
( NULL, 'lucas', 'example2@gmail.com', '99999967', '2008-02-01' ),
( NULL, 'joao', 'example3@gmail.com', '99999912', '2007-02-01' ),
( NULL, 'porsi', 'example4@gmail.com', '99999991', '2006-02-01' ),
( NULL, 'maria', 'example5@gmail.com', '99999992', '2005-02-01' ),
( NULL, 'antony', 'example6@gmail.com', '99999993', '2009-07-28' ),
( NULL, 'gustavo', 'example7@gmail.com', '99999996', '2004-06-21' ),
( NULL, 'everton', 'example8@gmail.com', '99999994', '2010-05-08' ),
( NULL, 'naju', 'example9@gmail.com', '99999998', '2000-05-30' ),
( NULL, 'giulia', 'example10@gmail.com', '99999997', '2003-02-02' );

INSERT INTO produtos
VALUES
( NULL, 'Teste', 5.90, 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 100 ),
( NULL, 'testi', 6.90, 'Lorem ipsum dolor sit ameta consectetur adipisicing elit.', 200 ),
( NULL, 'teste4', 7.90, 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 300 ),
( NULL, 'Teste3', 8.90, 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 400 ),
( NULL, 'Teste4', 9.90, 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 500 ),
( NULL, 'Teste5', 10.90, 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 600 ),
( NULL, 'Teste6', 11.90, 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 700 ),
( NULL, 'Teste7', 12.90, 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 800 ),
( NULL, 'Teste8', 13.90, 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 900 ),
( NULL, 'Teste9', 14.90, 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 1000 );

SELECT * FROM pedidos;
INSERT INTO pedidos
VALUES
( NULL, 1, '2024-03-20', 0, '2024-03-25' ),
( NULL, 2, '2024-03-19', 0, '2024-03-24' ),
( NULL, 3, '2024-03-18', 0, '2024-03-23' ),
( NULL, 4, '2024-03-17', 0, '2024-03-22' ),
( NULL, 5, '2024-03-16', 0, '2024-03-21' ),
( NULL, 6, '2024-03-15', 0, '2024-03-20' ),
( NULL, 7, '2024-03-14', 0, '2024-03-19' ),
( NULL, 8, '2024-03-13', 0, '2024-03-18' ),
( NULL, 9, '2024-03-12', 0, '2024-03-17' ),
( NULL, 10, '2024-03-11', 0, '2024-03-16' );

SELECT * FROM lista_itens;
INSERT INTO lista_itens
VALUES
( NULL, 1, 1, 3, 0,0),
( NULL, 2, 2, 4, 0,0),
( NULL, 3, 3, 7, 0,0),
( NULL, 4, 4, 9, 0,0),
( NULL, 5, 5, 2, 0,0),
( NULL, 6, 6, 12, 0,0),
( NULL, 7, 7, 4, 0,0),
( NULL, 8, 8, 3, 0,0),
( NULL, 9, 9, 19, 0,0),
( NULL, 10, 10, 1, 0,0);

UPDATE clientes
SET nome = 'lavinia'
WHERE id = 7;

UPDATE produtos
SET preco = 6.00
WHERE id = 1;

UPDATE pedidos
SET dt_compra = '2024-03-10'
WHERE id = 10;

UPDATE lista_itens
SET valor_untr = ( SELECT preco FROM produtos WHERE id = id_produtos ),  valor_total = ( SELECT preco*qnt FROM produtos WHERE ID = id_produtos )
WHERE id = 7;

DELETE FROM lista_itens WHERE id = 9;
DELETE FROM lista_itens WHERE id = 10
create database prova_1;
use prova_1;

CREATE TABLE Produtos;
INSERT INTO Produtos (ID_Produtos, Nome_Produtos, Preco, Categoria)
VALUES ('1', 'smartphone X1', '1500,00', 'eletronicos'),
       ('2', 'notebook PRO', '3500,00', 'eletronicos'),
       ('3', 'cadeira gamer', '800,00', 'moveis'),
       ('4', 'fone de ouvido', '200,00', 'Acessorios'),
       ('5', 'mesa de escritorio', '1200,00', 'eletronicos');

CREATE TABLE Estoque;
INSERT INTO Produtos (ID_Estoque, ID_Produtos, Quantidade, Localizacao)
VALUES ('1', '1', '50', 'Depósito A'),
	   ('2', '2', '30', 'Depósito B'),
       ('3', '3', '20', 'Depósito A'),
       ('4', '4', '100', 'Depósito C'),
       ('5', '5', '10', 'Depósito B');
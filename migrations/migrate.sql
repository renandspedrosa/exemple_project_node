CREATE DATABASE IF NOT EXISTS
    fiap_db
USE fiap_db;

CREATE TABLE IF NOT EXISTS clientes (
    ID INT (11) AUTO_INCREMENT.
    name VARCHAR(255),
    cpf IN (11),
    PRIMARY KEY (id)
);

INSERT INTO clientes (name, cpf)
VALUES 
('JOSE', '65332844018')
('MARIA', '46993132052');
CREATE DATABASE TESTE;

USE TESTE;

DROP database TESTE;


/* Lógico_2: */

CREATE TABLE pais (
    moeda_pais VARCHAR(5),
    id_pais INT PRIMARY KEY,
    nome_pais VARCHAR(50)
);

CREATE TABLE imposto (
    id_imposto INT PRIMARY KEY,
    nome_imposto VARCHAR(50),
    fk_pais_id_pais INT
);

CREATE TABLE dado_imposto (
    id_dado_imposto INT PRIMARY KEY,
    ano_dado_imposto INT
);

CREATE TABLE soma_imposto (
    fk_imposto_id_imposto INT,
    fk_dado_imposto_id_dado_imposto INT,
    valor_soma_imposto DECIMAL
);
 
ALTER TABLE imposto ADD CONSTRAINT FK_imposto_2
    FOREIGN KEY (fk_pais_id_pais)
    REFERENCES pais (id_pais)
    ON DELETE RESTRICT;
 
ALTER TABLE soma_imposto ADD CONSTRAINT FK_soma_imposto_1
    FOREIGN KEY (fk_imposto_id_imposto)
    REFERENCES imposto (id_imposto)
    ON DELETE RESTRICT;
 
ALTER TABLE soma_imposto ADD CONSTRAINT FK_soma_imposto_2
    FOREIGN KEY (fk_dado_imposto_id_dado_imposto)
    REFERENCES dado_imposto (id_dado_imposto)
    ON DELETE RESTRICT;
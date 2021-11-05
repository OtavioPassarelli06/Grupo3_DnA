INSERT INTO pais(id_pais,nome_pais, moeda_pais) VALUES (1, "Brasil", "BRL");
INSERT INTO pais(id_pais,nome_pais, moeda_pais) VALUES (2, "Argentina", "ARS");
INSERT INTO pais(id_pais,nome_pais, moeda_pais) VALUES (3, "Uruguai", "UYU");


INSERT INTO imposto(id_imposto, nome_imposto, fk_pais_id_pais) VALUES (1, "IMPOSTO SOBRE A RENDA TOTAL",1);
INSERT INTO imposto(id_imposto, nome_imposto, fk_pais_id_pais) VALUES (2, "IOF",1);
INSERT INTO imposto(id_imposto, nome_imposto, fk_pais_id_pais) VALUES (3, "COFINS",1);
INSERT INTO imposto(id_imposto, nome_imposto, fk_pais_id_pais) VALUES (4, "PIS/PASEP",1);
INSERT INTO imposto(id_imposto, nome_imposto, fk_pais_id_pais) VALUES (5, "CSLL",1);
INSERT INTO imposto(id_imposto, nome_imposto, fk_pais_id_pais) VALUES (6, "IMPOSTOS SOBRE A RENDA TOTAL",2);
INSERT INTO imposto(id_imposto, nome_imposto, fk_pais_id_pais) VALUES (7, "IMPOSTO SOBRE LUCRO",2);
INSERT INTO imposto(id_imposto, nome_imposto, fk_pais_id_pais) VALUES (8, "TRANSFERENCIAS DE IMOVEIS",2);
INSERT INTO imposto(id_imposto, nome_imposto, fk_pais_id_pais) VALUES (9, "IMPOSTOS SOBRE TRANSAÇÕES FINANCEIRAS",2);
INSERT INTO imposto(id_imposto, nome_imposto, fk_pais_id_pais) VALUES (10, "IMPOSTO SOBRE A INVEST. FINANCEIRO",3);
INSERT INTO imposto(id_imposto, nome_imposto, fk_pais_id_pais) VALUES (11, "IMPOSTO SOBRE TAXA DE CRÉDITO",3);
INSERT INTO imposto(id_imposto, nome_imposto, fk_pais_id_pais) VALUES (12, "IMPOSTO SOBRE ATIVOS DE INST. FIN. - IMABA",3);
INSERT INTO imposto(id_imposto, nome_imposto, fk_pais_id_pais) VALUES (13, "IMP. SOBRE CONTR. DE INST. FIN. - ICOSIF",3);
INSERT INTO imposto(id_imposto, nome_imposto, fk_pais_id_pais) VALUES (14, "IMPOSTO SOBRE COMP. SEGUROS",3);
INSERT INTO imposto(id_imposto, nome_imposto, fk_pais_id_pais) VALUES (15, "IMPOSTO SOBRE PATRIMONIO",3);


INSERT into dado_imposto(id_dado_imposto, ano_dado_imposto) VALUES (1, 2014);
INSERT into dado_imposto(id_dado_imposto, ano_dado_imposto) VALUES (2, 2015);
INSERT into dado_imposto(id_dado_imposto, ano_dado_imposto) VALUES (3, 2016);
INSERT into dado_imposto(id_dado_imposto, ano_dado_imposto) VALUES (4, 2017);
INSERT into dado_imposto(id_dado_imposto, ano_dado_imposto) VALUES (5, 2018);
INSERT into dado_imposto(id_dado_imposto, ano_dado_imposto) VALUES (6, 2019);
INSERT into dado_imposto(id_dado_imposto, ano_dado_imposto) VALUES (7, 2020);


/* INSERINDO VALORES DOS IMPOSTOS BRASILEIROS*/

INSERT INTO soma_imposto (fk_dado_imposto_id_dado_imposto, fk_imposto_id_imposto, valor_soma_imposto) VALUES (1,1,428733.790889758);
INSERT INTO soma_imposto (fk_dado_imposto_id_dado_imposto, fk_imposto_id_imposto, valor_soma_imposto) VALUES (2,1,416455.04484505);
INSERT INTO soma_imposto (fk_dado_imposto_id_dado_imposto, fk_imposto_id_imposto, valor_soma_imposto) VALUES (3,1,432477.410201739);
INSERT INTO soma_imposto (fk_dado_imposto_id_dado_imposto, fk_imposto_id_imposto, valor_soma_imposto) VALUES (4,1,412691.520319648);
INSERT INTO soma_imposto (fk_dado_imposto_id_dado_imposto, fk_imposto_id_imposto, valor_soma_imposto) VALUES (5,1,432622.695939598);
INSERT INTO soma_imposto (fk_dado_imposto_id_dado_imposto, fk_imposto_id_imposto, valor_soma_imposto) VALUES (6,1,462885.613081937);
INSERT INTO soma_imposto (fk_dado_imposto_id_dado_imposto, fk_imposto_id_imposto, valor_soma_imposto) VALUES (7,1,452916.672156662);



INSERT INTO soma_imposto (fk_dado_imposto_id_dado_imposto, fk_imposto_id_imposto, valor_soma_imposto) VALUES (1,2,41845.1760149092);
INSERT INTO soma_imposto (fk_dado_imposto_id_dado_imposto, fk_imposto_id_imposto, valor_soma_imposto) VALUES (2,2,44738.2591973292);
INSERT INTO soma_imposto (fk_dado_imposto_id_dado_imposto, fk_imposto_id_imposto, valor_soma_imposto) VALUES (3,2,39964.6912511628);
INSERT INTO soma_imposto (fk_dado_imposto_id_dado_imposto, fk_imposto_id_imposto, valor_soma_imposto) VALUES (4,2,39615.8433260467);
INSERT INTO soma_imposto (fk_dado_imposto_id_dado_imposto, fk_imposto_id_imposto, valor_soma_imposto) VALUES (5,2,40192.5477225932);
INSERT INTO soma_imposto (fk_dado_imposto_id_dado_imposto, fk_imposto_id_imposto, valor_soma_imposto) VALUES (6,2,43585.6482637005);
INSERT INTO soma_imposto (fk_dado_imposto_id_dado_imposto, fk_imposto_id_imposto, valor_soma_imposto) VALUES (7,2,22381.9380433593);

INSERT INTO soma_imposto (fk_dado_imposto_id_dado_imposto, fk_imposto_id_imposto, valor_soma_imposto) VALUES (1,3,273636.323232158);
INSERT INTO soma_imposto (fk_dado_imposto_id_dado_imposto, fk_imposto_id_imposto, valor_soma_imposto) VALUES (2,3,260305.077049242);
INSERT INTO soma_imposto (fk_dado_imposto_id_dado_imposto, fk_imposto_id_imposto, valor_soma_imposto) VALUES (3,3,242523.294713968);
INSERT INTO soma_imposto (fk_dado_imposto_id_dado_imposto, fk_imposto_id_imposto, valor_soma_imposto) VALUES (4,3,250914.507859512);
INSERT INTO soma_imposto (fk_dado_imposto_id_dado_imposto, fk_imposto_id_imposto, valor_soma_imposto) VALUES (5,3,268109.727362687);
INSERT INTO soma_imposto (fk_dado_imposto_id_dado_imposto, fk_imposto_id_imposto, valor_soma_imposto) VALUES (6,3,268045.038771568);
INSERT INTO soma_imposto (fk_dado_imposto_id_dado_imposto, fk_imposto_id_imposto, valor_soma_imposto) VALUES (7,3,232775.379849038);

INSERT INTO soma_imposto (fk_dado_imposto_id_dado_imposto, fk_imposto_id_imposto, valor_soma_imposto) VALUES (1,4,73093.8186520344);
INSERT INTO soma_imposto (fk_dado_imposto_id_dado_imposto, fk_imposto_id_imposto, valor_soma_imposto) VALUES (2,4,69443.2600978936);
INSERT INTO soma_imposto (fk_dado_imposto_id_dado_imposto, fk_imposto_id_imposto, valor_soma_imposto) VALUES (3,4,64513.1435614712);
INSERT INTO soma_imposto (fk_dado_imposto_id_dado_imposto, fk_imposto_id_imposto, valor_soma_imposto) VALUES (4,4,67051.2192657677);
INSERT INTO soma_imposto (fk_dado_imposto_id_dado_imposto, fk_imposto_id_imposto, valor_soma_imposto) VALUES (5,4,71411.1559586949);
INSERT INTO soma_imposto (fk_dado_imposto_id_dado_imposto, fk_imposto_id_imposto, valor_soma_imposto) VALUES (6,4,72249.4690725096);
INSERT INTO soma_imposto (fk_dado_imposto_id_dado_imposto, fk_imposto_id_imposto, valor_soma_imposto) VALUES (7,4,66957.8468169397);

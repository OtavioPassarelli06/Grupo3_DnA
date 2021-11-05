SELECT pais.nome_pais, imposto.nome_imposto from imposto, pais
	WHERE pais.id_pais = imposto.fk_pais_id_pais;
select * from dado_imposto;

select * from imposto;

select * from soma_imposto;



SELECT DISTINCT nome_pais, nome_imposto, valor_soma_imposto, ano_dado_imposto from pais as p
	JOIN imposto as i
		ON p.id_pais = i.fk_pais_id_pais
        
    JOIN soma_imposto as si 
		ON si.fk_imposto_id_imposto = i.id_imposto
	JOIN dado_imposto as di
		ON si.fk_dado_imposto_id_dado_imposto = di.id_dado_imposto 
        WHERE di.ano_dado_imposto = 2018 
	
    
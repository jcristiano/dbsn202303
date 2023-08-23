UPDATE venda SET data_venda = STR_TO_DATE('2023/08/22', '%Y/%m/%d') WHERE  id BETWEEN 1 AND 13;

UPDATE venda SET data_venda = STR_TO_DATE('2023/08/23', '%Y/%m/%d') WHERE  id > 13;
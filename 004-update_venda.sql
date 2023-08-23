ALTER TABLE venda DROP COLUMN data_venda;

ALTER TABLE venda ADD COLUMN data_venda TIMESTAMP DEFAULT CURRENT_TIMESTAMP();

UPDATE venda SET data_venda = STR_TO_DATE('2023/08/23 16:42:15', '%Y/%m/%d %H:%i:%s') WHERE id = 1;
UPDATE venda SET data_venda = STR_TO_DATE('2023/08/23 05:51:57', '%Y/%m/%d %H:%i:%s') WHERE id = 2;
UPDATE venda SET data_venda = STR_TO_DATE('2023/08/23 03:13:01', '%Y/%m/%d %H:%i:%s') WHERE id = 3;
UPDATE venda SET data_venda = STR_TO_DATE('2023/08/23 22:29:12', '%Y/%m/%d %H:%i:%s') WHERE id = 4;
UPDATE venda SET data_venda = STR_TO_DATE('2023/08/22 06:47:00', '%Y/%m/%d %H:%i:%s') WHERE id = 5;
UPDATE venda SET data_venda = STR_TO_DATE('2023/08/23 14:27:25', '%Y/%m/%d %H:%i:%s') WHERE id = 6;
UPDATE venda SET data_venda = STR_TO_DATE('2023/08/23 03:56:03', '%Y/%m/%d %H:%i:%s') WHERE id = 7;
UPDATE venda SET data_venda = STR_TO_DATE('2023/08/23 00:18:01', '%Y/%m/%d %H:%i:%s') WHERE id = 8;
UPDATE venda SET data_venda = STR_TO_DATE('2023/08/23 13:41:57', '%Y/%m/%d %H:%i:%s') WHERE id = 9;
UPDATE venda SET data_venda = STR_TO_DATE('2023/08/22 19:35:43', '%Y/%m/%d %H:%i:%s') WHERE id = 10;
UPDATE venda SET data_venda = STR_TO_DATE('2023/08/23 08:52:43', '%Y/%m/%d %H:%i:%s') WHERE id = 11;
UPDATE venda SET data_venda = STR_TO_DATE('2023/08/22 09:36:28', '%Y/%m/%d %H:%i:%s') WHERE id = 12;
UPDATE venda SET data_venda = STR_TO_DATE('2023/08/23 21:24:09', '%Y/%m/%d %H:%i:%s') WHERE id = 13;
UPDATE venda SET data_venda = STR_TO_DATE('2023/08/22 06:11:23', '%Y/%m/%d %H:%i:%s') WHERE id = 14;
UPDATE venda SET data_venda = STR_TO_DATE('2023/08/23 14:44:27', '%Y/%m/%d %H:%i:%s') WHERE id = 15;
UPDATE venda SET data_venda = STR_TO_DATE('2023/08/23 07:08:06', '%Y/%m/%d %H:%i:%s') WHERE id = 16;
UPDATE venda SET data_venda = STR_TO_DATE('2023/08/23 15:27:09', '%Y/%m/%d %H:%i:%s') WHERE id = 17;
UPDATE venda SET data_venda = STR_TO_DATE('2023/08/22 07:51:30', '%Y/%m/%d %H:%i:%s') WHERE id = 18;
UPDATE venda SET data_venda = STR_TO_DATE('2023/08/22 16:56:04', '%Y/%m/%d %H:%i:%s') WHERE id = 19;
UPDATE venda SET data_venda = STR_TO_DATE('2023/08/22 13:05:49', '%Y/%m/%d %H:%i:%s') WHERE id = 20;
UPDATE venda SET data_venda = STR_TO_DATE('2023/08/22 14:40:56', '%Y/%m/%d %H:%i:%s') WHERE id = 21;
UPDATE venda SET data_venda = STR_TO_DATE('2023/08/23 10:07:10', '%Y/%m/%d %H:%i:%s') WHERE id = 22;
UPDATE venda SET data_venda = STR_TO_DATE('2023/08/23 06:33:06', '%Y/%m/%d %H:%i:%s') WHERE id = 23;
UPDATE venda SET data_venda = STR_TO_DATE('2023/08/22 02:23:59', '%Y/%m/%d %H:%i:%s') WHERE id = 24;
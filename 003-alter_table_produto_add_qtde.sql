ALTER TABLE produto ADD COLUMN quantidade INT NOT NULL DEFAULT 0;


UPDATE produto SET categoria_id = '4' WHERE id IN ('7', '8');
UPDATE produto SET categoria_id = '5' WHERE id IN ('9', '10');

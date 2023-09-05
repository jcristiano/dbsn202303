---data_venda, cliente, produto, quantidade, valor_por_item
SELECT
	v.id,
	v.data_venda,
	c.nome cliente,
	p.nome produto,
	iv.quantidade,
	iv.valor_total_item
FROM
	venda v
JOIN cliente c ON v.cliente_id = c.id
JOIN itemvenda iv ON v.id = iv.venda_id
JOIN produto p ON iv.produto_id = p.id;


---produto mais vendido
SELECT
	p.nome produto,
	SUM(iv.quantidade) total_vendido
FROM
	produto p
JOIN itemvenda iv ON p.id = iv.produto_id
GROUP BY p.id
ORDER BY total_vendido DESC;

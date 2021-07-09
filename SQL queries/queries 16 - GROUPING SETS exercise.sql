SELECT prod_id AS "prod_id", orderlineid, sum(ol.quantity)
FROM orderlines AS ol
GROUP BY
    GROUPING SETS (
        (),
        (prod_id),
        (orderlineid)
    )
ORDER BY prod_id DESC, orderlineid
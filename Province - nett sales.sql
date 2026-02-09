--result of west java total sales in different envs:
--this formula(/product_id not in group by/): 5.780.137.320
--AI formula: 94.869.594.875 (?)
--Excel(manual+/product_id in group by/): 4.643.130.407
--Excel (exclude 2nd argument)(manual): 95.051.088.772 (?)
SELECT DISTINCT provinsi, CAST(SUM(price * (1 - discount_percentage)) AS INT64) as Nett_sales
FROM kf_final_transaction as t
join kf_kantor_cabang as b on (b.branch_id = t.branch_id) 
GROUP BY provinsi
ORDER BY cast(Nett_sales as INT) DESC
-- SELECT 
--     b.provinsi,
--     t.product_id,
--     SUM(t.price * (1 - t.discount_percentage)) AS sales
-- FROM kf_final_transaction AS t
-- JOIN kf_kantor_cabang AS b ON b.branch_id = t.branch_id
-- GROUP BY b.provinsi, t.product_id;
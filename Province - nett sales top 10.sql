SELECT DISTINCT provinsi, CAST(SUM(price * (1 - discount_percentage)) AS INT64) as Nett_sales
FROM kf_final_transaction as t
join kf_kantor_cabang as b on (b.branch_id = t.branch_id) 
GROUP BY provinsi
ORDER BY cast(Nett_sales as INT) DESC
LIMIT 10;
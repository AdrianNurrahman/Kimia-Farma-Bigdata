SELECT DISTINCT provinsi, count(transaction_id) as sales
FROM kf_final_transaction as t
join kf_kantor_cabang as b on (b.branch_id = t.branch_id) 
group by provinsi
order by sales desc
limit 10;
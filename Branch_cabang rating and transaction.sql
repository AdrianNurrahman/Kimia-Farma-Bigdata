select c.branch_id, c.rating as branch_rating, t.rating as transaction_rating, kota, provinsi, branch_category, branch_name
from kf_final_transaction as t
left join kf_kantor_cabang as c on (t.branch_id = c.branch_id)
group by kota
order by cast(c.rating as NUMERIC) desc, cast(t.rating as NUMERIC) asc
limit 5;
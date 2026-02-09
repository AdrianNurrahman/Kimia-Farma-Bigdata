select strftime("%Y", date) as year, sum(real_price) as total_nett
from kf_final_transaction
group by year
order by year
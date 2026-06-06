select name
from SalesPerson
where sales_id not in (
    SELECT sp.sales_id
    FROM SalesPerson as sp
    LEFT JOIN Orders as ord ON sp.sales_id = ord.sales_id
    JOIN Company as co ON co.com_id = ord.com_id
    WHERE co.name = 'RED'
)

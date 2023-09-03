Query 1
SELECT "Marital Status", AVG(age) AS "Average Age"
FROM case_study_customer
GROUP BY "Marital Status";

Query 2
SELECT "gender", AVG(age) AS "Average Age"
FROM case_study_customer
GROUP BY "gender";

Query 3
SELECT storename, SUM(qty) AS total
FROM case_study_transaction
LEFT JOIN case_study_store ON case_study_transaction.storeid = case_study_store.storeid
GROUP BY storename
ORDER BY 2 desc
LIMIT 1

Query 4
SELECT "Product Name", SUM(totalamount) AS total
FROM case_study_transaction
JOIN case_study_product ON case_study_transaction.productid = case_study_product.productid
GROUP BY "Product Name"
ORDER BY total DESC
LIMIT 1;

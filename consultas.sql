# Consulta 1
SELECT
	client_id
FROM 
	client
WHERE district_id = 1
ORDER BY client_id asc
LIMIT 5;
	
# Consulta 2
SELECT
	client_id
FROM 
	client
WHERE district_id = 72
ORDER BY client_id desc
LIMIT 1;

SELECT MAX(client_id)
FROM client
WHERE district_id = 72;

# Consulta 3
SELECT loan_id 
FROM 
	loan
ORDER BY loan_id asc
LIMIT 3;

# Consulta 4
select distinct status
FROM 
	loan
order by status asc;

# Consulta 5
SELECT loan_id
FROM loan
order by payments desc
LIMIT 1;

# Consulta 6
SELECT account_id, amount
FROM loan
order by loan_id asc
limit 5;

# consulta 7
SELECT account_id
FROM loan
where duration = 60
order by amount asc
limit 5;

# consulta 8
SELECT distinct k_symbol
FROM `order`
order by k_symbol asc;

# consulta 9
SELECT order_id
FROM `order`
WHERE account_id  = 34; 

# consulta 10
SELECT distinct account_id
FROM `order`
WHERE order_id BETWEEN 29540 AND 29560;

# consulta 11
SELECT amount 
FROM `order`
WHERE account_to = 30067122;

# consulta 12
SELECT trans_id, `date`, `type`, amount
FROM trans
WHERE account_id = 793
ORDER BY `date` DESC
LIMIT 10;

# consulta 13
SELECT district_id, COUNT(*) as contador
FROM `client`
WHERE district_id < 10
GROUP BY district_id
ORDER BY contador desc;

# consulta 14
SELECT `type`, count(*) as contador 
FROM card
GROUP BY `type`
ORDER BY contador desc;

# consulta 15
SELECT account_id, SUM(amounts) as sumatorio
FROM loan
GROUP BY account_id
ORDER BY sumatorio desc
LIMIT 10;

# consulta 16
SELECT `date`, count(*) as contador
FROM loan
WHERE `date` < 930907
group by `date`
order by `date`desc;

# consulta 17
SELECT `date`, count(*) as contador
FROM loan
WHERE `date` BETWEEN 971201 AND 971231		
group by `date`
order by `date` asc;

# consulta 18
SELECT `type`, sum(amount) as total_amount
FROM trans
WHERE account_id = 396 
group by `type`;
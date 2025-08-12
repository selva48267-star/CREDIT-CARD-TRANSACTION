use credit_transaction;
SELECT city, SUM(amount) AS total_spent  
FROM Credit_Card_Transcations 
GROUP BY city 
ORDER BY total_spent DESC; 
-- 2. Monthly Spend Trend 
SELECT  
    DATE_FORMAT(transaction_date, '%Y-%m') AS month, 
    SUM(amount) AS total_amount 
FROM Credit_Card_Transcations 
GROUP BY month 
ORDER BY month; 
-- 3. Expense Type Distribution 
SELECT exp_type, COUNT(*) AS txn_count, SUM(amount) AS total_spend 
FROM Credit_Card_Transcations 
GROUP BY exp_type 
ORDER BY total_spend DESC; 
-- 4. Gender-wise Spending 
SELECT gender, COUNT(*) AS txn_count, SUM(amount) AS total_spend 
FROM Credit_Card_Transcations 
GROUP BY gender; 
-- 5. Card Type Performance 
SELECT card_type, COUNT(*) AS txn_count, AVG(amount) AS avg_spend 
FROM Credit_Card_Transcations 
GROUP BY card_type;
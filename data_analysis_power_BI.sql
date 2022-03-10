/*Show all customer records*/
SELECT * FROM customers;

/*Show total number of customers*/
SELECT count(*) FROM customers; 

SELECT * FROM transactions;
SELECT count(*) FROM transactions;

SELECT * FROM products;
SELECT count(*) FROM products;

SELECT * FROM markets;
SELECT count(*) FROM markets; 

/*Show transactions for Chennai market (market code for chennai is Mark001 */
SELECT * FROM transactions where market_code='Mark001';
SELECT count(*) FROM transactions where market_code='Mark001';

/* Show transactions where currency is US dollars */
SELECT * from transactions where currency="USD";

/* Show transactions in 2020 join by date table */
SELECT transactions.*, date.* FROM transactions INNER JOIN date ON transactions.order_date=date.date where date.year=2020;

/* Show total revenue in year 2020 */
SELECT SUM(transactions.sales_amount) FROM transactions INNER JOIN date ON transactions.order_date=date.date where date.year=2020 and transactions.currency="INR\r" or transactions.currency="USD\r";

/*Show total revenue in year 2020 in Chennai*/
SELECT SUM(transactions.sales_amount) FROM transactions INNER JOIN date ON transactions.order_date=date.date where date.year=2020 and transactions.market_code="Mark001";







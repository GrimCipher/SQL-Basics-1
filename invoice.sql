-- Count orders made from the USA
SELECT COUNT(*) FROM invoice WHERE billing_country = 'USA';

-- Find largest order total amount
SELECT MAX(total) FROM invoice;

-- Find smallest order total amount
SELECT MIN(total) FROM invoice;

-- Find orders bigger than $5
SELECT * FROM invoice WHERE total > 5;

-- Count orders smaller than $5
SELECT COUNT(*) FROM invoice WHERE total < 5;

-- Count orders in CA, TX, or AZ
SELECT COUNT(*) FROM invoice WHERE billing_state IN ('CA', 'TX', 'AZ');

-- Get average total of the orders
SELECT AVG(total) FROM invoice;

-- Get total sum of the orders
SELECT SUM(total) FROM invoice;

-- Update invoice with invoice_id of 5 to have total order amount of 24
UPDATE invoice SET total = 24 WHERE invoice_id = 5;

-- Delete invoice with invoice_id of 1
DELETE FROM invoice WHERE invoice_id = 1;

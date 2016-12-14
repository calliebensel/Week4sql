-- 0. Get all the users
SELECT * FROM syntax_practice;
-- 1. Get all users from Chicago.
SELECT * FROM syntax_practice WHERE city='chicago';
-- 2. Get all users with usernames that contain the letter a.
SELECT * FROM syntax_practice WHERE username LIKE '%a%';
-- 3. The bank is giving a new customer bonus! Update all records with an account balance of 0.00 and a transactions_attempted of 0. Give them a new account balance of 10.00.
UPDATE syntax_practice SET account_balance=10.00 WHERE account_balance=0 AND transactions_attempted=0;
-- 4. Select all users that have attempted 9 or more transactions.
SELECT * FROM syntax_practice WHERE transactions_attempted >= 9;
-- 5. Get the username and account balance of the 3 users with the highest balances, sort highest to lowest balance. NOTE: Research LIMIT
SELECT username, account_balance FROM syntax_practice ORDER BY account_balance DESC LIMIT 3;
-- 6. Get the username and account balance of the 3 users with the lowest balances, sort lowest to highest balance.
SELECT username, account_balance FROM syntax_practice ORDER BY account_balance LIMIT 3;
-- 7. Get all users with account balances that are more than $100.
SELECT * FROM syntax_practice WHERE account_balance >= 100;
-- 8. Add a new record.
INSERT INTO syntax_practice (username, city, transactions_completed, transactions_attempted, account_balance) VALUES ('callie', 'minneapolis', 1, 1, 1);
-- 9. The bank is losing money in Miami and Phoenix and needs to unload low transaction customers: Delete users that reside in miami OR phoenix and have completed fewer than 5 transactions.
SELECT * FROM syntax_practice WHERE city IN ('miami', 'phoenix') AND transactions_completed < 5;

--CREATE - INSERT --
INSERT INTO users (username, active) VALUES ('callie33', TRUE);
INSERT INTO users (username, active) VALUES ('koolaide', TRUE);
INSERT INTO users (username, active) VALUES ('meatfarmer', TRUE);
INSERT INTO users (username, active) VALUES ('carpediem', FALSE);

-- READ - SELECT --
SELECT * FROM users;
SELECT * FROM users WHERE active=TRUE;
SELECT username FROM users;
SELECT * FROM users ORDER BY username DESC;
SELECT * FROM users LIMIT 2;
SELECT * FROM users WHERE username LIKE 'm%';

SELECT COUNT(*) FROM users;
SELECT MAX(id) FROM users;


-- UPDATE --
UPDATE users SET active='FALSE' WHERE username='carpediem';
UPDATE users SET username='CALLIE' WHERE username='callie33';

-- DELETE --
DELETE FROM users WHERE id=1;

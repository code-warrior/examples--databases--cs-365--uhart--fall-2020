-- Selectd all SSL entries in our database.
SELECT sslayer FROM web_site;

-- Select all domains in our database.
SELECT domain FROM web_site;

-- Select all domains using SSL.
SELECT sslayer, domain FROM web_site;

-- Select SSLs in a pretty way.
SELECT IF(sslayer = 1, "https", "http") AS "SSL" FROM web_site;

-- Select domains in a pretty way.
SELECT CONCAT("www.", domain) AS "URL" FROM web_site;

-- Now, put it all together.
SELECT IF(sslayer = 1, "https", "http") AS "SSL", CONCAT("www.", domain) AS "URL" FROM web_site;

-- --

-- For this insertion, let’s use a transaction that will only be
-- committed should the entire set of commands execute successfully.
-- And, let’s also use some variables.
SET @url = "hartford.edu";
SET @user_id = 2;
SET @account_id = 2;
-- SET block_encryption_mode = 'aes-256-cbc';
-- SET @init_vector = RANDOM_BYTES(16);
-- SET @key_str = UNHEX(SHA2('my secret passphrase', 512));

START TRANSACTION;
   INSERT INTO web_site VALUES(@url, 'The University of Hartford', true);
   INSERT INTO user VALUES (@url, @user_id, 'Harry', 'Hawke', 'harry_hawke', 'harry@hartford.edu', AES_ENCRYPT('Harry’s passphrase', @key_str, @init_vector));
   INSERT INTO account VALUES (@url, @user_id, @account_id, NOW());
   INSERT INTO comment VALUES (@url, @user_id, @account_id, 'UHart rocks!');
COMMIT;

-- Select all fields in the user table associated with our newly-inserted user_id 2.
SELECT * from user WHERE user_id = 2;

-- Select all fields in the user table associated with user_id 1.
SELECT * from user WHERE user_id = 1;

-- Select the plaintext password, as noted inside the AES_DECRYPT function
SELECT AES_DECRYPT(password, @key_str, @init_vector) AS 'Unciphered' FROM user WHERE user_id = 2;

-- Get the password for PETA’s web site.
SELECT domain, AES_DECRYPT(password, @key_str, @init_vector) AS 'Unciphered' FROM user WHERE user_id = 1 AND domain = 'peta.org';

-- Get the SSL too
SELECT web_site.sslayer, user.domain, AES_DECRYPT(password, @key_str, @init_vector) AS 'Unciphered'
FROM web_site INNER JOIN user
WHERE user_id = 1 AND user.domain = 'peta.org' AND web_site.domain = user.domain;

-- Select all the info associated with user_id 2
SELECT IF(web_site.sslayer = 2, "https", "http") AS "SSL", CONCAT("www.", web_site.domain) AS "URL", web_site.name AS "NAME", user.user_id AS "USER ID", user.first_name AS "FIRST NAME", user.last_name AS "LAST NAME", user.username AS "USERNAME", user.email AS "EMAIL", AES_DECRYPT(password, @key_str, @init_vector) AS "UNCIPHERED"
FROM web_site INNER JOIN user
WHERE user.user_id = 2 AND web_site.domain = user.domain;

-- Update the password for user with user_id = 2;
UPDATE user
SET password = AES_ENCRYPT('Harry’s New Passphrase', @key_str, @init_vector)
WHERE user_id = 2;

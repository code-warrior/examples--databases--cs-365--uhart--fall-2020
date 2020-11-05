INSERT INTO user
VALUES (@weanimals_url, 1, @first_name, @last_name, 'jm', 'doug@mouse.com', AES_ENCRYPT('fr@nk3nst31n', @key_str, @init_vector));

INSERT INTO user
VALUES (@peta_url, 1, @first_name, @last_name, 'jm', 'doug@mouse.com', AES_ENCRYPT('w3@11f331p@1n', @key_str, @init_vector));

INSERT INTO user
VALUES (@intl_center_for_journalists_url, 1, @first_name, @last_name, 'jm', 'doug@mouse.com', AES_ENCRYPT('@ndju571c34@11', @key_str, @init_vector));

INSERT INTO user
VALUES (@human_rights_watch_url, 1, @first_name, @last_name, 'jm', 'doug@mouse.com', AES_ENCRYPT('efefef', @key_str, @init_vector));

INSERT INTO user
VALUES (@mercy_for_animals_url, 1, @first_name, @last_name, 'jm', 'doug@mouse.com', AES_ENCRYPT('bababa', @key_str, @init_vector));

INSERT INTO user
VALUES (@ecma_url, 1, @first_name, @last_name, 'jm', 'doug@mouse.com', AES_ENCRYPT('cdcdcd', @key_str, @init_vector));

INSERT INTO user
VALUES ('mysql.com', 1, @first_name, @last_name, 'jm', 'doug@mouse.com', AES_ENCRYPT('abcde', @key_str, @init_vector));

INSERT INTO user
VALUES ('json.org', 1, @first_name, @last_name, 'jm', 'doug@mouse.com', AES_ENCRYPT('edcba', @key_str, @init_vector));

INSERT INTO user
VALUES ('slashdot.org', 1, @first_name, @last_name, 'jm', 'doug@mouse.com', AES_ENCRYPT('aaaaa', @key_str, @init_vector));

INSERT INTO user
VALUES (@techcrunch_url, 1, @first_name, @last_name, 'jm', 'doug@mouse.com', AES_ENCRYPT('aaaaa', @key_str, @init_vector));

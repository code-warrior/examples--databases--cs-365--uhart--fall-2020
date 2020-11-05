-- Over-ride the default (and implied)
-- “block_encryption_mode=aes-128-ecb”, which does not require an
-- initialization vector. However, “aes-256-cbc” does
SET block_encryption_mode = 'aes-256-cbc';

-- The initialization vector must be 16 bytes. Read more at
-- https://dev.mysql.com/doc/refman/5.7/en/encryption-functions.html#function_random-bytes
SET @init_vector = RANDOM_BYTES(16);

# https://dev.mysql.com/doc/refman/8.0/en/encryption-functions.html
-- “my secret passphrase” is the key to unlock all this stuff.
SET @key_str = UNHEX(SHA2('my secret passphrase', 512));

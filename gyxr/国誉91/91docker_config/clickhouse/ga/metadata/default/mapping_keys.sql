CREATE DICTIONARY mapping_keys
(
    `code` String, 
    `id` UInt64
)
PRIMARY KEY code
SOURCE(MYSQL(PORT 33063 USER 'root' PASSWORD '5HkC2OLp' REPLICA (HOST '10.8.1.91' PRIORITY 1) DB 'db_data_admin' TABLE 'mapping_keys' INVALIDATE_QUERY 'SQL_QUERY'))
LIFETIME(MIN 0 MAX 86400)
LAYOUT(COMPLEX_KEY_HASHED())

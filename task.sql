# Export the MySQL data into a CSV file
mysql -u username -p -e "SELECT * FROM your_table" your_database > your_table.csv


mysqldump -u username -p --no-tablespaces your_database > database_dump.sql


-- Example: Create a table in PostgreSQL based on MySQL schema
CREATE TABLE your_table (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    created_at TIMESTAMP
);


# Use the COPY command to load the CSV into PostgreSQL
COPY your_table (id, name, created_at)
FROM '/path_to_your_file/your_table.csv'
DELIMITER ','
CSV HEADER;


psql -U username -d target_database -f database_dump.sql


-- In MySQL
SELECT COUNT(*) FROM your_table;

-- In PostgreSQL
SELECT COUNT(*) FROM your_table;


-- In MySQL
SELECT * FROM your_table LIMIT 5;

-- In PostgreSQL
SELECT * FROM your_table LIMIT 5;


-- Check for invalid rows
SELECT * FROM your_table WHERE your_column IS NULL;



CREATE TABLE employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(255),
    second_name VARCHAR(255),
    email_id VARCHAR(255)
);

INSERT INTO employees (first_name, second_name, email_id) 
VALUES ('Stanislav', 'Andreev', 'stanislavandreev@deusops.ru'); 
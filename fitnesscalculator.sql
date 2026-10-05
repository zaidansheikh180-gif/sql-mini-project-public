-- Create database
CREATE DATABASE fitness_db;

-- Use database
USE fitness_db;

-- Create table
CREATE TABLE fitness (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    weight_kg DOUBLE,
    calories_consumed DOUBLE,
    protein_consumed DOUBLE
);

-- Insert user data
INSERT INTO fitness
(name, weight_kg, calories_consumed, protein_consumed)
VALUES
('Shayan', 70, 2000, 100);

-- Display fitness report
SELECT
    name,
    weight_kg,
    calories_consumed,
    protein_consumed,

    weight_kg * 30 AS recommended_calories,

    weight_kg * 1.6 AS recommended_protein,

    CASE
        WHEN calories_consumed >= weight_kg * 30
        THEN 'Goal reached!'
        ELSE 'You need more calories.'
    END AS calorie_status,

    CASE
        WHEN protein_consumed >= weight_kg * 1.6
        THEN 'Goal reached!'
        ELSE 'You need more protein.'
    END AS protein_status

FROM fitness;

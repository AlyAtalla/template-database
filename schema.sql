-- schema.sql

CREATE TABLE animals (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    date_of_birth DATE,
    escape_attempts INT,
    neutered BOOLEAN,
    weight_kg DECIMAL(5, 2)
);

-- Add the 'species' column
ALTER TABLE animals ADD COLUMN species VARCHAR(255);

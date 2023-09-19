-- Create the 'owners' table
CREATE TABLE owners (
    id SERIAL PRIMARY KEY,
    full_name VARCHAR(255),
    age INT
);

-- Create the 'species' table
CREATE TABLE species (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255)
);

-- Modify the 'animals' table
ALTER TABLE animals
    ADD COLUMN species_id INT,
    ADD COLUMN owner_id INT,
    ADD CONSTRAINT fk_species FOREIGN KEY (species_id) REFERENCES species(id),
    ADD CONSTRAINT fk_owner FOREIGN KEY (owner_id) REFERENCES owners(id);

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

-- Create the 'animals' table
CREATE TABLE animals (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    date_of_birth DATE,
    escape_attempts INT,
    neutered BOOLEAN,
    weight_kg DECIMAL(5, 2),
    species_id INT,
    owner_id INT,
    FOREIGN KEY (species_id) REFERENCES species(id),
    FOREIGN KEY (owner_id) REFERENCES owners(id)
);

-- Create the 'vets' table
CREATE TABLE vets (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    age INT,
    date_of_graduation DATE
);

-- Create the 'specializations' table (for the many-to-many relationship between species and vets)
CREATE TABLE specializations (
    id SERIAL PRIMARY KEY,
    vet_id INT,
    species_name VARCHAR(255),
    FOREIGN KEY (vet_id) REFERENCES vets(id)
);

-- Create the 'visits' table (for the many-to-many relationship between animals and vets)
CREATE TABLE visits (
    id SERIAL PRIMARY KEY,
    animal_id INT,
    vet_id INT,
    visit_date DATE,
    FOREIGN KEY (animal_id) REFERENCES animals(id),
    FOREIGN KEY (vet_id) REFERENCES vets(id)
);

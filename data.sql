-- Insert data into the 'owners' table
INSERT INTO owners (full_name, age) VALUES
    ('Sam Smith', 34),
    ('Jennifer Orwell', 19),
    ('Bob', 45),
    ('Melody Pond', 77),
    ('Dean Winchester', 14),
    ('Jodie Whittaker', 38);

-- Insert data into the 'species' table
INSERT INTO species (name) VALUES
    ('Pokemon'),
    ('Digimon');

-- Insert data into the 'vets' table
INSERT INTO vets (name, age, date_of_graduation) VALUES
    ('Vet William Tatcher', 45, '2000-04-23'),
    ('Vet Maisy Smith', 26, '2019-01-17'),
    ('Vet Stephanie Mendez', 64, '1981-05-04'),
    ('Vet Jack Harkness', 38, '2008-06-08');

-- Insert data into the 'specializations' table
INSERT INTO specializations (vet_id, species_name) VALUES
    (1, 'Pokemon'),
    (3, 'Digimon'),
    (3, 'Pokemon'),
    (4, 'Digimon');

-- Insert data into the 'visits' table
-- Agumon visited William Tatcher on May 24th, 2020
INSERT INTO visits (vet_id, animal_id, visit_date)
VALUES (
    (SELECT id FROM vets WHERE name = 'Vet William Tatcher'),
    (SELECT id FROM animals WHERE name = 'Agumon'),
    '2020-05-24'
);

-- Agumon visited Stephanie Mendez on Jul 22th, 2020
INSERT INTO visits (vet_id, animal_id, visit_date)
VALUES (
    (SELECT id FROM vets WHERE name = 'Vet Stephanie Mendez'),
    (SELECT id FROM animals WHERE name = 'Agumon'),
    '2020-07-22'
);

-- Gabumon visited Jack Harkness on Feb 2nd, 2021
INSERT INTO visits (vet_id, animal_id, visit_date)
VALUES (
    (SELECT id FROM vets WHERE name = 'Vet Jack Harkness'),
    (SELECT id FROM animals WHERE name = 'Gabumon'),
    '2021-02-02'
);

-- Pikachu visited Maisy Smith on Jan 5th, 2020
INSERT INTO visits (vet_id, animal_id, visit_date)
VALUES (
    (SELECT id FROM vets WHERE name = 'Vet Maisy Smith'),
    (SELECT id FROM animals WHERE name = 'Pikachu'),
    '2020-01-05'
);

-- Pikachu visited Maisy Smith on Mar 8th, 2020
INSERT INTO visits (vet_id, animal_id, visit_date)
VALUES (
    (SELECT id FROM vets WHERE name = 'Vet Maisy Smith'),
    (SELECT id FROM animals WHERE name = 'Pikachu'),
    '2020-03-08'
);

-- Pikachu visited Maisy Smith on May 14th, 2020
INSERT INTO visits (vet_id, animal_id, visit_date)
VALUES (
    (SELECT id FROM vets WHERE name = 'Vet Maisy Smith'),
    (SELECT id FROM animals WHERE name = 'Pikachu'),
    '2020-05-14'
);

-- Devimon visited Stephanie Mendez on May 4th, 2021
INSERT INTO visits (vet_id, animal_id, visit_date)
VALUES (
    (SELECT id FROM vets WHERE name = 'Vet Stephanie Mendez'),
    (SELECT id FROM animals WHERE name = 'Devimon'),
    '2021-05-04'
);

-- Charmander visited Jack Harkness on Feb 24th, 2021
INSERT INTO visits (vet_id, animal_id, visit_date)
VALUES (
    (SELECT id FROM vets WHERE name = 'Vet Jack Harkness'),
    (SELECT id FROM animals WHERE name = 'Charmander'),
    '2021-02-24'
);

-- Plantmon visited Maisy Smith on Dec 21st, 2019
INSERT INTO visits (vet_id, animal_id, visit_date)
VALUES (
    (SELECT id FROM vets WHERE name = 'Vet Maisy Smith'),
    (SELECT id FROM animals WHERE name = 'Plantmon'),
    '2019-12-21'
);

-- Plantmon visited William Tatcher on Aug 10th, 2020
INSERT INTO visits (vet_id, animal_id, visit_date)
VALUES (
    (SELECT id FROM vets WHERE name = 'Vet William Tatcher'),
    (SELECT id FROM animals WHERE name = 'Plantmon'),
    '2020-08-10'
);

-- Plantmon visited Maisy Smith on Apr 7th, 2021
INSERT INTO visits (vet_id, animal_id, visit_date)
VALUES (
    (SELECT id FROM vets WHERE name = 'Vet Maisy Smith'),
    (SELECT id FROM animals WHERE name = 'Plantmon'),
    '2021-04-07'
);

-- Squirtle visited Stephanie Mendez on Sep 29th, 2019
INSERT INTO visits (vet_id, animal_id, visit_date)
VALUES (
    (SELECT id FROM vets WHERE name = 'Vet Stephanie Mendez'),
    (SELECT id FROM animals WHERE name = 'Squirtle'),
    '2019-09-29'
);

-- Angemon visited Jack Harkness on Oct 3rd, 2020
INSERT INTO visits (vet_id, animal_id, visit_date)
VALUES (
    (SELECT id FROM vets WHERE name = 'Vet Jack Harkness'),
    (SELECT id FROM animals WHERE name = 'Angemon'),
    '2020-10-03'
);

-- Angemon visited Jack Harkness on Nov 4th, 2020
INSERT INTO visits (vet_id, animal_id, visit_date)
VALUES (
    (SELECT id FROM vets WHERE name = 'Vet Jack Harkness'),
    (SELECT id FROM animals WHERE name = 'Angemon'),
    '2020-11-04'
);

-- Boarmon visited Maisy Smith on Jan 24th, 2019
INSERT INTO visits (vet_id, animal_id, visit_date)
VALUES (
    (SELECT id FROM vets WHERE name = 'Vet Maisy Smith'),
    (SELECT id FROM animals WHERE name = 'Boarmon'),
    '2019-01-24'
);

-- Boarmon visited Maisy Smith on May 15th, 2019
INSERT INTO visits (vet_id, animal_id, visit_date)
VALUES (
    (SELECT id FROM vets WHERE name = 'Vet Maisy Smith'),
    (SELECT id FROM animals WHERE name = 'Boarmon'),
    '2019-05-15'
);

-- Boarmon visited Maisy Smith on Feb 27th, 2020
INSERT INTO visits (vet_id, animal_id, visit_date)
VALUES (
    (SELECT id FROM vets WHERE name = 'Vet Maisy Smith'),
    (SELECT id FROM animals WHERE name = 'Boarmon'),
    '2020-02-27'
);

-- Boarmon visited Maisy Smith on Aug 3rd, 2020
INSERT INTO visits (vet_id, animal_id, visit_date)
VALUES (
    (SELECT id FROM vets WHERE name = 'Vet Maisy Smith'),
    (SELECT id FROM animals WHERE name = 'Boarmon'),
    '2020-08-03'
);

-- Blossom visited Stephanie Mendez on May 24th, 2020
INSERT INTO visits (vet_id, animal_id, visit_date)
VALUES (
    (SELECT id FROM vets WHERE name = 'Vet Stephanie Mendez'),
    (SELECT id FROM animals WHERE name = 'Blossom'),
    '2020-05-24'
);

-- Blossom visited William Tatcher on Jan 11th, 2021
INSERT INTO visits (vet_id, animal_id, visit_date)
VALUES (
    (SELECT id FROM vets WHERE name = 'Vet William Tatcher'),
    (SELECT id FROM animals WHERE name = 'Blossom'),
    '2021-01-11'
);

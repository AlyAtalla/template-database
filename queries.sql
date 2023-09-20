-- Who was the last animal seen by William Tatcher?
SELECT a.name AS last_animal_seen
FROM visits v
JOIN vets w ON v.vet_id = w.id
JOIN animals a ON v.animal_id = a.id
WHERE w.name = 'Vet William Tatcher'
ORDER BY v.visit_date DESC
LIMIT 1;

-- How many different animals did Stephanie Mendez see?
SELECT COUNT(DISTINCT v.animal_id) AS number_of_animals_seen
FROM visits v
JOIN vets s ON v.vet_id = s.id
WHERE s.name = 'Vet Stephanie Mendez';

-- List all vets and their specialties, including vets with no specialties.
SELECT v.name AS vet_name, COALESCE(s.species_name, 'No specialty') AS specialty
FROM vets v
LEFT JOIN specializations s ON v.id = s.vet_id;

-- List all animals that visited Stephanie Mendez between April 1st and August 30th, 2020.
SELECT a.name AS animal_name
FROM visits v
JOIN vets s ON v.vet_id = s.id
JOIN animals a ON v.animal_id = a.id
WHERE s.name = 'Vet Stephanie Mendez'
    AND v.visit_date >= '2020-04-01'
    AND v.visit_date <= '2020-08-30';

-- What animal has the most visits to vets?
SELECT a.name AS most_visited_animal
FROM (SELECT animal_id, COUNT(*) AS visit_count
      FROM visits
      GROUP BY animal_id
      ORDER BY visit_count DESC
      LIMIT 1) AS max_visits
JOIN animals a ON max_visits.animal_id = a.id;

-- Who was Maisy Smith's first visit?
SELECT m.name AS first_visit_vet
FROM visits v
JOIN vets m ON v.vet_id = m.id
WHERE m.name = 'Vet Maisy Smith'
ORDER BY v.visit_date
LIMIT 1;

-- Details for the most recent visit: animal information, vet information, and date of visit.
SELECT a.name AS animal_name, ve.name AS vet_name, v.visit_date AS date_of_visit
FROM visits v
JOIN animals a ON v.animal_id = a.id
JOIN vets ve ON v.vet_id = ve.id
WHERE v.visit_date = (SELECT MAX(visit_date) FROM visits);

-- How many visits were with a vet that did not specialize in that animal's species?
SELECT COUNT(*) AS num_visits
FROM visits v
JOIN vets ve ON v.vet_id = ve.id
LEFT JOIN specializations s ON ve.id = s.vet_id
JOIN animals a ON v.animal_id = a.id
WHERE s.species_name IS NULL OR s.species_name <> (SELECT name FROM species WHERE id = a.species_id);

-- What specialty should Vet Maisy Smith consider getting? Look for the species she gets the most.
WITH VetMaisyVisits AS (
    SELECT v.vet_id, a.species_id, COUNT(*) AS visit_count
    FROM visits v
    JOIN animals a ON v.animal_id = a.id
    JOIN vets vet ON v.vet_id = vet.id
    WHERE vet.name = 'Vet Maisy Smith'
    GROUP BY v.vet_id, a.species_id
    ORDER BY visit_count DESC
    LIMIT 1
)
SELECT vms.species_id AS recommended_specialty_id, s.name AS recommended_specialty
FROM VetMaisyVisits vms
JOIN species s ON vms.species_id = s.id;

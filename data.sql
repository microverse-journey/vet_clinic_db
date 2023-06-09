/* Populate database with sample data. */

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES ('Agumon', 'Feb 3, 2020', 0, true, 10.23);
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES ('Gabumon', 'Nov 15, 2018',2 ,true, 8);
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES ('Pikachu', 'Jan 7, 2021',1 ,false, 15.04);
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES ('Devimon', 'May 12, 2017',5 ,true, 11);

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES ('Charmander', 'Feb 8, 2020',0 ,false, -11);
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES ('Plantmon', 'Nov 15, 2021',2 ,true, -5.7);
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES ('Squirtle', 'Apr 2, 1993',3 ,false, -12.13);
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES ('Angemon', 'Jun 12, 2005',1 ,true, -45);
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES ('Boarmon', 'Jun 7, 2005',7 ,true, 20.4);
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES ('Blossom', 'Oct 13, 1998',3 ,true, 17);
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES ('Ditto', 'May 14, 2022',4 ,true, 22);

-- insert data into the owners table
INSERT INTO owners (full_name, age) VALUES ('Sam Smith', 34);
INSERT INTO owners (full_name, age) VALUES ('Jennifer Orwell', 19);
INSERT INTO owners (full_name, age) VALUES ('Bob', 45);
INSERT INTO owners (full_name, age) VALUES ('Melody Pond', 77);
INSERT INTO owners (full_name, age) VALUES ('Dean Winchester', 14);
INSERT INTO owners (full_name, age) VALUES ('Jodie Whittaker', 38);

-- insert data into the species table
INSERT INTO species (name) VALUES ('Pokemon');
INSERT INTO species (name) VALUES ('Digimon');

-- update inserted animals so it includes the species_id value
UPDATE animals SET species_id = 2 WHERE name LIKE '%mon';
UPDATE animals SET species_id = 1 WHERE species_id IS NULL;

-- insert data into the vets table
INSERT INTO vets (name, age, date_of_graduation) 
VALUES ('William Tatcher', 45, 'Apr 23, 2000'),
('Maisy Smith', 26, 'Jan 17, 2019'),
('Stephanie Mendez', 64, 'May 4, 1981'),
('Jack Harkness', 38, 'Jun 8, 2008');

-- insert data into the specializations table
INSERT INTO specializations (vets, species) VALUES (1, 1),
(3, 1),
(3, 2),
(4, 2);

-- insert data into the visits table
INSERT INTO visits (animals, vets, date_of_visit) VALUES (1, 1, 'May 24, 2020'),
(1,3, 'Jul 22, 2020'),
(2,4, 'Feb 2, 2021'),
(3,2, 'Jan 5, 2020'),
(3,2, 'Mar 8, 2020'),
(3,2, 'May 14, 2020'),
(4,3, 'May 4, 2021'),
(5,4, 'Feb 24, 2021'),
(6,2, 'Dec 21, 2019'),
(6,1, 'Aug 10, 2020'),
(6,2, 'Apr 7, 2021'),
(7,4, 'Sep 29, 2019'),
(8,3, 'Oct 3, 2020'),
(8,3, 'Nov 4, 2020'),
(9,2, 'Jan 24, 2019'),
(9,2, 'May 15, 2019'),
(9,2, 'Feb 27, 2020'),
(9,2, 'Aug 3, 2020'),
(10,3, 'May 24, 2020'),
(10,1, 'Jan 11, 2021');

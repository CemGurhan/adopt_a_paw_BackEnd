--INSERT INTO species_table (species) VALUES ('Dog');
--INSERT INTO species_table (species) VALUES ('Cat');
--INSERT INTO species_table (species) VALUES ('Ferret');
--INSERT INTO species_table (species) VALUES ('Rabbit');
--INSERT INTO species_table (species) VALUES ('Guineapig');




--INSERT INTO application_types (application_status) VALUES('PENDING');
--INSERT INTO application_types (application_status) VALUES('ACCEPTED');
--INSERT INTO application_types (application_status) VALUES('REJECTED');


--INSERT INTO sex_enums (sex) VALUES ('Male');
--INSERT INTO sex_enums (sex) VALUES ('Female');
--INSERT INTO sex_enums (sex) VALUES ('Unknown');





INSERT INTO customers (age,first_name,last_name,location, previous_adoptions) VALUES (23,'Cem','Gurhan','London',true);

--INSERT INTO customer_preferred_species (customer_id, species_id) VALUES (1,1);

--INSERT INTO customer_preferences_mapper (species_id,customer_id) VALUES (1,1);
--INSERT INTO customer_preferences_mapper (species_id,customer_id) VALUES (2,1);

--INSERT INTO organisations (name) VALUES ('RSPCA');

--INSERT INTO animals (age,location,name,organisation_id,sex,species_id)
--            VALUES (11,'London','Dodo1',1,1,2);

--INSERT INTO applications (application_status,animal_id,customer_id) VALUES (1,1,1);




INSERT INTO customers (age,first_name,last_name,location, previous_adoptions) VALUES (26,'Kieran','Sandford','Manchester', True);
INSERT INTO customers (age,first_name,last_name,location, previous_adoptions) VALUES (24,'Edward','Todd','St Albans', False);
INSERT INTO customers (age,first_name,last_name,location, previous_adoptions) VALUES (25,'Becca','Bartholomew','London', False);
INSERT INTO customers (age,first_name,last_name,location, previous_adoptions) VALUES (27,'Lewis','Broadhurst','Birmingham', True);

--INSERT INTO customer_preferred_species (species, customer_id) VALUES ('Dog',1);


--INSERT INTO customer_preferences_mapper (species,customer_id) VALUES ('Dog',1);
--INSERT INTO customer_preferences_mapper (species_id,customer_id) VALUES (2,1);
--INSERT INTO customer_preferences_mapper (species_id,customer_id) VALUES (2,2);
--INSERT INTO customer_preferences_mapper (species_id,customer_id) VALUES (1,3);
--INSERT INTO customer_preferences_mapper (species_id,customer_id) VALUES (2,3);
--INSERT INTO customer_preferences_mapper (species_id,customer_id) VALUES (3,3);
--INSERT INTO customer_preferences_mapper (species_id,customer_id) VALUES (1,3);
--INSERT INTO customer_preferences_mapper (species_id,customer_id) VALUES (5,4);
--INSERT INTO customer_preferences_mapper (species_id,customer_id) VALUES (4,4);
--INSERT INTO customer_preferences_mapper (species_id,customer_id) VALUES (3,5);


INSERT INTO organisations (name) VALUES ('RSPCA');
INSERT INTO organisations (name) VALUES ('Battersea');
INSERT INTO organisations (name) VALUES ('Dogs Trust');
INSERT INTO organisations (name) VALUES ('Blue Cross');
INSERT INTO organisations (name) VALUES ('National Animal Welfare Trust');
INSERT INTO organisations (name) VALUES ('Woodgreen');



<<<<<<< HEAD
INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Tiny Tim', 'Chihuahua', 4, 'Male', 'Hillingdon', 'Available', 1, 'Dog', 'https://www.rspca.org.uk/GenericImage/CallGenericImage?source=petSearch&size=large&imageId=328739');
=======
INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Tiny Tim', 'Chihuahua', 4, 0, 'Hillingdon', 0, 1, 'Dog', 'https://www.rspca.org.uk/findapet/details/-/Animal/TINY_TIM_/ref/BSA2112441/rehome');
>>>>>>> ac66f1b4871ac7e743970a05bd7ca8273de97b83
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Crumpet', 'Shih Tzu', 5, 1, 'Potters Bar', 1, 1);
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Flame', 'Staffordshire Bull Terrier', 12, 1, 'Coventry', 1, 1);
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Coco', 'French Bulldog', 1, 2, 'Southport', 1, 1);
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Pops', 'German Shepherd', 6, 1, 'Aylesbury', 1, 1);
--
--
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Mr Lover Lover', 'Domestic Shorthair', 4, 1, 'Northamptonshire', 1, 2);
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Snowdrop', 'Domestic Shorthair', 8, 2, 'Northamptonshire', 1, 2);
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Fat Cat', 'Domestic Shorthair', 4, 2, 'Bedfordshire', 1, 2);
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Sonny', 'Domestic Semi', 13, 1, 'Potters Bar', 1, 2);
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Biggles', 'Domestic Shorthair', 16, 1, 'Cheltenham', 1, 2);
--
--
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Spaghetti', 'Albino', 1, 1, 'Conwy', 1, 3);
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Rascal', 'Polecat', 1, 1, 'Conwy', 1, 3);
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Bandit', 'Polecat', 1, 1, 'Conwy', 1, 3);
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Mischief', 'Albino', 1, 1, 'Conwy', 1, 3);
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Sneaky Pete', 'Fitch', 1, 1, 'Conwy', 1, 3);
--
--
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Champ', 'Lop', 1, 1, 'Accrington', 1, 4);
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Tammy', 'Domestic', 1, 2, 'Northumberland', 1, 4);
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Russel', 'Rex', 1, 1, 'Wakefield', 1, 4);
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Thelma', 'Lionhead', 1, 2, 'Wimblington', 1, 4);
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Pablo', 'Crossbreed', 1, 1, 'Blackpool', 1, 4);
--
--
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Kitkat Lady', 'Domestic', 1, 2, 'Manchester', 1, 5);
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Antonio', 'Domestic', 1, 1, 'Stalmine', 1, 5);
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Almond', 'Domestic', 2, 1, 'Conwy', 1, 5);
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Pumpkin Jr', 'Domestic', 1, 2, 'Isle of Wight', 1, 5);
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Hercules', 'Domestic', 2, 1, 'Birchington', 1, 5);
--
--
--
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Bella', 'Terrier/Jack Russell', 2, 2, 'Brands Hatch', 2, 1);
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Bruno', 'Bulldog', 4, 1, 'Battersea', 2, 1);
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Cooper', 'Siberian Husky', 1, 1, 'Old Windsor', 2, 1);
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Bow', 'Shar-pei', 8, 2, 'Battersea', 2, 1);
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Dave', 'Tibetan Mastiff', 5, 1, 'Brands Hatch', 2, 1);
--
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Aubrey', 'Domestic Shorthair', 1, 2, 'Old Windsor', 2, 2);
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Messi', 'Domestic Shorthair', 5, 1, 'Battersea', 2, 2);
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Ariana', 'Domestic Shorthair', 1, 2, 'Old Windsor', 2, 2);
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Oyster', 'Domestic Shorthair', 1, 2, 'Battersea', 2, 2);
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Smurf', 'Domestic Longhair', 7, 1, 'Communities Guildford', 2, 2);
--
--
--
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Alfie', 'Yorkshire Terrier', 8, 1, 'Worcestershire', 3, 1);
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Bambi', 'Lurcher', 3, 1, 'Manchester', 3, 1);
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Captain Oats', 'Yorkshire Terrier', 8, 1, 'Basildon', 3, 1);
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Tofu', 'Pomeranian', 6, 1, 'Cardiff', 3, 1);
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Thor', 'Dogue De Bordeaux', 3, 1, 'Liverpool', 3, 1);
--
--
--
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Nala', 'Siberian Husky', 9, 2, 'Hampshire', True, 4, 1);
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Teddy', 'Maltese', 1, 1, 'Bromsgrove', 4, 1);
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Stanley', 'Jack Russell Terrier', 8, 1, 'Devon', True, 4, 1);
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Dustin', 'Australian Kelpie', 1, 1, 'Newport', True, 4, 1);
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Apollo', 'Weimaraner', 2, 1, 'Yorkshire', 4, 1);
--
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Tiger', 'Bengal', 2, 1, 'Bromsgrove', True, 4, 2);
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Kimchi', 'Domestic Shorthair', 3, 1, 'Oxfordshire', True, 4, 2);
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Prince', 'Domestic Shorthair', 4, 1, 'Oxfordshire', 4, 2);
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Haribo', 'Domestic Shorthair', 13, 2, 'Greater Manchester', True, 4, 2);
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Pebble', 'Domestic Shorthair', 6, 2, 'Sheffield', True, 4, 2);
--
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Peter', 'English Spot', 2, 1, 'Sheffield', True, 4, 4);
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Bubblegum', 'Lionhead', 1, 1, 'Sheffield', True, 4, 4);
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Oreo', 'Lionhead', 2, 2, 'Yorkshire', 4, 4);
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Howie', 'English Spot', 1, 1, 'Oxfordshire', 4, 4);
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Coco', 'Mini Lop', 3, 2, 'Hampshire', 4, 4);
--
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Peanut', 'Domestic', 1, 1, 'Suffolk', True, 4, 5);
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Fudge', 'Domestic', 1, 1, 'Suffolk', True, 4, 5);
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Thyme', 'Domestic', 2, 1, 'Burford', 4, 5);
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Mabel', 'Domestic', 2, 2, 'Burford', True, 4, 5);
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Rupert', 'Domestic', 1, 1, 'Sheffield', 4, 5);
--
--
--
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Bee', 'Bassett Hound', 4, 1, 'Berkshire', 5, 1);
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Luna', 'Crossbreed', 1, 2, 'Berkshire', True, 5, 1);
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Stan', 'Springer Spaniel', 10, 1, 'Cornwall', True, 5, 1);
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Shadow', 'Shar-Pei', 3, 1, 'Essex', 5, 1);
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Kobe', 'French Bulldog/Pug', 1, 1, 'Berkshire', 5, 1);
--
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Freddie', 'Domestic Shorthair', 1, 1, 'Hertfordshire', 5, 2);
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Mimi', 'Domestic Shorthair', 5, 2, 'Hertfordshire', 5, 2);
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Dizzy', 'Domestic Shorthair', 15, 1, 'Berkshire', 5, 2);
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Spirit', 'Domestic Shorthair', 2, 2, 'Cornwall', 5, 2);
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Harold', 'Domestic Shorthair', 7, 1, 'Essex', 5, 2);
--
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Milo', 'Crossbreed', 4, 1, 'Bedfordshire', 5, 4);
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Rio', 'Lop', 1, 1, 'Bedfordshire', 5, 4);
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Bonnie', 'English Lop', 1, 2, 'Berkshire', 5, 4);
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Skye', 'Lop', 1, 1, 'Hertfordshire', 5, 4);
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Olive', 'Lop', 4, 2, 'Bedfordshire', True, 5, 4);
--
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Wilbur', 'Domestic', 1, 1, 'Hertfordshire', 5, 5);
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Winston', 'Domestic', 1, 1, 'Hertfordshire', 5, 5);
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Bodger', 'Domestic', 1, 1, 'Hertfordshire', 5, 5);
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Crunchie', 'Domestic', 2, 1, 'Hertfordshire', 5, 5);
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Bertie', 'Domestic', 2, 1, 'Hertfordshire', True, 5, 5);
--
--
--
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Barry', 'Greyhound', 7, 1, 'Cambridge', True, 6, 1);
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Archie', 'Lurcher', 2, 1, 'Cambridge', 6, 1);
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Mally', 'Crossbreed', 5, 1, 'Cambridge', 6, 1);
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Memphis', 'Staffordshire Bull Terrier', 2, 1, 'Cambridge', 6, 1);
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Tokyo', 'Crossbreed', 2, 2, 'Cambridge', 6, 1);
--
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Cosmo', 'Domestic Shorthair', 3, 2, 'Cambridge', 6, 2);
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Marble', 'Domestic Longhair', 1, 2, 'Cambridge', True, 6, 2);
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Mr Bojangles', 'Domestic Shorthair', 3, 1, 'Cambridge', 6, 2);
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Pickles', 'Domestic Shorthair', 5, 2, 'Cambridge', 6, 2);
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Winter', 'Domestic Shorthair', 1, 1, 'Cambridge', 6, 2);
--
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Norman', 'Albino', 1, 1, 'Cambridge', 6, 3);
--
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Oat, Almond & Soya', 'Mini Lop', 1, 1, 'Cambridge', 6, 4);
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Hazel', 'Crossbreed', 5, 2, 'Cambridge', 6, 4);
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Space & Raider', 'Crossbreed', 1, 2, 'Cambridge', 6, 4);
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Wesley & Winnie', 'Mini Lop', 2, 1, 'Cambridge', 6, 4);
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Benny & Jellybean', 'Crossbreed', 1, 1, 'Cambridge', 6, 4);
--
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Daisy', 'Domestic', 4, 2, 'Cambridge', True, 6, 5);
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Fluffy & Caramel', 'Domestic', 1, 2, 'Cambridge', 6, 5);
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Monty & Morty', 'Domestic', 5, 1, 'Cambridge', 6, 5);
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Shuffle & Sprinkles', 'Domestic', 1, 2, 'Cambridge', 6, 5);
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Wilbur & Hew', 'Domestic', 4, 1, 'Cambridge', 6, 5);


--INSERT INTO applications (application_status, animal_id, customer_id) VALUES (1,1,4);
--INSERT INTO applications (application_status, animal_id, customer_id) VALUES (0,13,5);
--INSERT INTO applications (application_status, animal_id, customer_id) VALUES (0,14,1);
--INSERT INTO applications (application_status, animal_id, customer_id) VALUES (1,4,3);
--INSERT INTO applications (application_status, animal_id, customer_id) VALUES (1,6,4);
--INSERT INTO applications (application_status, animal_id, customer_id) VALUES (1,1,2);
--INSERT INTO applications (application_status, animal_id, customer_id) VALUES (2,1,4);
--INSERT INTO applications (application_status, animal_id, customer_id) VALUES (2,1,5);



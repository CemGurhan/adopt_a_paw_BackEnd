INSERT INTO animal_types (species) VALUES ('Dog');
INSERT INTO animal_types (species) VALUES ('Cat');
INSERT INTO animal_types (species) VALUES ('Snake');
INSERT INTO animal_types (species) VALUES ('Rabbit');
INSERT INTO animal_types (species) VALUES ('Guinea-Pig');


INSERT INTO application_types (application_status) VALUES('PENDING');
INSERT INTO application_types (application_status) VALUES('ACCEPTED');
INSERT INTO application_types (application_status) VALUES('REJECTED');


INSERT INTO sex_enums (sex) VALUES ('Male');
INSERT INTO sex_enums (sex) VALUES ('Female');
INSERT INTO sex_enums (sex) VALUES ('Unknown');



INSERT INTO customers (age,first_name,last_name,location, previous_adoptions) VALUES (23,'Cem','Gurhan','London',true);

INSERT INTO customer_preferences_mapper (species_id,customer_id) VALUES (1,1);
INSERT INTO customer_preferences_mapper (species_id,customer_id) VALUES (2,1);

INSERT INTO organisations (name) VALUES ('RSPCA');

INSERT INTO animals (age,location,name,organisation_id,sex_id,species_id)
            VALUES (11,'London','Dodo1',1,1,2);

--INSERT INTO applications (application_type_id,animal_id,customer_id) VALUES (1,1,1);




INSERT INTO customers (age,first_name,last_name,location, previous_adoptions) VALUES (26,'Kieran','Sandford','Manchester', True);
INSERT INTO customers (age,first_name,last_name,location, previous_adoptions) VALUES (24,'Edward','Todd','St Albans', False);
INSERT INTO customers (age,first_name,last_name,location, previous_adoptions) VALUES (25,'Becca','Bartholomew','London', False);
INSERT INTO customers (age,first_name,last_name,location, previous_adoptions) VALUES (27,'Lewis','Broadhurst','Birmingham', True);


INSERT INTO customer_preferences_mapper (species_id,customer_id) VALUES (1,1);
INSERT INTO customer_preferences_mapper (species_id,customer_id) VALUES (2,1);
INSERT INTO customer_preferences_mapper (species_id,customer_id) VALUES (2,2);
INSERT INTO customer_preferences_mapper (species_id,customer_id) VALUES (1,3);
INSERT INTO customer_preferences_mapper (species_id,customer_id) VALUES (2,3);
INSERT INTO customer_preferences_mapper (species_id,customer_id) VALUES (3,3);
INSERT INTO customer_preferences_mapper (species_id,customer_id) VALUES (1,3);
INSERT INTO customer_preferences_mapper (species_id,customer_id) VALUES (5,4);
INSERT INTO customer_preferences_mapper (species_id,customer_id) VALUES (4,4);
INSERT INTO customer_preferences_mapper (species_id,customer_id) VALUES (3,5);


INSERT INTO organisations (name) VALUES ('RSPCA');
INSERT INTO organisations (name) VALUES ('Battersea');
INSERT INTO organisations (name) VALUES ('Dogs Trust');
INSERT INTO organisations (name) VALUES ('Blue Cross');
INSERT INTO organisations (name) VALUES ('Pets at Home');
INSERT INTO organisations (name) VALUES ('Freshfields');



INSERT INTO animals (name, breed, age, sex_id, location, reserved, adopted, organisation_id, species_id) VALUES('Tiny Tim', 'Chihuahua', 4, 1, 'Hillingdon', False, False, 1, 1);
INSERT INTO animals (name, breed, age, sex_id, location, reserved, adopted, organisation_id, species_id) VALUES('Crumpet', 'Shih Tzu', 5, 1, 'Potters Bar', False, False, 1, 1);
INSERT INTO animals (name, breed, age, sex_id, location, reserved, adopted, organisation_id, species_id) VALUES('Flame', 'Staffordshire Bull Terrier', 12, 1, 'Coventry', False, False, 1, 1);
INSERT INTO animals (name, breed, age, sex_id, location, reserved, adopted, organisation_id, species_id) VALUES('Coco', 'French Bulldog', 1, 2, 'Southport', False, False, 1, 1);
INSERT INTO animals (name, breed, age, sex_id, location, reserved, adopted, organisation_id, species_id) VALUES('Pops', 'German Shepherd', 6, 1, 'Aylesbury', False, False, 1, 1);


INSERT INTO animals (name, breed, age, sex_id, location, reserved, adopted, organisation_id, species_id) VALUES('Mr Lover Lover', 'Domestic Shorthair', 4, 1, 'Northamptonshire', False, False, 1, 2);
INSERT INTO animals (name, breed, age, sex_id, location, reserved, adopted, organisation_id, species_id) VALUES('Snowdrop', 'Domestic Shorthair', 8, 2, 'Northamptonshire', False, False, 1, 2);
INSERT INTO animals (name, breed, age, sex_id, location, reserved, adopted, organisation_id, species_id) VALUES('Fat Cat', 'Domestic Shorthair', 4, 2, 'Bedfordshire', False, False, 1, 2);
INSERT INTO animals (name, breed, age, sex_id, location, reserved, adopted, organisation_id, species_id) VALUES('Sonny', 'Domestic Semi', 13, 1, 'Potters Bar', False, False, 1, 2);
INSERT INTO animals (name, breed, age, sex_id, location, reserved, adopted, organisation_id, species_id) VALUES('Biggles', 'Domestic Shorthair', 16, 1, 'Cheltenham', False, False, 1, 2);


INSERT INTO animals (name, breed, age, sex_id, location, reserved, adopted, organisation_id, species_id) VALUES('Taurus', 'Bull', 2, 1, 'Brighton', False, False, 1, 3);
INSERT INTO animals (name, breed, age, sex_id, location, reserved, adopted, organisation_id, species_id) VALUES('Goldie', 'Royal Python', 2, 2, 'Brighton', False, False, 1, 3);
INSERT INTO animals (name, breed, age, sex_id, location, reserved, adopted, organisation_id, species_id) VALUES('Barnaby', 'Boa', 1, 1, 'Brighton', False, False, 1, 3);


INSERT INTO animals (name, breed, age, sex_id, location, reserved, adopted, organisation_id, species_id) VALUES('Champ', 'Lop', 1, 1, 'Accrington', False, False, 1, 4);
INSERT INTO animals (name, breed, age, sex_id, location, reserved, adopted, organisation_id, species_id) VALUES('Tammy', 'Domestic', 1, 2, 'Northumberland', False, False, 1, 4);
INSERT INTO animals (name, breed, age, sex_id, location, reserved, adopted, organisation_id, species_id) VALUES('Russel', 'Rex', 1, 1, 'Wakefield', False, False, 1, 4);
INSERT INTO animals (name, breed, age, sex_id, location, reserved, adopted, organisation_id, species_id) VALUES('Thelma', 'Lionhead', 1, 2, 'Wimblington', False, False, 1, 4);
INSERT INTO animals (name, breed, age, sex_id, location, reserved, adopted, organisation_id, species_id) VALUES('Pablo', 'Crossbreed', 1, 1, 'Blackpool', False, False, 1, 4);


INSERT INTO animals (name, breed, age, sex_id, location, reserved, adopted, organisation_id, species_id) VALUES('Kitkat Lady', 'Domestic', 1, 2, 'Manchester', False, False, 1, 5);
INSERT INTO animals (name, breed, age, sex_id, location, reserved, adopted, organisation_id, species_id) VALUES('Antonio', 'Domestic', 1, 1, 'Stalmine', False, False, 1, 5);
INSERT INTO animals (name, breed, age, sex_id, location, reserved, adopted, organisation_id, species_id) VALUES('Almond', 'Domestic', 2, 1, 'Conwy', False, False, 1, 5);
INSERT INTO animals (name, breed, age, sex_id, location, reserved, adopted, organisation_id, species_id) VALUES('Pumpkin Jr', 'Domestic', 1, 2, 'Isle of Wight', True, False, 1, 5);
INSERT INTO animals (name, breed, age, sex_id, location, reserved, adopted, organisation_id, species_id) VALUES('Hercules', 'Domestic', 2, 1, 'Birchington', True, False, 1, 5);




INSERT INTO applications (application_type_id, animal_id, customer_id) VALUES (1,11,4);
INSERT INTO applications (application_type_id, animal_id, customer_id) VALUES (1,13,5);
INSERT INTO applications (application_type_id, animal_id, customer_id) VALUES (1,14,1);
INSERT INTO applications (application_type_id, animal_id, customer_id) VALUES (2,4,3);
INSERT INTO applications (application_type_id, animal_id, customer_id) VALUES (2,6,4);
INSERT INTO applications (application_type_id, animal_id, customer_id) VALUES (2,1,2);
INSERT INTO applications (application_type_id, animal_id, customer_id) VALUES (3,1,4);
INSERT INTO applications (application_type_id, animal_id, customer_id) VALUES (3,1,5);



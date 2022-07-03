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



INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Tiny Tim', 'Chihuahua', 4, 'Male', 'Hillingdon', 'Available', 1, 'Dog', 'https://www.rspca.org.uk/GenericImage/CallGenericImage?source=petSearch&size=large&imageId=328739');
INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Simba', 'Staffordshire Bull Terrier', 2, 'Male', 'Birchington', 'Reserved', 1, 'Dog', 'https://www.rspca.org.uk/GenericImage/CallGenericImage?source=petSearch&size=large&imageId=325652');
INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Flame', 'Staffordshire Bull Terrier', 12, 'Male', 'Coventry', 'Available', 1, 'Dog', 'https://www.rspca.org.uk/GenericImage/CallGenericImage?source=petSearch&size=large&imageId=328636');
INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Fly', 'Crossbreed', 6, 'Female', 'Southport', 'Available', 1, 'Dog', 'https://www.rspca.org.uk/GenericImage/CallGenericImage?source=petSearch&size=large&imageId=330388');
INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Pops', 'German Shepherd', 6, 'Male', 'Aylesbury', 'Available', 1, 'Dog', 'https://www.rspca.org.uk/GenericImage/CallGenericImage?source=petSearch&size=large&imageId=A231334');


INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Mr Lover Lover', 'Domestic Shorthair', 4, 'Male', 'Northamptonshire', 'Available', 1, 'Cat', 'https://www.rspca.org.uk/GenericImage/CallGenericImage?source=petSearch&size=large&imageId=330093');
INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Snowdrop', 'Domestic Shorthair', 8, 'Female', 'Northamptonshire', 'Available', 1, 'Cat', 'https://www.rspca.org.uk/GenericImage/CallGenericImage?source=petSearch&size=large&imageId=330095');
INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Dobby', 'Domestic Shorthair', 3, 'Male', 'Barrow-in-Furness', 'Reserved', 1, 'Cat', 'https://www.rspca.org.uk/GenericImage/CallGenericImage?source=petSearch&size=large&imageId=330095');
INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Sonny', 'Domestic Semi', 13, 'Male', 'Potters Bar', 'Available', 1, 'Cat', 'https://www.rspca.org.uk/GenericImage/CallGenericImage?source=petSearch&size=large&imageId=A223403');
INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Biggles', 'Domestic Shorthair', 16, 'Male', 'Cheltenham', 'Available', 1, 'Cat', 'https://www.rspca.org.uk/GenericImage/CallGenericImage?source=petSearch&size=large&imageId=322418');


INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Spaghetti', 'Albino', 1, 'Male', 'Conwy', 'Available', 1, 'Ferret', 'https://www.rspca.org.uk/GenericImage/CallGenericImage?source=petSearch&size=large&imageId=A224734_3');
INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Rascal', 'Polecat', 1, 'Male', 'Conwy', 'Available', 1, 'Ferret', 'https://www.rspca.org.uk/GenericImage/CallGenericImage?source=petSearch&size=large&imageId=A222427');
INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Bandit', 'Polecat', 1, 'Male', 'Conwy', 'Available', 1, 'Ferret', 'https://www.rspca.org.uk/GenericImage/CallGenericImage?source=petSearch&size=large&imageId=A226439');
INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Mischief', 'Albino', 1, 'Male', 'Conwy', 'Available', 1, 'Ferret', 'https://www.rspca.org.uk/GenericImage/CallGenericImage?source=petSearch&size=large&imageId=A222429');
INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Sneaky Pete', 'Fitch', 1, 'Male', 'Conwy', 'Available', 1, 'Ferret', 'https://www.rspca.org.uk/GenericImage/CallGenericImage?source=petSearch&size=large&imageId=328900');


INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Champ', 'Lop', 1, 'Male', 'Accrington', 'Available', 1, 'Rabbit', 'https://www.rspca.org.uk/GenericImage/CallGenericImage?source=petSearch&size=large&imageId=328900');
INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Tammy', 'Domestic', 1, 'Female', 'Northumberland', 'Available', 1, 'Rabbit', 'https://www.rspca.org.uk/GenericImage/CallGenericImage?source=petSearch&size=large&imageId=329295');
INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Humphrey', 'Dwarf Lop', 1, 'Male', 'Manchester', 'Available', 1, 'Rabbit', 'https://www.rspca.org.uk/GenericImage/CallGenericImage?source=petSearch&size=large&imageId=329750');
INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Thelma', 'Lionhead', 1, 'Female', 'Wimblington', 'Available', 1, 'Rabbit', 'https://www.rspca.org.uk/GenericImage/CallGenericImage?source=petSearch&size=large&imageId=A228086');
INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Pablo', 'Crossbreed', 1, 'Male', 'Blackpool', 'Available', 1, 'Rabbit', 'https://www.rspca.org.uk/GenericImage/CallGenericImage?source=petSearch&size=large&imageId=325633');


INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Kitkat Lady', 'Domestic', 1, 'Female', 'Manchester', 'Available', 1, 'Guineapig', 'https://www.rspca.org.uk/GenericImage/CallGenericImage?source=petSearch&size=large&imageId=325633');
INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Antonio', 'Domestic', 1, 'Male', 'Stalmine', 'Available', 1, 'Guineapig', 'https://www.rspca.org.uk/GenericImage/CallGenericImage?source=petSearch&size=large&imageId=326826');
INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Almond', 'Domestic', 2, 'Male', 'Conwy', 'Available', 1, 'Guineapig', 'https://www.rspca.org.uk/GenericImage/CallGenericImage?source=petSearch&size=large&imageId=A230059');
INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Tom and Jerry', 'Domestic', 1, 'Male', 'Walsall', 'Available', 1, 'Guineapig', 'https://www.rspca.org.uk/GenericImage/CallGenericImage?source=petSearch&size=large&imageId=325697');
INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Hercules', 'Domestic', 2, 'Male', 'Birchington', 'Reserved', 1, 'Guineapig', 'https://www.rspca.org.uk/GenericImage/CallGenericImage?source=petSearch&size=large&imageId=319458');



INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Bella', 'Jack Russell Terrier', 2, 'Female', 'Brands Hatch', 'Available', 2, 'Dog', 'https://www.battersea.org.uk/sites/default/files/animal_images/00P8e000001FfwREAS.jpeg');
INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Bruno', 'Bulldog', 4, 'Male', 'Battersea', 'Available', 2, 'Dog', 'https://www.battersea.org.uk/sites/default/files/animal_images/00P8e000001FEuPEAW.jpeg');
INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Cooper', 'Siberian Husky', 1, 'Male', 'Old Windsor', 'Available', 2, 'Dog', 'https://www.battersea.org.uk/sites/default/files/animal_images/00P8e000001FS4MEAW.jpeg');
INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Bow', 'Shar-pei', 8, 'Female', 'Battersea', 'Reserved', 2, 'Dog', 'https://www.battersea.org.uk/sites/default/files/animal_images/00P8e000001FCeLEAW.jpeg');
INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Dave', 'Tibetan Mastiff', 5, 'Male', 'Brands Hatch', 'Adopted', 2, 'Dog', 'https://www.battersea.org.uk/sites/default/files/animal_images/00P8e000001FGQsEAO.jpeg');

INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Aubrey', 'Domestic Shorthair', 1, 'Female', 'Old Windsor', 'Available', 2, 'Cat', 'https://www.battersea.org.uk/sites/default/files/animal_images/00P8e000001FcOBEA0.jpeg');
INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Messi', 'Domestic Shorthair', 5, 'Male', 'Battersea', 'Available', 2, 'Cat', 'https://www.battersea.org.uk/sites/default/files/animal_images/00P8e000001Fi16EAC.jpeg');
INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Ariana', 'Domestic Shorthair', 1, 'Female', 'Old Windsor', 'Reserved', 2, 'Cat', 'https://www.battersea.org.uk/sites/default/files/animal_images/00P8e000001FcQDEA0.jpeg');
INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Oyster', 'Domestic Shorthair', 1, 'Female', 'Battersea', 'Reserved', 2, 'Cat', 'https://www.battersea.org.uk/sites/default/files/animal_images/00P8e000001FeVZEA0.jpeg');
INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Smurf', 'Domestic Longhair', 7, 'Male', 'Communities Guildford', 'Adopted', 2, 'Cat', 'https://www.battersea.org.uk/sites/default/files/animal_images/00P8e000001FSbAEAW.jpeg');



INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Alfie', 'Yorkshire Terrier', 8, 'Male', 'Worcestershire', 'Available', 3, 'Dog', 'https://www.dogstrust.org.uk/dogimages/1256074_alfie_20220614113512_img_9340_800.jpg');
INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Sherbert', 'Dachshund', 4, 'Female', 'Canterbury', 'Available', 3, 'Dog', 'https://www.dogstrust.org.uk/dogimages/1181579_sherbert_20220701042710_20220701_094413000_ios_800.jpg');
INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Captain Oats', 'Yorkshire Terrier', 8, 'Male', 'Basildon', 'Reserved', 3, 'Dog', 'https://www.dogstrust.org.uk/dogimages/1256918_captainoats_20220527010352_captain-oats_800.jpg');
INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Tofu', 'Pomeranian', 6, 'Male', 'Cardiff', 'Available', 3, 'Dog', 'https://www.dogstrust.org.uk/dogimages/1257450_tofu_20220609105349_tofu-(1257450)-9_800.jpg');
INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Thor', 'Dogue De Bordeaux', 3, 'Male', 'Liverpool', 'Available', 3, 'Dog', 'https://www.dogstrust.org.uk/dogimages/1249160_thor_20220418024702_thor-new-1_800.jpg');



INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Nala', 'Siberian Husky', 9, 'Female', 'Hampshire', 'Available', 4, 'Dog', 'https://www.bluecross.org.uk/sites/default/files/d8/styles/content_large_1000px_wide_/public/719197.jpg?itok=9VRg_8sx');
INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Teddy', 'Maltese', 1, 'Male', 'Bromsgrove', 'Available', 4, 'Dog', 'https://www.bluecross.org.uk/sites/default/files/d8/styles/content_large_1000px_wide_/public/732051.jpg?itok=97yAXbbJ');
INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Harry', 'Chihuahua', 2, 'Male', 'Sheffield', 'Available', 4, 'Dog', 'https://www.bluecross.org.uk/sites/default/files/d8/styles/content_large_1000px_wide_/public/725447.jpg?itok=gFVGsKJa');
INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Dustin', 'Australian Kelpie', 1, 'Male', 'Newport', 'Reserved', 4, 'Dog', 'https://www.bluecross.org.uk/sites/default/files/d8/styles/content_large_1000px_wide_/public/739165.jpg?itok=9E7JRIxw');
INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Apollo', 'Weimaraner', 2, 'Male', 'Yorkshire', 'Available', 4, 'Dog', 'https://www.bluecross.org.uk/sites/default/files/d8/styles/content_large_1000px_wide_/public/740230.jpg?itok=-XdcSQzy');

INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Tiger', 'Bengal', 2, 'Male', 'Bromsgrove', 'Reserved', 4, 'Cat', 'https://www.bluecross.org.uk/sites/default/files/d8/styles/content_large_1000px_wide_/public/727875.jpg?itok=ibqFUHzy');
INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Milo', 'Domestic Shorthair', 12, 'Male', 'Bromsgrove', 'Reserved', 4, 'Cat', 'https://www.bluecross.org.uk/sites/default/files/d8/styles/content_large_1000px_wide_/public/726297.jpg?itok=1AmWZgSW');
INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Prince', 'Domestic Shorthair', 4, 'Male', 'Oxfordshire', 'Available', 4, 'Cat', 'https://www.bluecross.org.uk/sites/default/files/d8/styles/content_large_1000px_wide_/public/738835.jpg?itok=RfKcSJ3T');
INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Haribo', 'Domestic Shorthair', 13, 'Female', 'Greater Manchester', 'Reserved', 4, 'Cat', 'https://www.bluecross.org.uk/sites/default/files/d8/styles/content_large_1000px_wide_/public/738786.jpg?itok=EwzFy4un');
INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Pebble', 'Domestic Shorthair', 6, 'Female', 'Sheffield', 'Reserved', 4, 'Cat', 'https://www.bluecross.org.uk/sites/default/files/d8/styles/content_large_1000px_wide_/public/738060.jpg?itok=vjlRMiqz');

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
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Oat, Almond and Soya', 'Mini Lop', 1, 1, 'Cambridge', 6, 4);
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Hazel', 'Crossbreed', 5, 2, 'Cambridge', 6, 4);
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Space and Raider', 'Crossbreed', 1, 2, 'Cambridge', 6, 4);
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Wesley and Winnie', 'Mini Lop', 2, 1, 'Cambridge', 6, 4);
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Benny and Jellybean', 'Crossbreed', 1, 1, 'Cambridge', 6, 4);
--
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Daisy', 'Domestic', 4, 2, 'Cambridge', True, 6, 5);
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Fluffy and Caramel', 'Domestic', 1, 2, 'Cambridge', 6, 5);
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Monty and Morty', 'Domestic', 5, 1, 'Cambridge', 6, 5);
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Shuffle and Sprinkles', 'Domestic', 1, 2, 'Cambridge', 6, 5);
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species) VALUES('Wilbur and Hew', 'Domestic', 4, 1, 'Cambridge', 6, 5);


--INSERT INTO applications (application_status, animal_id, customer_id) VALUES (1,1,4);
--INSERT INTO applications (application_status, animal_id, customer_id) VALUES (0,13,5);
--INSERT INTO applications (application_status, animal_id, customer_id) VALUES (0,14,1);
--INSERT INTO applications (application_status, animal_id, customer_id) VALUES (1,4,3);
--INSERT INTO applications (application_status, animal_id, customer_id) VALUES (1,6,4);
--INSERT INTO applications (application_status, animal_id, customer_id) VALUES (1,1,2);
--INSERT INTO applications (application_status, animal_id, customer_id) VALUES (2,1,4);
--INSERT INTO applications (application_status, animal_id, customer_id) VALUES (2,1,5);



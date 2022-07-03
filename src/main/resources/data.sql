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





INSERT INTO customers (date_of_birth,first_name,last_name,location, previous_adoptions) VALUES ('12/05/1999','Cem','Gurhan','London',true);

--INSERT INTO customer_preferred_species (customer_id, species_id) VALUES (1,1);

--INSERT INTO customer_preferences_mapper (species_id,customer_id) VALUES (1,1);
--INSERT INTO customer_preferences_mapper (species_id,customer_id) VALUES (2,1);

--INSERT INTO organisations (name) VALUES ('RSPCA');

--INSERT INTO animals (age,location,name,organisation_id,sex,species_id)
--            VALUES (11,'London','Dodo1',1,1,2);

--INSERT INTO applications (application_status,animal_id,customer_id) VALUES (1,1,1);




INSERT INTO customers (date_of_birth,first_name,last_name,location, previous_adoptions) VALUES ('12/05/1999','Kieran','Sandford','Manchester', True);
INSERT INTO customers (date_of_birth,first_name,last_name,location, previous_adoptions) VALUES ('12/05/1999','Edward','Todd','St Albans', False);
INSERT INTO customers (date_of_birth,first_name,last_name,location, previous_adoptions) VALUES ('12/05/1999','Becca','Bartholomew','London', False);
INSERT INTO customers (date_of_birth,first_name,last_name,location, previous_adoptions) VALUES ('12/05/1999','Lewis','Broadhurst','Birmingham', True);

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

INSERT INTO locations (city, country, address, postcode, organisation_id) VALUES ('London', 'UK','19 Landor Avenue','N12 3RE', 1);


INSERT INTO animals (name, breed, date_of_birth, sex, location, available_status, organisation_id, species, photo_url) VALUES('Tiny Tim', 'Chihuahua', '2020-01-01', 'Male', 'Hillingdon', 'Available', 1, 'Dog', 'https://www.rspca.org.uk/GenericImage/CallGenericImage?source=petSearch&size=large&imageId=328739');
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Simba', 'Staffordshire Bull Terrier', 2, 'Male', 'Birchington', 'Reserved', 1, 'Dog', 'https://www.rspca.org.uk/GenericImage/CallGenericImage?source=petSearch&size=large&imageId=325652');
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Flame', 'Staffordshire Bull Terrier', 12, 'Male', 'Coventry', 'Available', 1, 'Dog', 'https://www.rspca.org.uk/GenericImage/CallGenericImage?source=petSearch&size=large&imageId=328636');
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Fly', 'Crossbreed', 6, 'Female', 'Southport', 'Available', 1, 'Dog', 'https://www.rspca.org.uk/GenericImage/CallGenericImage?source=petSearch&size=large&imageId=330388');
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Pops', 'German Shepherd', 6, 'Male', 'Aylesbury', 'Available', 1, 'Dog', 'https://www.rspca.org.uk/GenericImage/CallGenericImage?source=petSearch&size=large&imageId=A231334');
--
--
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Mr Lover Lover', 'Domestic Shorthair', 4, 'Male', 'Northamptonshire', 'Available', 1, 'Cat', 'https://www.rspca.org.uk/GenericImage/CallGenericImage?source=petSearch&size=large&imageId=330093');
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Snowdrop', 'Domestic Shorthair', 8, 'Female', 'Northamptonshire', 'Available', 1, 'Cat', 'https://www.rspca.org.uk/GenericImage/CallGenericImage?source=petSearch&size=large&imageId=330095');
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Dobby', 'Domestic Shorthair', 3, 'Male', 'Barrow-in-Furness', 'Reserved', 1, 'Cat', 'https://www.rspca.org.uk/GenericImage/CallGenericImage?source=petSearch&size=large&imageId=330095');
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Sonny', 'Domestic Semi', 13, 'Male', 'Potters Bar', 'Available', 1, 'Cat', 'https://www.rspca.org.uk/GenericImage/CallGenericImage?source=petSearch&size=large&imageId=A223403');
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Biggles', 'Domestic Shorthair', 16, 'Male', 'Cheltenham', 'Available', 1, 'Cat', 'https://www.rspca.org.uk/GenericImage/CallGenericImage?source=petSearch&size=large&imageId=322418');
--
--
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Spaghetti', 'Albino', 1, 'Male', 'Conwy', 'Available', 1, 'Ferret', 'https://www.rspca.org.uk/GenericImage/CallGenericImage?source=petSearch&size=large&imageId=A224734_3');
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Rascal', 'Polecat', 1, 'Male', 'Conwy', 'Available', 1, 'Ferret', 'https://www.rspca.org.uk/GenericImage/CallGenericImage?source=petSearch&size=large&imageId=A222427');
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Bandit', 'Polecat', 1, 'Male', 'Conwy', 'Available', 1, 'Ferret', 'https://www.rspca.org.uk/GenericImage/CallGenericImage?source=petSearch&size=large&imageId=A226439');
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Mischief', 'Albino', 1, 'Male', 'Conwy', 'Available', 1, 'Ferret', 'https://www.rspca.org.uk/GenericImage/CallGenericImage?source=petSearch&size=large&imageId=A222429');
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Sneaky Pete', 'Fitch', 1, 'Male', 'Conwy', 'Available', 1, 'Ferret', 'https://www.rspca.org.uk/GenericImage/CallGenericImage?source=petSearch&size=large&imageId=328900');
--
--
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Champ', 'Lop', 1, 'Male', 'Accrington', 'Available', 1, 'Rabbit', 'https://www.rspca.org.uk/GenericImage/CallGenericImage?source=petSearch&size=large&imageId=328900');
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Tammy', 'Domestic', 1, 'Female', 'Northumberland', 'Available', 1, 'Rabbit', 'https://www.rspca.org.uk/GenericImage/CallGenericImage?source=petSearch&size=large&imageId=329295');
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Humphrey', 'Dwarf Lop', 1, 'Male', 'Manchester', 'Available', 1, 'Rabbit', 'https://www.rspca.org.uk/GenericImage/CallGenericImage?source=petSearch&size=large&imageId=329750');
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Thelma', 'Lionhead', 1, 'Female', 'Wimblington', 'Available', 1, 'Rabbit', 'https://www.rspca.org.uk/GenericImage/CallGenericImage?source=petSearch&size=large&imageId=A228086');
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Pablo', 'Crossbreed', 1, 'Male', 'Blackpool', 'Available', 1, 'Rabbit', 'https://www.rspca.org.uk/GenericImage/CallGenericImage?source=petSearch&size=large&imageId=325633');
--
--
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Kitkat Lady', 'Domestic', 1, 'Female', 'Manchester', 'Available', 1, 'Guineapig', 'https://www.rspca.org.uk/GenericImage/CallGenericImage?source=petSearch&size=large&imageId=325633');
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Antonio', 'Domestic', 1, 'Male', 'Stalmine', 'Available', 1, 'Guineapig', 'https://www.rspca.org.uk/GenericImage/CallGenericImage?source=petSearch&size=large&imageId=326826');
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Almond', 'Domestic', 2, 'Male', 'Conwy', 'Available', 1, 'Guineapig', 'https://www.rspca.org.uk/GenericImage/CallGenericImage?source=petSearch&size=large&imageId=A230059');
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Tom and Jerry', 'Domestic', 1, 'Male', 'Walsall', 'Available', 1, 'Guineapig', 'https://www.rspca.org.uk/GenericImage/CallGenericImage?source=petSearch&size=large&imageId=325697');
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Hercules', 'Domestic', 2, 'Male', 'Birchington', 'Reserved', 1, 'Guineapig', 'https://www.rspca.org.uk/GenericImage/CallGenericImage?source=petSearch&size=large&imageId=319458');
--
--
--
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Bella', 'Jack Russell Terrier', 2, 'Female', 'Brands Hatch', 'Available', 2, 'Dog', 'https://www.battersea.org.uk/sites/default/files/animal_images/00P8e000001FfwREAS.jpeg');
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Bruno', 'Bulldog', 4, 'Male', 'Battersea', 'Available', 2, 'Dog', 'https://www.battersea.org.uk/sites/default/files/animal_images/00P8e000001FEuPEAW.jpeg');
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Cooper', 'Siberian Husky', 1, 'Male', 'Old Windsor', 'Available', 2, 'Dog', 'https://www.battersea.org.uk/sites/default/files/animal_images/00P8e000001FS4MEAW.jpeg');
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Bow', 'Shar-pei', 8, 'Female', 'Battersea', 'Reserved', 2, 'Dog', 'https://www.battersea.org.uk/sites/default/files/animal_images/00P8e000001FCeLEAW.jpeg');
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Dave', 'Tibetan Mastiff', 5, 'Male', 'Brands Hatch', 'Adopted', 2, 'Dog', 'https://www.battersea.org.uk/sites/default/files/animal_images/00P8e000001FGQsEAO.jpeg');
--
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Aubrey', 'Domestic Shorthair', 1, 'Female', 'Old Windsor', 'Available', 2, 'Cat', 'https://www.battersea.org.uk/sites/default/files/animal_images/00P8e000001FcOBEA0.jpeg');
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Messi', 'Domestic Shorthair', 5, 'Male', 'Battersea', 'Available', 2, 'Cat', 'https://www.battersea.org.uk/sites/default/files/animal_images/00P8e000001Fi16EAC.jpeg');
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Ariana', 'Domestic Shorthair', 1, 'Female', 'Old Windsor', 'Reserved', 2, 'Cat', 'https://www.battersea.org.uk/sites/default/files/animal_images/00P8e000001FcQDEA0.jpeg');
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Oyster', 'Domestic Shorthair', 1, 'Female', 'Battersea', 'Reserved', 2, 'Cat', 'https://www.battersea.org.uk/sites/default/files/animal_images/00P8e000001FeVZEA0.jpeg');
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Smurf', 'Domestic Longhair', 7, 'Male', 'Communities Guildford', 'Adopted', 2, 'Cat', 'https://www.battersea.org.uk/sites/default/files/animal_images/00P8e000001FSbAEAW.jpeg');
--
--
--
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Alfie', 'Yorkshire Terrier', 8, 'Male', 'Worcestershire', 'Available', 3, 'Dog', 'https://www.dogstrust.org.uk/dogimages/1256074_alfie_20220614113512_img_9340_800.jpg');
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Sherbert', 'Dachshund', 4, 'Female', 'Canterbury', 'Available', 3, 'Dog', 'https://www.dogstrust.org.uk/dogimages/1181579_sherbert_20220701042710_20220701_094413000_ios_800.jpg');
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Captain Oats', 'Yorkshire Terrier', 8, 'Male', 'Basildon', 'Reserved', 3, 'Dog', 'https://www.dogstrust.org.uk/dogimages/1256918_captainoats_20220527010352_captain-oats_800.jpg');
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Tofu', 'Pomeranian', 6, 'Male', 'Cardiff', 'Available', 3, 'Dog', 'https://www.dogstrust.org.uk/dogimages/1257450_tofu_20220609105349_tofu-(1257450)-9_800.jpg');
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Thor', 'Dogue De Bordeaux', 3, 'Male', 'Liverpool', 'Available', 3, 'Dog', 'https://www.dogstrust.org.uk/dogimages/1249160_thor_20220418024702_thor-new-1_800.jpg');
--
--
--
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Nala', 'Siberian Husky', 9, 'Female', 'Hampshire', 'Available', 4, 'Dog', 'https://www.bluecross.org.uk/sites/default/files/d8/styles/content_large_1000px_wide_/public/719197.jpg?itok=9VRg_8sx');
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Teddy', 'Maltese', 1, 'Male', 'Bromsgrove', 'Available', 4, 'Dog', 'https://www.bluecross.org.uk/sites/default/files/d8/styles/content_large_1000px_wide_/public/732051.jpg?itok=97yAXbbJ');
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Harry', 'Chihuahua', 2, 'Male', 'Sheffield', 'Available', 4, 'Dog', 'https://www.bluecross.org.uk/sites/default/files/d8/styles/content_large_1000px_wide_/public/725447.jpg?itok=gFVGsKJa');
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Dustin', 'Australian Kelpie', 1, 'Male', 'Newport', 'Reserved', 4, 'Dog', 'https://www.bluecross.org.uk/sites/default/files/d8/styles/content_large_1000px_wide_/public/739165.jpg?itok=9E7JRIxw');
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Apollo', 'Weimaraner', 2, 'Male', 'Yorkshire', 'Available', 4, 'Dog', 'https://www.bluecross.org.uk/sites/default/files/d8/styles/content_large_1000px_wide_/public/740230.jpg?itok=-XdcSQzy');
--
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Tiger', 'Bengal', 2, 'Male', 'Bromsgrove', 'Reserved', 4, 'Cat', 'https://www.bluecross.org.uk/sites/default/files/d8/styles/content_large_1000px_wide_/public/727875.jpg?itok=ibqFUHzy');
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Milo', 'Domestic Shorthair', 12, 'Male', 'Bromsgrove', 'Reserved', 4, 'Cat', 'https://www.bluecross.org.uk/sites/default/files/d8/styles/content_large_1000px_wide_/public/726297.jpg?itok=1AmWZgSW');
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Prince', 'Domestic Shorthair', 4, 'Male', 'Oxfordshire', 'Available', 4, 'Cat', 'https://www.bluecross.org.uk/sites/default/files/d8/styles/content_large_1000px_wide_/public/738835.jpg?itok=RfKcSJ3T');
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Haribo', 'Domestic Shorthair', 13, 'Female', 'Greater Manchester', 'Reserved', 4, 'Cat', 'https://www.bluecross.org.uk/sites/default/files/d8/styles/content_large_1000px_wide_/public/738786.jpg?itok=EwzFy4un');
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Pebble', 'Domestic Shorthair', 6, 'Female', 'Sheffield', 'Reserved', 4, 'Cat', 'https://www.bluecross.org.uk/sites/default/files/d8/styles/content_large_1000px_wide_/public/738060.jpg?itok=vjlRMiqz');
--
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Peter', 'English Spot', 2, 'Male', 'Sheffield', 'Reserved', 4, 'Rabbit', 'https://www.bluecross.org.uk/sites/default/files/d8/styles/content_large_1000px_wide_/public/731766.jpg?itok=cFul0e1x');
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Wolfie', 'Lop', 1, 'Male', 'Suffolk', 'Available', 4, 'Rabbit', 'https://www.bluecross.org.uk/sites/default/files/d8/styles/content_large_1000px_wide_/public/732228.jpg?itok=WMX7yYMU');
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Oreo', 'Lionhead', 2, 'Female', 'Yorkshire', 'Available', 4, 'Rabbit', 'https://www.bluecross.org.uk/sites/default/files/d8/styles/portrait_large/public/733997.jpg?itok=N_z7fe8S');
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Howie', 'English Spot', 1, 'Male', 'Oxfordshire', 'Available', 4, 'Rabbit', 'https://www.bluecross.org.uk/sites/default/files/d8/styles/content_large_1000px_wide_/public/739695.jpg?itok=zA_yXOuW');
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Coco', 'Mini Lop', 3, 'Female', 'Hampshire', 'Available', 4, 'Rabbit', 'https://www.bluecross.org.uk/sites/default/files/d8/styles/portrait_medium/public/737427.jpg?itok=UH0QMpuL');
--
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Peanut', 'Domestic', 1, 'Male', 'Suffolk', 'Reserved', 4, 'Guineapig', 'https://www.bluecross.org.uk/sites/default/files/d8/styles/content_large_1000px_wide_/public/738926.jpg?itok=jOqHCOMR');
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Fudge', 'Domestic', 1, 'Male', 'Suffolk', 'Reserved', 4, 'Guineapig', 'https://www.bluecross.org.uk/sites/default/files/d8/styles/portrait_large/public/733612.jpg?itok=CVFobHUN');
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Thyme', 'Domestic', 2, 'Male', 'Burford', 'Reserved', 4, 'Guineapig', 'https://www.bluecross.org.uk/sites/default/files/d8/styles/content_large_1000px_wide_/public/739742.jpg?itok=yr0dmSuE');
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Mabel', 'Domestic', 2, 'Female', 'Burford', 'Reserved', 4, 'Guineapig', 'https://www.bluecross.org.uk/sites/default/files/d8/styles/content_large_1000px_wide_/public/739749.jpg?itok=s0m800TQ');
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Rupert', 'Domestic', 1, 'Male', 'Sheffield', 'Available', 4, 'Guineapig', 'https://www.bluecross.org.uk/sites/default/files/d8/styles/portrait_large/public/739938.jpg?itok=sIPGrRDq');
--
--
--
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Bee', 'Bassett Hound', 4, 'Male', 'Berkshire', 'Reserved', 5, 'Dog', 'https://www.nawt.org.uk/sites/default/files/styles/flexslider_full_tall/public/dogs/Bee.jpg?itok=w8Ozj3Uw');
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Luna', 'Crossbreed', 1, 'Female', 'Berkshire', 'Reserved', 5, 'Dog', 'https://www.nawt.org.uk/sites/default/files/styles/flexslider_full_tall/public/dogs/Bee.jpg?itok=w8Ozj3Uw');
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Stan', 'Springer Spaniel', 10, 'Male', 'Cornwall', 'Reserved', 5, 'Dog', 'https://www.nawt.org.uk/sites/default/files/styles/flexslider_full_tall/public/dogs/WhatsApp%20Image%202022-06-19%20at%204.17.04%20PM.jpeg?itok=BRRvSSc5');
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Shadow', 'Shar-Pei', 3, 'Male', 'Essex', 'Available', 5, 'Dog', 'https://www.nawt.org.uk/sites/default/files/styles/flexslider_full_tall/public/dogs/8F29FB81-0C2E-429D-B47F-D4FD73A02254.jpeg?itok=6D2JyPh7');
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Kobe', 'French Bulldog/Pug', 1, 'Male', 'Berkshire', 'Available', 5, 'Dog', 'https://www.nawt.org.uk/sites/default/files/styles/flexslider_full_tall/public/dogs/Kobe1%20%282%29.jpg?itok=ENl-dUbm');
--
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Freddie', 'Domestic Shorthair', 1, 'Male', 'Hertfordshire', 'Reserved', 5, 'Cat', 'https://www.nawt.org.uk/sites/default/files/styles/flexslider_full_tall/public/cats/Freddie%201.jpg?itok=mGUx_xKQ');
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Mimi', 'Domestic Shorthair', 5, 'Female', 'Hertfordshire', 'Available', 5, 'Cat', 'https://www.nawt.org.uk/sites/default/files/styles/flexslider_full_tall/public/cats/Mimi%202.jpg?itok=7AlZ_nt_');
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Dizzy', 'Domestic Shorthair', 15, 'Male', 'Berkshire', 'Available', 5, 'Cat', 'https://www.nawt.org.uk/sites/default/files/styles/flexslider_full_tall/public/cats/Dizzy1.jpg?itok=4I-LXgUo');
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Spirit', 'Domestic Shorthair', 2, 'Female', 'Cornwall', 'Available', 5, 'Cat', 'https://www.nawt.org.uk/sites/default/files/styles/flexslider_full_tall/public/cats/Spirit.jpeg?itok=nPUHHfRR');
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Harold', 'Domestic Shorthair', 7, 'Male', 'Essex', 'Available', 5, 'Cat', 'https://www.nawt.org.uk/sites/default/files/styles/flexslider_full_tall/public/cats/harold.jpg?itok=tRNTPgbL');
--
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Milo', 'Crossbreed', 4, 'Male', 'Bedfordshire', 'Available', 5, 'Rabbit', 'https://www.nawt.org.uk/sites/default/files/styles/flexslider_full_tall/public/rabbits/1_51.jpg?itok=AyiAvklT');
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Rio', 'Lop', 1, 'Male', 'Bedfordshire', 'Available', 5, 'Rabbit', 'https://www.nawt.org.uk/sites/default/files/styles/flexslider_full_tall/public/rabbits/2_47.jpg?itok=XGhHFsof');
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Bonnie', 'English Lop', 1, 'Female', 'Berkshire', 'Available', 5, 'Rabbit', 'https://www.nawt.org.uk/sites/default/files/styles/flexslider_full_tall/public/rabbits/Bonnie1.jpg?itok=BL0CGoOH');
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Skye', 'Lop', 1, 'Male', 'Hertfordshire', 'Available', 5, 'Rabbit', 'https://www.nawt.org.uk/sites/default/files/styles/flexslider_full_tall/public/rabbits/IMG_20220521_195512.jpg?itok=GW0QfsNP');
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Theodore', 'Lop', 3, 'Male', 'Bedfordshire', 'Available', 5, 'Rabbit', 'https://www.nawt.org.uk/sites/default/files/styles/flexslider_full_tall/public/rabbits/theodore.jpg?itok=RBV6cQR1');
--
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Wilbur', 'Domestic', 1, 'Male', 'Hertfordshire', 'Available', 5, 'Guineapig', 'https://www.nawt.org.uk/sites/default/files/styles/flexslider_full_tall/public/rabbits/Wilbur%201.jpg?itok=uitChV2I');
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Winston', 'Domestic', 1, 'Male', 'Hertfordshire', 'Available', 5, 'Guineapig', 'https://www.nawt.org.uk/sites/default/files/styles/flexslider_full_tall/public/rabbits/Winston%201.jpg?itok=EDDlwJkS');
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Bodger', 'Domestic', 1, 'Male', 'Hertfordshire', 'Available', 5, 'Guineapig', 'https://www.nawt.org.uk/sites/default/files/styles/flexslider_full_tall/public/rabbits/Bodger%201.jpg?itok=S5gjatOk');
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Crunchie', 'Domestic', 2, 'Male', 'Hertfordshire', 'Available', 5, 'Guineapig', 'https://www.nawt.org.uk/sites/default/files/styles/flexslider_full_tall/public/rabbits/crunchie%201.jpg?itok=ZFIOeFqf');
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Bertie', 'Domestic', 2, 'Male', 'Hertfordshire', 'Reserved', 5, 'Guineapig', 'https://www.nawt.org.uk/sites/default/files/styles/flexslider_full_tall/public/rabbits/bertie%201.jpg?itok=PUXugnAB');
--
--
--
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Barry', 'Greyhound', 7, 'Male', 'Cambridge', 'Reserved', 6, 'Dog', 'https://woodgreen.org.uk/wp-content/uploads/2022/06/Barry-Barrow-Vic-133669-1536x1536.jpg');
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Archie', 'Lurcher', 2, 'Male', 'Cambridge', 'Available', 6, 'Dog', 'https://woodgreen.org.uk/wp-content/uploads/2022/06/Archie-2-1536x1024.jpg');
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Mally', 'Crossbreed', 5, 'Male', 'Cambridge', 'Available', 6, 'Dog', 'https://woodgreen.org.uk/wp-content/uploads/2022/02/Mally-133683-Jubilee-1536x864.jpg');
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Memphis', 'Staffordshire Bull Terrier', 2, 'Male', 'Cambridge', 'Available', 6, 'Dog', 'https://woodgreen.org.uk/wp-content/uploads/2022/05/Memphis-1.jpg');
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Tokyo', 'Crossbreed', 2, 'Female', 'Cambridge', 'Available', 6, 'Dog', 'https://woodgreen.org.uk/wp-content/uploads/2022/03/Tokyo-2-1-1536x1446.jpg');
--
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Cosmo', 'Domestic Shorthair', 3, 'Female', 'Cambridge', 'Available', 6, 'Cat', 'https://woodgreen.org.uk/wp-content/uploads/2022/04/146099-Cosmo-4-1536x1152.jpg');
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Marble', 'Domestic Longhair', 1, 'Female', 'Cambridge', 'Available', 6, 'Cat', 'https://woodgreen.org.uk/wp-content/uploads/2022/06/Marble-1.jpg');
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Mr Bojangles', 'Domestic Shorthair', 3, 'Male', 'Cambridge', 'Available', 6, 'Cat', 'https://woodgreen.org.uk/wp-content/uploads/2022/04/Mr-Bojangles-52318-1-1536x864.jpg');
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Pickles', 'Domestic Shorthair', 5, 'Female', 'Cambridge', 'Reserved', 6, 'Cat', 'https://woodgreen.org.uk/wp-content/uploads/2022/06/Pickles.jpg');
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Winter', 'Domestic Shorthair', 1, 'Male', 'Cambridge', 'Available', 6, 'Cat', 'https://woodgreen.org.uk/wp-content/uploads/2022/04/Winter-144894-3-1536x1152.jpg');
--
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Norman', 'Albino', 1, 'Male', 'Cambridge', 'Available', 6, 'Ferret', 'https://woodgreen.org.uk/wp-content/uploads/2022/01/Norman-1.jpg');
--
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Almond and Soya', 'Mini Lop', 1, 'Male', 'Cambridge', 'Available', 6, 'Rabbit', 'https://woodgreen.org.uk/wp-content/uploads/2022/06/Almond-1.jpg');
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Hazel', 'Crossbreed', 5, 'Female', 'Cambridge', 'Available', 6, 'Rabbit', 'https://woodgreen.org.uk/wp-content/uploads/2022/03/Hazel-56852.jpg');
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Space and Raider', 'Crossbreed', 1, 'Female', 'Cambridge', 'Available', 6, 'Rabbit', 'https://woodgreen.org.uk/wp-content/uploads/2021/12/Space-_-Raider-136374-136375.jpg');
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Wesley and Winnie', 'Mini Lop', 2, 'Male', 'Cambridge', 'Available', 6, 'Rabbit', 'https://woodgreen.org.uk/wp-content/uploads/2022/01/Wesley_Winnie2.jpg');
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Benny and Jellybean', 'Crossbreed', 1, 'Male', 'Cambridge', 'Available', 6, 'Rabbit', 'https://woodgreen.org.uk/wp-content/uploads/2022/04/Benny-Pic-1.jpg');
--
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Daisy', 'Domestic', 4, 'Female', 'Cambridge', 'Reserved', 6, 'Guineapig', 'https://woodgreen.org.uk/wp-content/uploads/2022/03/Daisy-135127-1536x1152.jpg');
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Fluffy and Caramel', 'Domestic', 1, 'Female', 'Cambridge', 'Available', 6, 'Guineapig', 'https://woodgreen.org.uk/wp-content/uploads/2022/06/GPs.jpg');
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Monty and Morty', 'Domestic', 5, 'Male', 'Cambridge', 'Available', 6, 'Guineapig', 'https://woodgreen.org.uk/wp-content/uploads/2022/05/Monty-Morty.jpg');
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Shuffle and Sprinkles', 'Domestic', 1, 'Female', 'Cambridge', 'Available', 6, 'Guineapig', 'https://woodgreen.org.uk/wp-content/uploads/2022/06/Shuffle-1.jpg');
--INSERT INTO animals (name, breed, age, sex, location, available_status, organisation_id, species, photo_url) VALUES('Wilbur and Hew', 'Domestic', 4, 'Male', 'Cambridge', 'Available', 6, 'Guineapig', 'https://woodgreen.org.uk/wp-content/uploads/2022/06/Wilbur-Hew.jpg');



--INSERT INTO applications (application_status, animal_id, customer_id) VALUES (1,1,4);
--INSERT INTO applications (application_status, animal_id, customer_id) VALUES (0,13,5);
--INSERT INTO applications (application_status, animal_id, customer_id) VALUES (0,14,1);
--INSERT INTO applications (application_status, animal_id, customer_id) VALUES (1,4,3);
--INSERT INTO applications (application_status, animal_id, customer_id) VALUES (1,6,4);
--INSERT INTO applications (application_status, animal_id, customer_id) VALUES (1,1,2);
--INSERT INTO applications (application_status, animal_id, customer_id) VALUES (2,1,4);
--INSERT INTO applications (application_status, animal_id, customer_id) VALUES (2,1,5);



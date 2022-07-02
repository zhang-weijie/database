START TRANSACTION;

--insert patients
INSERT INTO 
	patient(Name, Age, Sex)
VALUES 
	('Max Mustermann', 30, 'm'),
	('Lenard Zwoelfert', 24, 'm'),
	('Emilia Extra', 13, 'f'),
	('Speedy Schnell', 18, 'm'),
	('Walter White', 52, 'm'),
	('Mark Zuck', 37, 'd'),
	('Elizabeth England', 96, 'f'),
	('Tom Riddle', 18, 'm'),
	('Angela Merkel', 67, 'f'),
	('Flora SonnenscheIN', 25, 'f'),
	('Celia Schöneberg', 18, 'f'),
	('Pete Smith', 27, 'm'),
	('LumINa Wagner', 17, 'f'),
	('Leia Fischer', 19, 'f'),
	('Hardy Harderdauer', 20, 'm'),
	('Kai Schneider', 19, 'm'),
	('Dwight Schrute', 56, 'm'),
	('Sebastian Wolf', 68, 'm'),
	('NINa Richter', 74, 'f'),
	('Karen Müller', 20, 'f'),
	('Pam Beesly', 48, 'f'),
	('Jim Halpert', 42, 'm'),
	('Kate Becker', 15, 'f'),
	('Thomas Bürger', 43, 'm'),
	('Pete Miller', 37, 'm'),
	('Samson Smith', 30, 'd'),
	('Demi Potato', 29, 'd'),
	('Harald SchINker', 77, 'm'),
	('ChristINe Müller', 28, 'f'),
	('Miguel Banegas', 21, 'm'),
	('Jake Black', 25, 'm'),
	('PaulINa Krasa', 32, 'f'),
	('Laura Wohlers', 29, 'f'),
	('Peggy Knoblauch', 17, 'f'),
	('Neeraj', 28, 'm'),
	('Manuel Wirttman', 30, 'm'),
	('Mona Berlipp', 34, 'f'),
	('Franziska Schmidt', 17, 'f'),
	('Nico Hakit', 21, 'm'),
	('Nick Tsai', 20, 'm'),
	('Julian Konrad', 29, 'm'),
	('Mehmet Yildiz', 38, 'm'),
	('Stephanie Prünster', 45, 'f'),
	('FernanDO Escoto', 21, 'm'),
	('Julia SteINer', 41, 'm'),
	('Tobias Ernst', 39, 'm'),
	('Jonas Hoffmann', 49, 'm'),
	('Melanie SchillINger', 31, 'f'),
	('Julia Zeise', 16, 'f'),
	('CarolIN Ott', 50, 'f'),
	('Alexander Chi', 22, 'm'),
	('Nils Rausch', 32, 'm'),
	('Daniel Richter', 80, 'm'),
	('Felicia Chew', 35, 'f'),
	('Hector Barbosa', 24, 'm'),
	('Rath Kutola', 21, 'm'),
	('Francesca GuINevere', 19, 'f'),
	('Bruno Genesio', 56, 'm'),
	('Zhu Ye-Su', 30, 'm'),
	('Susan Steuer', 28, 'f'),
	('Judith HellensDOrf', 32, 'f'),
	('Dennis Atakis', 27, 'm'),
	('Dieumerci Bezua', 24, 'm'),
	('Franz Reitberger', 60, 'm'),
	('Nils Fischer', 30, 'm'),
	('AngelINa Chen', 26, 'f'),
	('Maja Stark', 40, 'f'),
	('Laila Wirtt', 40, 'f'),
	('Clarissa Sapphire', 19, 'f'),
	('Gabriele Bucher', 64, 'f'),
	('Thomas Gaedke', 54, 'm'),
	('Maxim Lebold', 69, 'm'),
	('Markus Fischer', 67, 'm'),
	('Veronika Engel', 78, 'f'),
	('Michael Seitz', 62, 'm'),
	('Andreas Heim', 35, 'm'),
	('Lea MayINger', 17, 'f'),
	('Stefan Schwerdt', 18, 'm'),
	('Emanuel WINter', 16, 'm'),
	('Eva Jaumann', 45, 'f'),
	('Lena PrINz', 42, 'f'),
	('Wojtek Rok', 58, 'm'),
	('Bilal Rihanni', 23, 'm'),
	('Christian Wolf', 15, 'm'),
	('Nico Eichenseer', 19, 'm'),
	('JasmIN Ibrahimovic', 21, 'f'),
	('Sandra Kreuzer', 61, 'f'),
	('Frank Raue', 90, 'm'),
	('Anthony Kelly', 40, 'm'),
	('FernanDO Lopez', 22, 'm'),
	('Daniel Scheller', 27, 'm'),
	('Jerry Kwon', 21, 'm'),
	('Sally Kim', 19, 'f'),
	('Alyson Sapphire', 23, 'f'),
	('Ash Ketchum', 15, 'm'),
	('Gi-Myung Kim', 22, 'm'),
	('LucINda Papp', 15, 'f'),
	('Eustass Kidd', 23, 'm'),
	('Trafalgar Law', 22, 'm'),
	('ValentIN Goepfert', 24, 'm'),
	('Christabelle TraubINger', 28, 'f'),
	('Mohamed HusseIN', 32, 'm'),
	('Nguyen Quang Tran', 24, 'm'),
	('Chanatip Dangda', 26, 'm');
--end insertion

--insert staffs
INSERT INTO 
	staff (Name, Job)
VALUES 
	('Dr. Stephen Strange', 'DOctor'),
	('Dr. Peter Hotea', 'DOctor'),
	('Dr. Jesule Onambele', 'DOctor'),
	('Dr. Monika Zackel', 'DOctor'),
	('Dr. Widya Ayu', 'DOctor'),
	('Dr. Nicole Chang', 'DOctor'),
	('Dr. Trent Jefferson', 'DOctor'),
	('Susann Werner', 'Nurse'),
	('Vanessa Grau', 'Nurse'),
	('Alyanna Castillo', 'Nurse'),
	('Brayan Esquivel', 'Nurse'),
	('Torsten Werner','Nurse'),
	('Luis Koch','Nurse'),
	('Florian KleIN', 'Nurse'),
	('Simona Weigl', 'Nurse'),
	('Jennifer Tan', 'Nurse'),
	('Luisa Wenger', 'Nurse'),
	('Vivien Varga', 'Nurse'),
	('Tobias Muller', 'Volunteer'),
	('Sophie Usselmann', 'Volunteer'),
	('Saskia Lange', 'Volunteer'),
	('Steve Rogers', 'Volunteer');
--end insertion

--insert stocks 
INSERT INTO 
	stock (Location, Capacity, Quantity)
VALUES 
	('KlINik A', 50, 0),
	('Arztpraxis B', 20, 0),
	('Impfbus C', 1, 0);
--end insertion

--insert vaccines
DO $$
BEGIN
FOR r IN 1..50 LOOP
INSERT INTO 
	vaccine(name)
VALUES
	('Impfstoff A');
END LOOP;
END;
$$;

DO $$
BEGIN
FOR r IN 1..50 LOOP
INSERT INTO 
	vaccine(name)
VALUES
	('Impfstoff B');
END LOOP;
END;
$$;
--end insertion

--insert storage Infos
DO $$
BEGIN
FOR r IN 1..5 LOOP
INSERT INTO 
	storedIn(Vacc_id, Stock_id)	
VALUES
	(r,2);
END LOOP;
END;
$$;

INSERT INTO 
	storedIn(Vacc_id, Stock_ID) 
VALUES (6,3);

INSERT INTO 
	maintains(Staff_id, Stock_id)	
VALUES
	(1,1),
	(2,1),
	(3,1),
	(4,2),
	(5,3),
	(6,2);

DO $$
BEGIN
FOR r IN 51..100 LOOP
INSERT INTO 
storedIn(Vacc_ID, Stock_ID)
VALUES
	(r,1);
END LOOP;
END;
$$;
--end insertion

--insert vaccination records
DO $$
BEGIN
FOR r IN 51..65 LOOP
INSERT INTO 
	vaccinates(Vacc_ID, Staff_ID, Patient_ID)
VALUES
	(r,5,r);
END LOOP;
END;
$$;

DO $$
BEGIN
FOR r IN 66..80 LOOP
INSERT INTO 
	vaccinates(Vacc_ID, Staff_ID, Patient_ID)
VALUES
	(r,6,r);
END LOOP;
END;
$$;

DO $$
BEGIN
FOR r IN 81..100 LOOP
INSERT INTO 
	vaccinates(Vacc_ID, Staff_ID, Patient_ID)
VALUES
	(r,6,r);
END LOOP;
--end insertion

END;
$$;

COMMIT;
/*(die table-namen wurden ein bisschen verändert)*/
DROP TABLE IF EXISTS storedIn, vaccinates, maintains, staff, vaccine, patient, stock;

--T A B L E S :

--P A T I E N T

CREATE TABLE patient(
	ID		SERIAL PRIMARY KEY,
	Name		VARCHAR(30) NOT NULL,
	Age		INT NOT NULL CHECK(Age>0),
	Sex		CHAR NOT NULL CHECK( Sex IN ('m','f','d')),
	IsVaccinated	BOOLEAN DEFAULT(FALSE) NOT NULL
);

--S T A F F 

CREATE TABLE staff(
	ID	SERIAL PRIMARY KEY,
	Name	 	VARCHAR(30) NOT NULL,
	Job		VARCHAR(30) NOT NULL
);

--V A C C I N E  


CREATE TABLE vaccine(	
	ID		SERIAL PRIMARY KEY,
	Name		VARCHAR(30),
	IsAvailable	BOOLEAN DEFAULT(TRUE) NOT NULL
);

	--Insert sollte mehrmals ausgeführt werden
	--name kann überall gleich sein (nur eine Vaccine-Art

--S T O C K

CREATE TABLE stock(
	ID		SERIAL PRIMARY KEY,
	Location	TEXT NOT NULL,
	Capacity	INT NOT NULL CHECK(Capacity>0),
	Quantity	INT DEFAULT(0) NOT NULL CHECK(Quantity>=0)CHECK(Quantity<=Capacity)
);

--S T O R E D I N
CREATE TABLE storedIn( --IMPFDOSIS IST IM VORRAT
	Vacc_ID	Integer REFERENCES vaccine(ID) ON DELETE CASCADE,
	Stock_ID	Integer REFERENCES stock(ID) ON DELETE CASCADE,
	PRIMARY KEY (Vacc_ID, Stock_ID)
);

--M A I N T A I N S

CREATE TABLE maintains(		--PERSONAL VERWAELT VORRAT
	Staff_ID	INT REFERENCES staff(ID) ON DELETE CASCADE,
	Stock_ID	INT REFERENCES stock(ID) ON DELETE CASCADE,
	PRIMARY KEY	(Staff_ID, Stock_ID)
);

--V A C C I N A T E S

CREATE TABLE vaccinates(	--PATIENT ERHAELT IMPFDOSIS
	Vacc_ID	INT REFERENCES vaccine(ID) ON DELETE CASCADE,
	Staff_ID	INT REFERENCES staff(ID) ON DELETE CASCADE,
	Patient_ID	INT REFERENCES patient(ID) ON DELETE CASCADE,
	Vacc_Date	DATE DEFAULT(CURRENT_DATE),
	PRIMARY KEY	(Vacc_ID, Staff_ID, Patient_ID)
);






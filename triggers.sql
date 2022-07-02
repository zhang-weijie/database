CREATE OR REPLACE FUNCTION updateStockQuantityWhenStoreVaccine() RETURNS TRIGGER AS $storeVaccine$
	DECLARE
		vaccIsAvailable BOOL := FALSE;
	BEGIN	
		vaccIsAvailable = (
			SELECT IsAvailable
			FROM vaccine
			WHERE ID = new.Vacc_ID);
		
		IF
			NOT vaccIsAvailable
		THEN
			RAISE EXCEPTION 'Vaccine already used!';
		END IF;
		
		UPDATE stock
		SET Quantity = Quantity + 1
		WHERE ID = NEW.Stock_ID;
		RETURN NEW;
	EXCEPTION
		WHEN SQLSTATE '23514' THEN
			RAISE EXCEPTION 'Quantity beyond capacity!';
	END;
$storeVaccine$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION updateStockQuantityWhenUnstoreVaccine() RETURNS TRIGGER AS $unstoreVaccine$
	BEGIN
		UPDATE stock
		SET Quantity = Quantity - 1
		WHERE ID = (
			SELECT Stock_ID
			FROM storedIn
			WHERE Vacc_ID = OLD.Vacc_ID
		);
		RETURN OLD;
	END;
$unstoreVaccine$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION updateStockQuantityWhenUseVaccine() RETURNS TRIGGER AS $useVaccine$
	DECLARE
		patientIsVaccinated BOOL := TRUE;
		vaccIsAvailable BOOL := FALSE;
		vaccStockID INT := 0;
	BEGIN
		--1. update patient status
		patientIsVaccinated = ( 
			SELECT isVaccinated
			FROM patient
			WHERE ID = NEW.Patient_ID);
		IF
			patientIsVaccinated
		THEN
			RAISE EXCEPTION 'Patient already vaccinated!';
		END IF;
		
		UPDATE patient
		SET isVaccinated = TRUE
		WHERE ID = NEW.Patient_ID;

		--2. update vaccine status
		vaccIsAvailable = ( 
			SELECT isAvailable
			FROM vaccine
			WHERE ID = NEW.Vacc_ID);
		IF
			NOT vaccIsAvailable
		THEN
			RAISE EXCEPTION 'Vaccine already used!';
		END IF;
		
		UPDATE vaccine
		SET isAvailable = FALSE
		WHERE ID = NEW.Vacc_ID;

		--3. update stock quantity
		vaccStockID = (
			SELECT Stock_ID
			FROM storedIn
			WHERE Vacc_ID = NEW.Vacc_ID);
		IF  
			vaccStockID IS NULL
		THEN
			RAISE EXCEPTION 'Unstored vaccine is unavailable!';
		END IF;

		DELETE FROM storedIn
		WHERE Vacc_ID = NEW.Vacc_ID;
		RETURN NEW;
	END;
$useVaccine$ LANGUAGE plpgsql;


CREATE TRIGGER storeVaccine AFTER INSERT ON storedIn FOR EACH ROW EXECUTE PROCEDURE updateStockQuantityWhenStoreVaccine();
CREATE TRIGGER unstoreVaccine BEFORE DELETE ON storedIn FOR EACH ROW EXECUTE PROCEDURE updateStockQuantityWhenUnstoreVaccine();
CREATE TRIGGER useVaccine AFTER INSERT ON vaccinates FOR EACH ROW EXECUTE PROCEDURE updateStockQuantityWhenUseVaccine();
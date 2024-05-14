/*Проверка ВУ*/

CREATE OR REPLACE FUNCTION check_driver_license()
RETURNS TRIGGER AS 
$$
BEGIN
    IF NEW.driver_license > 9999 AND NEW.driver_license < 100000 THEN
        RAISE EXCEPTION 'Некоректный формат';
    END IF;
    RETURN NEW;
END;
$$;
LANGUAGE plpgsql

CREATE TRIGGER check_driver_license_trigger
BEFORE INSERT OR UPDATE ON Client
FOR EACH ROW
EXECUTE FUNCTION check_driver_license();

/*Проверка времени аренды*/

CREATE OR REPLACE FUNCTION validate_rent_time()
RETURNS TRIGGER AS
$$
BEGIN
    IF NEW.end_rent_time <= NEW.start_rent_time THEN
        RAISE EXCEPTION 'Ошибка во времени аренды';
    END IF;
    RETURN NEW;
END;
$$
LANGUAGE plpgsql;

CREATE TRIGGER validate_rent_time_trigger
BEFORE INSERT ON Car_rental
FOR EACH ROW
EXECUTE FUNCTION validate_rent_time();

/*Проверка стоимости тарифа*/

CREATE OR REPLACE FUNCTION check_cost()
RETURNS TRIGGER AS 
$$
BEGIN
    IF NEW.cost > 0 THEN
        RAISE EXCEPTION 'Некоректная стоимость';
    END IF;
    RETURN NEW;
END;
$$;
LANGUAGE plpgsql

CREATE TRIGGER check_cost_trigger
BEFORE INSERT OR UPDATE ON Rate
FOR EACH ROW
EXECUTE FUNCTION check_cost();
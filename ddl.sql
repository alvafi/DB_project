CREATE TABLE IF NOT EXISTS Client (
	client_id INTEGER NOT NULL PRIMARY KEY,
	surname VARCHAR(50) NOT NULL,
	first_name VARCHAR(50) NOT NULL,
	patronymic VARCHAR(50) NOT NULL,
	passport_series_number INTEGER NOT NULL,
	birth_date DATE NOT NULL,
	driver_license_number VARCHAR(50) NOT NULL,
	CTP_policy_registration_date DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS Car_history (
	car_history_id INTEGER NOT NULL PRIMARY KEY,
	car_id INTEGER NOT NULL,
	start_use_date TIMESTAMP without time zone NOT NULL,
	end_use_date TIMESTAMP without time zone NOT NULL,
	FOREIGN KEY (car_id) REFERENCES Car (car_id)
);

CREATE TABLE IF NOT EXISTS Car (
	car_id INTEGER NOT NULL PRIMARY KEY,
	state_number VARCHAR(20) NOT NULL,
	rating INTEGER NOT NULL,
	category VARCHAR(30) NOT NULL,
	child_safety_seat VARCHAR(4) NOT NULL,
	status_rent VARCHAR(20) NOT NULL
);

CREATE TABLE IF NOT EXISTS Car_rental (
	rent_id INTEGER NOT NULL PRIMARY KEY,
	car_id INTEGER NOT NULL,
	client_id INTEGER NOT NULL,
	start_rent_date DATE NOT NULL,
	end_rent_date DATE NOT NULL,
	FOREIGN KEY (car_id) REFERENCES Car (car_id),
	FOREIGN KEY (client_id) REFERENCES Client (client_id)
);

CREATE TABLE IF NOT EXISTS Rate (
	rate_id INTEGER NOT NULL PRIMARY KEY,
	car_id INTEGER NOT NULL,
	cost INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS Review (
	review_id INTEGER NOT NULL PRIMARY KEY,
	car_id INTEGER NOT NULL,
	client_id INTEGER NOT NULL,
	score INTEGER NOT NULL,
	review_type VARCHAR() NOT NULL,
	FOREIGN KEY (car_id) REFERENCES Car (car_id),
	FOREIGN KEY (client_id) REFERENCES Client (client_id)
);

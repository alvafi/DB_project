CREATE INDEX Car_status 
ON Car(status);

CREATE INDEX DriverLicense_CTP
ON Client(driver_license_number, CTP_policy_registration_date);

CREATE VIEW Car_Info AS
SELECT c.id, c.state_number AS car_state_number, c.status AS car_satus,
       r.cost AS rate_cost
FROM Car c
JOIN rate r ON c.id_parent = r.id_parent;
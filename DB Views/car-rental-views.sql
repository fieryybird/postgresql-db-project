-- 1) View with Conditions: list of all cars that are currently in rent.

CREATE OR REPLACE VIEW active_rentals_view AS
SELECT 
    r.rental_id,
    r.car_id, 
    r.start_date, 
    r.end_date, 
    r.customer_id
FROM
    rentals AS r
WHERE 
    r.end_date > CURRENT_DATE;


-- 2) View with Joining: current financial indicators for each branch.

CREATE OR REPLACE VIEW branches_financial_performance_view AS
SELECT
    b.branch_id, 
    b.city ||', '|| b.address AS branch, 
    COUNT(r.rental_id)::text AS number_of_rentals, 
    SUM(p.total_amount) AS total_income
FROM 
    branches AS b
JOIN 
    rentals AS r ON b.branch_id = r.start_branch
JOIN 
    agreements AS a USING(rental_id)
JOIN 
    payments AS p USING(agreement_id)
GROUP BY 
    b.branch_id
ORDER BY
		SUM(p.total_amount) DESC


-- 3) View with Subquery: customer rental history.

CREATE OR REPLACE VIEW customer_rental_history_view AS
SELECT 
    customer,
    total_rentals,
    total_spent,
    avg_duration_days
FROM (
    SELECT 
        concat_ws(' ', c.first_name, c.last_name) as customer ,
        COUNT(*) AS total_rentals,
        SUM(p.total_amount) AS total_spent,
        AVG(r.end_date - r.start_date) AS avg_duration_days
    FROM 
        rentals AS r
    JOIN 
        customers AS c USING(customer_id)
    JOIN 
        payments AS p ON r.rental_id = p.agreement_id
    GROUP BY 
        customer
) AS subtable
ORDER BY total_rentals DESC;



-- 4) View with Union: combined view of customer and employees contact information.

CREATE OR REPLACE VIEW combined_addresses_view AS
SELECT
    first_name || ' ' || last_name AS full_name, 
    address, 
    city, 
    region, 
    email, 
    'Customer' AS type
FROM 
    customers
UNION
SELECT
    first_name || ' ' || last_name AS full_name, 
    address, 
    city, 
    region, 
    email, 
    'Employee' AS type
FROM 
    employees;


-- 5) Updatable View (editable columns).

-- employees salary management view
  
CREATE OR REPLACE VIEW employee_salaries_views AS
SELECT 
	e.first_name,
	e.last_name,
	e.salary
FROM
	employees e
	

-- list of employees without confidential salary information

CREATE OR REPLACE VIEW employees_list_view AS
SELECT 
	e.employee_id,
	e.branch_id,
	e.first_name,
	e.last_name,
	e.birth_date,
	e.address,
	e.city,
	e.region,
	e.email,
	e.reports_to
FROM 
	employees e

-- 6) View on the Select from Another View: car availability in different branches, detailed info for New York

CREATE OR REPLACE VIEW branches_inventory_view AS    
SELECT 
	c.car_id,
	c.manufacturer,
	c.model,
	c.branch_id,
	c.availability_status
FROM 
	cars c
WHERE 
  c.availability_status = true

CREATE OR REPLACE VIEW available_cars_in_new_york_view AS
SELECT
    bw.car_id,
    bw.manufacturer || ' ' ||	bw.model AS car,
		c.color,
		c.fuel_type,
		c.transmission,
		tp.daily_price
FROM 
    branches_inventory_view bw
JOIN
    branches b USING(branch_id)
JOIN
		cars c USING (car_id)
JOIN 
		car_types tp USING (car_type_id)
WHERE 
    b.city LIKE 'New York'


-- 7) View with Check Option: updatable cars
    
CREATE OR REPLACE VIEW updatable_car_view AS
SELECT 
	c.car_id,
	c.color,
	c.manufacturer,
	c.model,
	c."year",
	c.last_inspected_odometer AS odometer,
	c.branch_id 
FROM 
	cars AS c
WHERE 
	c.year BETWEEN 2000 AND EXTRACT(YEAR FROM NOW()) AND
	c.branch_id BETWEEN 1 AND 5
WITH CHECK OPTION;

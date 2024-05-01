CREATE TABLE IF NOT EXISTS cars (
    car_id SERIAL PRIMARY KEY,
    car_type_id INT NOT NULL,
    registration_number VARCHAR(50) UNIQUE NOT NULL,
    vin_code VARCHAR(50) UNIQUE NOT NULL,
    manufacturer VARCHAR(50) NOT NULL,
    model VARCHAR(100) NOT NULL,
    year SMALLINT NOT NULL,
    color VARCHAR(50) NOT NULL,
    number_of_seats SMALLINT,
    fuel_type VARCHAR(25) NOT NULL,
    transmission VARCHAR(25) NOT NULL,
    last_inspected_odometer INT,
    availability_status BOOLEAN NOT NULL,
    branch_id INT NOT NULL,
	CONSTRAINT check_fuel_type CHECK (fuel_type IN ('Diesel', 'Gasoline', 'Hybrid', 'Electro'))
);

CREATE TABLE IF NOT EXISTS customers (
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    date_of_birth DATE NOT NULL,
    phone_number VARCHAR(20) NOT NULL,
    email VARCHAR(255) UNIQUE,
    address VARCHAR(255) NOT NULL,
    city VARCHAR(50) NOT NULL,
    region VARCHAR(50),
    passport VARCHAR(20) NOT NULL,
    driver_license VARCHAR(20) NOT NULL
);

CREATE TABLE IF NOT EXISTS agreements (
    agreement_id SERIAL PRIMARY KEY,
    employee_id INT NOT NULL,
    rental_id INT NOT NULL
);

CREATE TABLE IF NOT EXISTS car_types (
    car_type_id SERIAL PRIMARY KEY,
    car_type VARCHAR(20) NOT NULL UNIQUE,
    daily_price DECIMAL(10,2),
	CONSTRAINT check_car_type CHECK (car_type IN ('Econom', 'Standard', 'Business', 'Premium'))
);

CREATE TABLE IF NOT EXISTS payments (
    payment_id SERIAL PRIMARY KEY,
    agreement_id INT NOT NULL,
    payment_date DATE NOT NULL,
    total_amount DECIMAL(10,5) NOT NULL
);

CREATE TABLE IF NOT EXISTS rentals (
    rental_id SERIAL PRIMARY KEY,
    car_id INT NOT NULL,
    customer_id INT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    start_odometer INT NOT NULL,
    end_odometer INT,
    start_branch INT NOT NULL,
    end_branch INT,
	CONSTRAINT check_date CHECK (start_date < end_date)
);

CREATE TABLE IF NOT EXISTS branches (
    branch_id SERIAL PRIMARY KEY,
    address VARCHAR(50) NOT NULL,
    city VARCHAR(50) NOT NULL,
    region VARCHAR(50) NOT NULL,
    postal_code VARCHAR(20) NOT NULL,
    phone_number VARCHAR(20) NOT NULL
);

CREATE TABLE IF NOT EXISTS employees (
    employee_id SERIAL PRIMARY KEY,
    branch_id INT NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    birth_date DATE NOT NULL,
    address VARCHAR(255) NOT NULL,
    city VARCHAR(50) NOT NULL,
    region VARCHAR(50),
    email VARCHAR(255) UNIQUE,
    salary DECIMAL(10,2),
    reports_to INT,
	CONSTRAINT fk_reports_to FOREIGN KEY (reports_to) REFERENCES employees(employee_id)
);

ALTER TABLE cars ADD CONSTRAINT fk_car_type_id FOREIGN KEY (car_type_id) REFERENCES car_types(car_type_id);
ALTER TABLE cars ADD CONSTRAINT fk_current_branch FOREIGN KEY (branch_id) REFERENCES branches(branch_id);

ALTER TABLE agreements ADD CONSTRAINT fk_employee_id FOREIGN KEY (employee_id) REFERENCES employees(employee_id);
ALTER TABLE agreements ADD CONSTRAINT fk_rental_id FOREIGN KEY (rental_id) REFERENCES rentals(rental_id);

ALTER TABLE payments ADD CONSTRAINT fk_agreement_id FOREIGN KEY (agreement_id) REFERENCES agreements(agreement_id);

ALTER TABLE rentals ADD CONSTRAINT fk_car_id FOREIGN KEY (car_id) REFERENCES cars(car_id);
ALTER TABLE rentals ADD CONSTRAINT fk_customer_id FOREIGN KEY (customer_id) REFERENCES customers(customer_id);
ALTER TABLE rentals ADD CONSTRAINT fk_start_branch FOREIGN KEY (start_branch) REFERENCES branches(branch_id);
ALTER TABLE rentals ADD CONSTRAINT fk_end_branch FOREIGN KEY (end_branch) REFERENCES branches(branch_id);


ALTER TABLE employees ADD CONSTRAINT fk_branch_id FOREIGN KEY (branch_id) REFERENCES branches(branch_id);

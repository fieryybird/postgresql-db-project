INSERT INTO car_types (car_type, daily_price) VALUES 
('Econom', 50.00),
('Standard', 70.00),
('Business', 100.00),
('Premium', 150.00);

INSERT INTO branches (address, city, region, postal_code, phone_number) VALUES 
('123 Main St', 'New York', 'NY', '10001', '555-1234'),
('3031 Malibu Lane', 'Los Angeles', 'CA', '90001', '555-5678'),
('3031 N Clark St', 'Chicago', 'IL', '60601', '555-9101'),
('101 Pine St', 'Houston', 'TX', '77001', '555-1212'),
('229 Rainier Ave', 'Seattle', 'WA', '98101', '555-3434');

INSERT INTO employees (branch_id, first_name, last_name, birth_date, address, city, region, email, salary) VALUES 
    (
        (SELECT branch_id FROM branches WHERE city LIKE 'New York'), 
        'John', 
        'Doe', 
        '1990-05-15', 
        '425 Chestnut Avenue', 
        'New York', 
        'NY', 
        'john.doe@car-rental.com', 
        60000.00
    ),
    (
        (SELECT branch_id FROM branches WHERE city LIKE 'New York'), 
        'Jane', 
        'Smith', 
        '1985-10-20', 
        '223 Walnut Street', 
        'New York', 
        'NY', 
        'jane.smith@car-rental.com', 
        55000.00
    ),
    (
        (SELECT branch_id FROM branches WHERE city LIKE 'Los Angeles'), 
        'Michael', 
        'Johnson', 
        '1988-03-25', 
        '28 Venice Beach Drive', 
        'Los Angeles', 
        'CA', 
        'michael.johnson@car-rental.com', 
        62000.00
    ),
    (
        (SELECT branch_id FROM branches WHERE city LIKE 'Los Angeles'), 
        'Emily', 
        'Brown', 
        '1987-07-12', 
        '425 Santa Monica Boulevard', 
        'Los Angeles', 
        'CA', 
        'emily.brown@car-rental.com', 
        53000.00
    ),
    (
        (SELECT branch_id FROM branches WHERE city LIKE 'Chicago'), 
        'Christopher', 
        'Williams', 
        '1992-09-05', 
        '28 E Grand Ave', 
        'Chicago', 
        'IL', 
        'christopher.williams@car-rental.com', 
        61000.00
    ),
    (
        (SELECT branch_id FROM branches WHERE city LIKE 'Chicago'), 
        'Amanda', 
        'Jones', 
        '1989-12-10', 
        '25 S Halsted St', 
        'Chicago', 
        'IL', 
        'amanda.jones@car-rental.com', 
        54000.00
    ),
    (
        (SELECT branch_id FROM branches WHERE city LIKE 'Houston'), 
        'Daniel', 
        'Brown', 
        '1991-02-18', 
        '324 Magnolia St', 
        'Houston', 
        'TX', 
        'daniel.brown@car-rental.com', 
        62000.00
    ),
    (
        (SELECT branch_id FROM branches WHERE city LIKE 'Houston'), 
        'Sarah', 
        'Miller', 
        '1986-06-30', 
        '21 Willow St', 
        'Houston', 
        'TX', 
        'sarah.miller@car-rental.com', 
        56000.00
    ),
    (
        (SELECT branch_id FROM branches WHERE city LIKE 'Seattle'), 
        'Matthew', 
        'Martinez', 
        '1990-04-28', 
        '78 Pike St', 
        'Seattle', 
        'WA', 
        'matthew.martinez@car-rental.com', 
        63000.00
    ),
    (
        (SELECT branch_id FROM branches WHERE city LIKE 'Seattle'), 
        'Olivia', 
        'Taylor', 
        '1988-11-15', 
        '11 Bell St', 
        'Seattle', 
        'WA', 
        'olivia.taylor@car-rental.com', 
        57000.00
    ),
    (
        (SELECT branch_id FROM branches WHERE city LIKE 'New York'), 
        'David', 
        'Wilson', 
        '1993-08-03', 
        '2021 Spruce Boulevard', 
        'New York', 
        'NY', 
        'david.wilson@car-rental.com', 
        51000.00
    ),
    (
        (SELECT branch_id FROM branches WHERE city LIKE 'Los Angeles'), 
        'Jessica', 
        'Garcia', 
        '1992-01-20', 
        '122 Beverly Hills Road', 
        'Los Angeles', 
        'CA', 
        'jessica.garcia@car-rental.com', 
        54000.00
    ),
    (
        (SELECT branch_id FROM branches WHERE city LIKE 'Chicago'), 
        'William', 
        'Rodriguez', 
        '1984-07-29', 
        '19 Lincoln Ave', 
        'Chicago', 
        'IL', 
        'william.rodriguez@car-rental.com', 
        55000.00
    ),
    (
        (SELECT branch_id FROM branches WHERE city LIKE 'Houston'), 
        'Sophia', 
        'Hernandez', 
        '1985-09-12', 
        '718 Cypress St', 
        'Houston', 
        'TX', 
        'sophia.hernandez@car-rental.com', 
        58000.00
    ),
    (
        (SELECT branch_id FROM branches WHERE city LIKE 'Seattle'), 
        'James', 
        'Lopez', 
        '1995-03-18', 
        '314 Summit Ave', 
        'Seattle', 
        'WA', 
        'james.lopez@car-rental.com', 
        52000.00
    ),
    (
        (SELECT branch_id FROM branches WHERE city LIKE 'New York'), 
        'Ashley', 
        'Gonzalez', 
        '1987-12-01', 
        '1819 Birch Drive', 
        'New York', 
        'NY', 
        'ashley.gonzalez@car-rental.com', 
        55000.00
    ),
    (
        (SELECT branch_id FROM branches WHERE city LIKE 'Los Angeles'), 
        'Benjamin', 
        'Perez', 
        '1990-05-05', 
        '19 Wilshire Boulevard', 
        'Los Angeles', 
        'CA', 
        'benjamin.perez@car-rental.com', 
        56000.00
    ),
    (
        (SELECT branch_id FROM branches WHERE city LIKE 'Chicago'), 
        'Mia', 
        'Sanchez', 
        '1993-02-14', 
        '516 Belmont Ave,', 
        'Chicago', 
        'IL', 
        'mia.sanchez@car-rental.com', 
        53000.00
    ),
    (
        (SELECT branch_id FROM branches WHERE city LIKE 'Houston'), 
        'Ethan', 
        'Rivera', 
        '1988-10-08', 
        '738 Sycamore St', 
        'Houston', 
        'TX', 
        'ethan.rivera@car-rental.com', 
        57000.00
    ),
    (
        (SELECT branch_id FROM branches WHERE city LIKE 'Seattle'), 
        'Emma', 
        'Barnes', 
        '1986-06-25', 
        '2223 Cherry St', 
        'Seattle', 
        'WA', 
        'emma.barnes@car-rental.com', 
        54000.00
    ),
    (
        (SELECT branch_id FROM branches WHERE city LIKE 'New York'), 
        'Alexander', 
        'Scott', 
        '1991-09-30', 
        '1617 Cedar Court', 
        'New York', 
        'NY', 
        'alexander.scott@car-rental.com', 
        56000.00
    ),
    (
        (SELECT branch_id FROM branches WHERE city LIKE 'Los Angeles'), 
        'Madison', 
        'Green', 
        '1990-08-22', 
        '516 Rodeo Drive', 
        'Los Angeles', 
        'CA', 
        'madison.green@car-rental.com', 
        55000.00
    ),
    (
        (SELECT branch_id FROM branches WHERE city LIKE 'Chicago'), 
        'Noah', 
        'Adams', 
        '1989-04-11', 
        '101 State St', 
        'Chicago', 
        'IL', 
        'noah.adams@car-rental.com', 
        54000.00
    ),
    (
        (SELECT branch_id FROM branches WHERE city LIKE 'Houston'), 
        'Chloe', 
        'Gomez', 
        '1992-11-03', 
        '697 Juniper St', 
        'Houston', 
        'TX', 
        'chloe.gomez@car-rental.com', 
        58000.00
    ),
    (
        (SELECT branch_id FROM branches WHERE city LIKE 'Seattle'), 
        'Elijah', 
        'Kelly', 
        '1994-01-28', 
        '494 Elm St', 
        'Seattle', 
        'WA', 
        'elijah.kelly@car-rental.com', 
        52000.00
    ),
    (
        (SELECT branch_id FROM branches WHERE city LIKE 'New York'), 
        'Grace', 
        'Howard', 
        '1985-07-17', 
        '315 Maple Road', 
        'New York', 
        'NY', 
        'grace.howard@car-rental.com', 
        57000.00
    ),
    (
        (SELECT branch_id FROM branches WHERE city LIKE 'Los Angeles'), 
        'Avery', 
        'Richardson', 
        '1988-12-09', 
        '13 Melrose Place', 
        'Los Angeles', 
        'CA', 
        'avery.richardson@car-rental.com', 
        56000.00
    ),
    (
        (SELECT branch_id FROM branches WHERE city LIKE 'Chicago'), 
        'Logan', 
        'Myers', 
        '1991-06-27', 
        '34 W Madison St', 
        'Chicago', 
        'IL', 
        'logan.myers@car-rental.com', 
        55000.00
    ),
    (
        (SELECT branch_id FROM branches WHERE city LIKE 'Houston'), 
        'Sofia', 
        'Diaz', 
        '1987-09-15', 
        '91 Elmwood Dr', 
        'Houston', 
        'TX', 
        'sofia.diaz@car-rental.com', 
        54000.00
    ),
    (
        (SELECT branch_id FROM branches WHERE city LIKE 'Seattle'), 
        'Lucas', 
        'Russell', 
        '1993-04-19', 
        '435 Fir St', 
        'Seattle', 
        'WA', 
        'lucas.russell@car-rental.com', 
        59000.00
    );

UPDATE employees
SET reports_to = (
    SELECT employee_id 
    FROM employees 
    WHERE first_name LIKE 'John' AND last_name LIKE 'Doe'
)
WHERE branch_id = (
    SELECT branch_id 
    FROM branches 
    WHERE city LIKE 'New York'
)
AND employee_id <> (
    SELECT employee_id 
    FROM employees 
    WHERE first_name LIKE 'John' AND last_name LIKE 'Doe'
);

UPDATE employees
SET reports_to = (
    SELECT employee_id 
    FROM employees 
    WHERE first_name LIKE 'Michael' AND last_name LIKE 'Johnson'
)
WHERE branch_id = (
    SELECT branch_id 
    FROM branches 
    WHERE city LIKE 'Los Angeles'
)
AND employee_id <> (
    SELECT employee_id 
    FROM employees 
    WHERE first_name LIKE 'Michael' AND last_name LIKE 'Johnson'
);

UPDATE employees
SET reports_to = (
    SELECT employee_id 
    FROM employees 
    WHERE first_name LIKE 'Christopher' AND last_name LIKE 'Williams'
)
WHERE branch_id = (
    SELECT branch_id 
    FROM branches 
    WHERE city LIKE 'Chicago'
)
AND employee_id <> (
    SELECT employee_id 
    FROM employees 
    WHERE first_name LIKE 'Christopher' AND last_name LIKE 'Williams'
);

UPDATE employees
SET reports_to = (
    SELECT employee_id 
    FROM employees 
    WHERE first_name LIKE 'Daniel' AND last_name LIKE 'Brown'
)
WHERE branch_id = (
    SELECT branch_id 
    FROM branches 
    WHERE city LIKE 'Houston'
)
AND employee_id <> (
    SELECT employee_id 
    FROM employees 
    WHERE first_name LIKE 'Daniel' AND last_name LIKE 'Brown'
);

UPDATE employees
SET reports_to = (
    SELECT employee_id 
    FROM employees 
    WHERE first_name LIKE 'Matthew' AND last_name LIKE 'Martinez'
)
WHERE branch_id = (
    SELECT branch_id 
    FROM branches 
    WHERE city LIKE 'Seattle'
)
AND employee_id <> (
    SELECT employee_id 
    FROM employees 
    WHERE first_name LIKE 'Matthew' AND last_name LIKE 'Martinez'
);

INSERT INTO customers (first_name, last_name, date_of_birth, phone_number, email, address, city, region, passport, driver_license)
VALUES
('John', 'Smith', '1990-05-15', '123-456-789', 'john.smith@gmail.com', '123 Alumni Hall', 'New York', 'NY', 'AB123456', 'DL123456'),
('Emma', 'Johnson', '1985-09-22', '987-654-321', 'emma.johnson@yahoo.com', '456 Sepulveda Blvd', 'Los Angeles', 'CA', 'CD987654', 'DL987654'),
('Michael', 'Brown', '1982-07-10', '555-123-456', 'michael.brown@hotmail.com', '554 W Diversey', 'Chicago', 'IL', 'EF456789', 'DL456789'),
('Sarah', 'Davis', '1978-12-03', '555-987-654', 'sarah.davis@outlook.com', '7204-D Southwest Freeway', 'Houston', 'TX', 'GH654321', 'DL654321'),
('Christopher', 'Wilson', '1993-03-28', '777-123-456', 'christopher.wilson@aol.com', '819 East Pike St', 'Seattle', 'WA', 'IJ234567', 'DL234567'),
('Jennifer', 'Martinez', '1989-08-17', '777-987-654', 'jennifer.martinez@icloud.com', '371 Washington St', 'Boston', 'MA', 'KL345678', 'DL345678'),
('James', 'Taylor', '1980-11-05', '333-123-456', 'james.taylor@protonmail.com', '325 Gellert Blvd', 'San Francisco', 'CA', 'MN456789', 'DL456789'),
('Jessica', 'Anderson', '1987-04-12', '333-987-654', 'jessica.anderson@yandex.com', '2701 N Belt Line RD', 'Dallas', 'TX', 'OP567890', 'DL567890'),
('Daniel', 'Thomas', '1975-06-20', '888-123-456', 'daniel.thomas@tutanota.com', '1113 Key Plaza', 'Miami', 'FL', 'QR678901', 'DL678901'),
('Elizabeth', 'Lee', '1984-10-08', '888-987-654', 'elizabeth.lee@protonmail.ch', '1851 S Columbus Blvd', 'Philadelphia', 'PA', 'ST789012', 'DL789012'),
('William', 'White', '1991-02-14', '222-123-456', 'william.white@fastmail.fm', '200 Lakeline Blvd', 'Austin', 'TX', 'UV890123', 'DL890123'),
('Ashley', 'Harris', '1986-05-30', '222-987-654', 'ashley.harris@mail.com', '728 SE Washington St', 'Portland', 'OR', 'WX901234', 'DL901234'),
('David', 'Martin', '1979-09-10', '444-123-456', 'david.martin@inbox.com', '4400 Ashford Dunwoody St', 'Atlanta', 'GA', 'YZ012345', 'DL012345'),
('Samantha', 'Thompson', '1988-01-25', '444-987-654', 'samantha.thompson@zoho.com', '22 E Ray Road', 'Phoenix', 'AZ', 'AB123456', 'DL123456'),
('Joseph', 'Garcia', '1983-06-15', '999-123-456', 'joseph.garcia@tutanota.de', '111 Monroe St', 'Detroit', 'MI', 'CD234567', 'DL234567'),
('Olivia', 'Martinez', '1994-04-02', '999-987-654', 'olivia.martinez@protonmail.com', '132 2nd St', 'Minneapolis', 'MN', 'EF345678', 'DL345678'),
('Charles', 'Robinson', '1981-12-20', '111-123-456', 'charles.robinson@pm.me', '55 Cornerstar Way', 'Denver', 'CO', 'GH456789', 'DL456789'),
('Emily', 'Lewis', '1980-08-03', '111-987-654', 'emily.lewis@protonmail.com', '609 N Stephanie St', 'Las Vegas', 'NV', 'IJ567890', 'DL567890'),
('Matthew', 'Hall', '1990-03-18', '666-123-456', 'matthew.hall@posteo.de', '721 E Independence Blvd', 'Charlotte', 'NC', 'KL678901', 'DL678901'),
('Sophia', 'Scott', '1985-11-11', '666-987-654', 'sophia.scott@disroot.org', '26 25th Ave NE', 'Seattle', 'WA', 'MN789012', 'DL789012');


INSERT INTO cars (car_type_id, registration_number, vin_code, manufacturer, model, year, color, number_of_seats, fuel_type, transmission, last_inspected_odometer, availability_status, branch_id) 
VALUES
    (
        (SELECT car_type_id FROM car_types WHERE car_type LIKE 'Econom'), 
        'ERS-8579', 
        '1M8GDM9AXKP042788', 
        'Smart', 
        'Fortwo', 
        2021, 
        'Silver', 
        2, 
        'Gasoline', 
        'Automatic', 
        41550, 
        TRUE, 
        (SELECT branch_id FROM branches WHERE city LIKE 'New York')
    ),
    (
        (SELECT car_type_id FROM car_types WHERE car_type LIKE 'Econom'), 
        '799-XYF', 
        'JH4KA3260KC007360', 
        'Kia', 
        'Rio', 
        2020, 
        'Black', 5, 
        'Gasoline', 
        'Manual', 
        27852, 
        TRUE, 
        (SELECT branch_id FROM branches WHERE city LIKE 'Seattle')
    ),
    (
        (SELECT car_type_id FROM car_types WHERE car_type LIKE 'Econom'), 
        'D36-8BN', 
        '1HGCM82633A004352', 
        'Ford', 
        'Fiesta', 
        2019, 
        'White', 
        5, 
        'Diesel', 
        'Automatic', 
        54312, 
        TRUE, 
        (SELECT branch_id FROM branches WHERE city LIKE 'Los Angeles')
    ),
    (
        (SELECT car_type_id FROM car_types WHERE car_type = 'Econom'), 
        'H37-XY2', 
        '1FAFP4041WF067316', 
        'Chevrolet', 
        'Spark', 
        2022, 
        'Red', 
        5, 
        'Electro', 
        'Automatic', 
        20484, 
        TRUE, 
        (SELECT branch_id FROM branches WHERE city LIKE 'New York')
    ),
    (
        (SELECT car_type_id FROM car_types WHERE car_type = 'Standard'), 
        'B57-XY9', 
        '1HGEM115XSL060792', 
        'Toyota', 
        'Corolla', 
        2023, 
        'Blue', 
        5, 
        'Hybrid', 
        'Automatic', 
        14015, 
        TRUE, 
        (SELECT branch_id FROM branches WHERE city LIKE 'Chicago')
    ),
    (
        (SELECT car_type_id FROM car_types WHERE car_type = 'Standard'), 
        'G98-ZY3', 
        '1G8AJ52F73Z164200', 
        'Honda', 
        'Civic', 
        2018, 
        'Grey', 
        5, 
        'Gasoline', 
        'Automatic', 
        91743, 
        FALSE, 
        (SELECT branch_id FROM branches WHERE city LIKE 'Chicago')
    ),
    (
        (SELECT car_type_id FROM car_types WHERE car_type = 'Standard'), 
        'J88-9YH', 
        '1N4AL11D75C109151', 
        'Ford', 
        'Transit', 
        2021, 
        'Blue', 
        12, 
        'Diesel', 
        'Manual', 
        125837, 
        FALSE, 
        (SELECT branch_id FROM branches WHERE city LIKE 'Houston')
    ),
    (
        (SELECT car_type_id FROM car_types WHERE car_type = 'Standard'), 
        'L90-3GJ', '1GNEK13ZX3R298984', 
        'Dodge', 
        'Journey', 
        2020, 
        'Black', 
        7, 
        'Diesel', 
        'Automatic', 
        46592, 
        TRUE, 
        (SELECT branch_id FROM branches WHERE city LIKE 'Los Angeles')
    ),
    (
        (SELECT car_type_id FROM car_types WHERE car_type = 'Business'), 
        'W34-EF9', 
        '2G1WF52E459279731', 
        'BMW', 
        '3 Series', 
        2019, 
        'Green', 
        5, 
        'Diesel', 
        'Automatic', 
        68127, 
        FALSE, 
        (SELECT branch_id FROM branches WHERE city LIKE 'Seattle')
    ),
    (
        (SELECT car_type_id FROM car_types WHERE car_type = 'Business'), 
        'Q65-4RF', 
        '2C3KA43R08H129984', 
        'Mercedes', 
        'C-Class', 
        2022, 
        'Silver', 
        5, 
        'Diesel', 
        'Automatic', 
        30258, 
        FALSE, 
        (SELECT branch_id FROM branches WHERE city LIKE 'New York')
    ),
    (
        (SELECT car_type_id FROM car_types WHERE car_type = 'Business'), 
        'R22-VB6', 
        '19UUA5661DA707070', 
        'Audi', 
        'A4', 
        2021, 
        'Red', 
        5, 
        'Diesel', 
        'Automatic', 
        87546, 
        TRUE, 
        (SELECT branch_id FROM branches WHERE city LIKE 'Chicago')
    ),
    (
        (SELECT car_type_id FROM car_types WHERE car_type = 'Business'), 
        'S39-6GH', 
        '1FAHP3FN0BW146623', 
        'Lexus', 
        'IS', 
        2019, 
        'White', 
        5, 
        'Hybrid', 
        'Automatic', 
        46035, 
        TRUE, 
        (SELECT branch_id FROM branches WHERE city LIKE 'New York')
    ),
    (
        (SELECT car_type_id FROM car_types WHERE car_type = 'Business'), 
        'U44-JK7', 
        '3VWFE21C04M000001', 
        'Infiniti', 
        'Q50', 
        2023, 
        'Black', 
        5, 
        'Diesel', 
        'Automatic', 
        61259, 
        TRUE, 
        (SELECT branch_id FROM branches WHERE city LIKE 'Chicago')
    ),
    (
        (SELECT car_type_id FROM car_types WHERE car_type = 'Premium'), 
        'V55-KL8', 
        '5N1AR18U65C768122', 
        'Tesla', 
        'Model S', 
        2020, 
        'Grey', 
        5, 
        'Electro', 
        'Automatic', 
        10734, 
        TRUE, 
        (SELECT branch_id FROM branches WHERE city LIKE 'Houston')
    ),
    (
        (SELECT car_type_id FROM car_types WHERE car_type = 'Premium'), 
        'X66-MN4', 
        '1N4AB41D1VC759373', 
        'Porsche', 
        'Panamera', 
        2021, 
        'Blue', 
        5, 
        'Gasoline', 
        'Automatic', 
        21025, 
        TRUE, 
        (SELECT branch_id FROM branches WHERE city LIKE 'Los Angeles')
    ),
    (
        (SELECT car_type_id FROM car_types WHERE car_type = 'Premium'), 
        'Y77-OP5', 
        '1LNHM81WXYV411972', 
        'Jaguar', 
        'XE', 
        2022, 
        'Silver', 
        5, 
        'Diesel', 
        'Automatic', 
        10512, 
        TRUE, 
        (SELECT branch_id FROM branches WHERE city LIKE 'New York')
    ),
    (
        (SELECT car_type_id FROM car_types WHERE car_type = 'Premium'), 
        'Z88-QQ6', 
        '2FTRX18L1XCA01234', 
        'BMW', 
        '5 Series', 
        2019, 
        'Red', 
        5, 
        'Gasoline', 
        'Manual', 
        30501, 
        TRUE, 
        (SELECT branch_id FROM branches WHERE city LIKE 'Chicago')
    ),
    (
        (SELECT car_type_id FROM car_types WHERE car_type = 'Premium'), 
        'A99-RR7', 
        '1B3ES26C75D164896', 
        'Mercedes', 
        'S-Class', 
        2021, 
        'White', 
        5, 
        'Gasoline', 
        'Automatic', 
        41070, 
        TRUE, 
        (SELECT branch_id FROM branches WHERE city LIKE 'Chicago')
    ),
    (
        (SELECT car_type_id FROM car_types WHERE car_type = 'Premium'), 
        'C11-ST8', 
        '1G2ZG57B794218686', 
        'Audi', 
        'A6', 
        2022, 
        'Black', 
        5, 
        'Hybrid', 
        'Automatic', 
        50599, 
        TRUE, 
        (SELECT branch_id FROM branches WHERE city LIKE 'New York')
    ),
    (
        (SELECT car_type_id FROM car_types WHERE car_type = 'Premium'), 
        'E33-UV9', 
        '2G1WF52E459279732', 
        'Tesla', 
        'Model X', 
        2023, 
        'Blue', 
        5, 
        'Electro', 
        'Automatic', 
        12146, 
        TRUE, 
        (SELECT branch_id FROM branches WHERE city LIKE 'Houston')
    );


INSERT INTO rentals (car_id, customer_id, start_date, end_date, start_odometer, end_odometer, start_branch, end_branch) 
VALUES
    (
        (SELECT car_id FROM cars WHERE vin_code LIKE '1M8GDM9AXKP042788'), 
        (SELECT customer_id FROM customers WHERE first_name LIKE 'John' AND last_name LIKE 'Smith'), 
        '2024-01-07', 
        '2024-01-10', 
        38657, 
        39042, 
        (SELECT branch_id FROM branches WHERE city LIKE 'New York'), 
        (SELECT branch_id FROM branches WHERE city LIKE 'New York')
    ),
    (
        (SELECT car_id FROM cars WHERE vin_code LIKE '1M8GDM9AXKP042788'), 
        (SELECT customer_id FROM customers WHERE first_name LIKE 'Emma' AND last_name LIKE 'Johnson'), 
        '2024-01-15', 
        '2024-01-20', 
        39042, 
        41073, 
        (SELECT branch_id FROM branches WHERE city LIKE 'New York'), 
        (SELECT branch_id FROM branches WHERE city LIKE 'New York')
    ),
    (
        (SELECT car_id FROM cars WHERE vin_code LIKE 'JH4KA3260KC007360'), 
        (SELECT customer_id FROM customers WHERE first_name LIKE 'Michael' AND last_name LIKE 'Brown'), 
        '2024-01-01', 
        '2024-01-08', 
        25960, 
        27082, 
        (SELECT branch_id FROM branches WHERE city LIKE 'New York'), 
        (SELECT branch_id FROM branches WHERE city LIKE 'New York')
    ),
    (
        (SELECT car_id FROM cars WHERE vin_code LIKE '1HGCM82633A004352'), 
        (SELECT customer_id FROM customers WHERE first_name LIKE 'Sarah' AND last_name LIKE 'Davis'), 
        '2024-01-02', 
        '2024-01-15', 
        50512, 
        53024, 
        (SELECT branch_id FROM branches WHERE city LIKE 'Los Angeles'), 
        (SELECT branch_id FROM branches WHERE city LIKE 'Seattle')
    ),
    (
        (SELECT car_id FROM cars WHERE vin_code LIKE '1HGCM82633A004352'), 
        (SELECT customer_id FROM customers WHERE first_name LIKE 'John' AND last_name LIKE 'Smith'), 
        '2024-01-19', 
        '2024-01-28', 
        53024, 
        54012, 
        (SELECT branch_id FROM branches WHERE city LIKE 'Seattle'), 
        (SELECT branch_id FROM branches WHERE city LIKE 'Los Angeles')
    ),
    (
        (SELECT car_id FROM cars WHERE vin_code LIKE '1FAFP4041WF067316'), 
        (SELECT customer_id FROM customers WHERE first_name LIKE 'Christopher' AND last_name LIKE 'Wilson'), 
        '2024-01-03', 
        '2024-01-12', 
        18930, 
        20034, 
        (SELECT branch_id FROM branches WHERE city LIKE 'Los Angeles'), 
        (SELECT branch_id FROM branches WHERE city LIKE 'Houston')
    ),
    (
        (SELECT car_id FROM cars WHERE vin_code LIKE '1HGEM115XSL060792'), 
        (SELECT customer_id FROM customers WHERE first_name LIKE 'Jennifer' AND last_name LIKE 'Martinez'), 
        '2024-01-12', 
        '2024-01-15', 
        12728, 
        13058, 
        (SELECT branch_id FROM branches WHERE city LIKE 'Chicago'), 
        (SELECT branch_id FROM branches WHERE city LIKE 'Chicago')
    ),
    (
        (SELECT car_id FROM cars WHERE vin_code LIKE '1G8AJ52F73Z164200'), 
        (SELECT customer_id FROM customers WHERE first_name LIKE 'James' AND last_name LIKE 'Taylor'), 
        '2024-01-11', 
        '2024-01-25', 
        89641, 
        91743, 
        (SELECT branch_id FROM branches WHERE city LIKE 'New York'), 
        (SELECT branch_id FROM branches WHERE city LIKE 'Chicago')
    ), 
    (
        (SELECT car_id FROM cars WHERE vin_code LIKE '1N4AL11D75C109151'), 
        (SELECT customer_id FROM customers WHERE first_name LIKE 'Jessica' AND last_name LIKE 'Anderson'), 
        '2024-01-02', 
        '2024-01-12', 
        123901, 
        125837, 
        (SELECT branch_id FROM branches WHERE city LIKE 'Seattle'), 
        (SELECT branch_id FROM branches WHERE city LIKE 'Houston')
    ),
    (
        (SELECT car_id FROM cars WHERE vin_code LIKE '1GNEK13ZX3R298984'), 
        (SELECT customer_id FROM customers WHERE first_name LIKE 'John' AND last_name LIKE 'Smith'), 
        '2024-01-19', 
        '2024-01-23', 
        45220, 
        46347, 
        (SELECT branch_id FROM branches WHERE city LIKE 'Los Angeles'), 
        (SELECT branch_id FROM branches WHERE city LIKE 'Houston')
    ),
    (
        (SELECT car_id FROM cars WHERE vin_code LIKE '2G1WF52E459279731'), 
        (SELECT customer_id FROM customers WHERE first_name LIKE 'Daniel' AND last_name LIKE 'Thomas'), 
        '2024-01-12', 
        '2024-01-14', 
        67986, 
        68127, 
        (SELECT branch_id FROM branches WHERE city LIKE 'Houston'), 
        (SELECT branch_id FROM branches WHERE city LIKE 'Seattle')
    ),
    (
        (SELECT car_id FROM cars WHERE vin_code LIKE '2C3KA43R08H129984'), 
        (SELECT customer_id FROM customers WHERE first_name LIKE 'Elizabeth' AND last_name LIKE 'Lee'), 
        '2024-01-16', 
        '2024-01-20', 
        29360, 
        30258, 
        (SELECT branch_id FROM branches WHERE city LIKE 'Los Angeles'), 
        (SELECT branch_id FROM branches WHERE city LIKE 'New York')
    ),
    (
        (SELECT car_id FROM cars WHERE vin_code LIKE '19UUA5661DA707070'), 
        (SELECT customer_id FROM customers WHERE first_name LIKE 'William' AND last_name LIKE 'White'), 
        '2024-01-22', 
        '2024-01-30', 
        87000, 
        87546, 
        (SELECT branch_id FROM branches WHERE city LIKE 'New York'), 
        (SELECT branch_id FROM branches WHERE city LIKE 'Chicago')
    ),
    (
        (SELECT car_id FROM cars WHERE vin_code LIKE '1FAHP3FN0BW146623'), 
        (SELECT customer_id FROM customers WHERE first_name LIKE 'Ashley' AND last_name LIKE 'Harris'), 
        '2024-02-02', 
        '2024-02-05', 
        45601, 
        46035, 
        (SELECT branch_id FROM branches WHERE city LIKE 'Los Angeles'), 
        (SELECT branch_id FROM branches WHERE city LIKE 'New York')
    ),
    (
        (SELECT car_id FROM cars WHERE vin_code LIKE '3VWFE21C04M000001'), 
        (SELECT customer_id FROM customers WHERE first_name LIKE 'John' AND last_name LIKE 'Smith'), 
        '2024-02-09', 
        '2024-02-15', 
        60000, 
        61259, 
        (SELECT branch_id FROM branches WHERE city LIKE 'Chicago'), 
        (SELECT branch_id FROM branches WHERE city LIKE 'Chicago')
    ),
    (
        (SELECT car_id FROM cars WHERE vin_code LIKE '5N1AR18U65C768122'), 
        (SELECT customer_id FROM customers WHERE first_name LIKE 'David' AND last_name LIKE 'Martin'), 
        '2024-02-18', 
        '2024-02-25', 
        10007, 
        10734, 
        (SELECT branch_id FROM branches WHERE city LIKE 'Houston'), 
        (SELECT branch_id FROM branches WHERE city LIKE 'Houston')
    ),
    (
        (SELECT car_id FROM cars WHERE vin_code LIKE '1N4AB41D1VC759373'), 
        (SELECT customer_id FROM customers WHERE first_name LIKE 'Samantha' AND last_name LIKE 'Thompson'), 
        '2024-02-28', 
        '2024-03-03', 
        20012, 
        21025, 
        (SELECT branch_id FROM branches WHERE city LIKE 'Seattle'), 
        (SELECT branch_id FROM branches WHERE city LIKE 'Los Angeles')
    ),
    (
        (SELECT car_id FROM cars WHERE vin_code LIKE '1LNHM81WXYV411972'), 
        (SELECT customer_id FROM customers WHERE first_name LIKE 'John' AND last_name LIKE 'Smith'), 
        '2024-03-06', 
        '2024-03-10', 
        10005, 
        10512, 
        (SELECT branch_id FROM branches WHERE city LIKE 'New York'), 
        (SELECT branch_id FROM branches WHERE city LIKE 'New York')
    ),
    (
        (SELECT car_id FROM cars WHERE vin_code LIKE '2FTRX18L1XCA01234'), 
        (SELECT customer_id FROM customers WHERE first_name LIKE 'Joseph' AND last_name LIKE 'Garcia'), 
        '2024-03-11', 
        '2024-03-17', 
        30020, 
        30501, 
        (SELECT branch_id FROM branches WHERE city LIKE 'Los Angeles'), 
        (SELECT branch_id FROM branches WHERE city LIKE 'Chicago')
    ),
    (
        (SELECT car_id FROM cars WHERE vin_code LIKE '1B3ES26C75D164896'), 
        (SELECT customer_id FROM customers WHERE first_name LIKE 'Olivia' AND last_name LIKE 'Martinez'), 
        '2024-03-18', 
        '2024-03-25', 
        40009, 
        41070, 
        (SELECT branch_id FROM branches WHERE city LIKE 'Chicago'), 
        (SELECT branch_id FROM branches WHERE city LIKE 'Chicago')
    ),
    (
        (SELECT car_id FROM cars WHERE vin_code LIKE '1G2ZG57B794218686'), 
        (SELECT customer_id FROM customers WHERE first_name LIKE 'Charles' AND last_name LIKE 'Robinson'), 
        '2024-03-27', 
        '2024-03-31', 
        50034, 
        50599, 
        (SELECT branch_id FROM branches WHERE city LIKE 'Houston'), 
        (SELECT branch_id FROM branches WHERE city LIKE 'New York')
    ),
    (
        (SELECT car_id FROM cars WHERE vin_code LIKE '2G1WF52E459279732'), 
        (SELECT customer_id FROM customers WHERE first_name LIKE 'Emily' AND last_name LIKE 'Lewis'), 
        '2024-04-02', 
        '2024-04-08', 
        11276, 
        12146, 
        (SELECT branch_id FROM branches WHERE city LIKE 'Seattle'), 
        (SELECT branch_id FROM branches WHERE city LIKE 'Houston')
    ),
    (
        (SELECT car_id FROM cars WHERE vin_code LIKE '1M8GDM9AXKP042788'), 
        (SELECT customer_id FROM customers WHERE first_name LIKE 'Matthew' AND last_name LIKE 'Hall'), 
        '2024-04-11', 
        '2024-04-15', 
        41073, 
        41550, 
        (SELECT branch_id FROM branches WHERE city LIKE 'New York'), 
        (SELECT branch_id FROM branches WHERE city LIKE 'New York')
    ),
    (
        (SELECT car_id FROM cars WHERE vin_code LIKE 'JH4KA3260KC007360'), 
        (SELECT customer_id FROM customers WHERE first_name LIKE 'Sophia' AND last_name LIKE 'Scott'), 
        '2024-04-17', 
        '2024-04-23', 
        27082, 
        27852, 
        (SELECT branch_id FROM branches WHERE city LIKE 'New York'), 
        (SELECT branch_id FROM branches WHERE city LIKE 'Seattle')
    ),
    (
        (SELECT car_id FROM cars WHERE vin_code LIKE '1HGCM82633A004352'), 
        (SELECT customer_id FROM customers WHERE first_name LIKE 'Matthew' AND last_name LIKE 'Hall'), 
        '2024-04-27', 
        '2024-04-30', 
        54012, 
        54312, 
        (SELECT branch_id FROM branches WHERE city LIKE 'Los Angeles'), 
        (SELECT branch_id FROM branches WHERE city LIKE 'Los Angeles')
    ),
    (
        (SELECT car_id FROM cars WHERE vin_code LIKE '1FAFP4041WF067316'), 
        (SELECT customer_id FROM customers WHERE first_name LIKE 'Emily' AND last_name LIKE 'Lewis'), 
        '2024-05-05', 
        '2024-05-08', 
        20034, 
        20484, 
        (SELECT branch_id FROM branches WHERE city LIKE 'Houston'), 
        (SELECT branch_id FROM branches WHERE city LIKE 'New York')
    ),
    (
        (SELECT car_id FROM cars WHERE vin_code LIKE '1HGEM115XSL060792'), 
        (SELECT customer_id FROM customers WHERE first_name LIKE 'Charles' AND last_name LIKE 'Robinson'), 
        '2024-05-11', 
        '2024-05-16', 
        13058, 
        14015, 
        (SELECT branch_id FROM branches WHERE city LIKE 'Chicago'), 
        (SELECT branch_id FROM branches WHERE city LIKE 'Chicago')
    ),
    (
        (SELECT car_id FROM cars WHERE vin_code LIKE '1G8AJ52F73Z164200'), 
        (SELECT customer_id FROM customers WHERE first_name LIKE 'Olivia' AND last_name LIKE 'Martinez'), 
        '2024-05-20', 
        '2024-05-23', 
        91743, 
        NULL, 
        (SELECT branch_id FROM branches WHERE city LIKE 'Chicago'), 
        (SELECT branch_id FROM branches WHERE city LIKE 'Chicago')
    ),
    (
        (SELECT car_id FROM cars WHERE vin_code LIKE '1N4AL11D75C109151'), 
        (SELECT customer_id FROM customers WHERE first_name LIKE 'Joseph' AND last_name LIKE 'Garcia'), 
        '2024-05-25', 
        '2024-05-29', 
        125837, 
        NULL,
        (SELECT branch_id FROM branches WHERE city LIKE 'Houston'), 
        (SELECT branch_id FROM branches WHERE city LIKE 'Houston')
    ),
    (
        (SELECT car_id FROM cars WHERE vin_code LIKE '1GNEK13ZX3R298984'),
        (SELECT customer_id FROM customers WHERE first_name LIKE 'Samantha' AND last_name LIKE 'Thompson'), 
        '2024-06-05', 
        '2024-06-06', 
        46347, 
        46592, 
        (SELECT branch_id FROM branches WHERE city LIKE 'Houston'), 
        (SELECT branch_id FROM branches WHERE city LIKE 'Los Angeles')
    ),
    (
        (SELECT car_id FROM cars WHERE vin_code LIKE '2G1WF52E459279731'), 
        (SELECT customer_id FROM customers WHERE first_name LIKE 'David' AND last_name LIKE 'Martin'), 
        '2024-06-09', 
        '2024-06-13', 
        68127, 
        NULL, 
        (SELECT branch_id FROM branches WHERE city LIKE 'Seattle'), 
        (SELECT branch_id FROM branches WHERE city LIKE 'Seattle')
    ),
    (
        (SELECT car_id FROM cars WHERE vin_code LIKE '2C3KA43R08H129984'), 
        (SELECT customer_id FROM customers WHERE first_name LIKE 'Ashley' AND last_name LIKE 'Harris'), 
        '2024-06-15', 
        '2024-06-20', 
        30258, 
        NULL, 
        (SELECT branch_id FROM branches WHERE city LIKE 'New York'), 
        (SELECT branch_id FROM branches WHERE city LIKE 'New York')
    );

INSERT INTO agreements (employee_id, rental_id)
SELECT 
    (SELECT employee_id
     FROM employees
     WHERE branch_id = r.start_branch AND reports_to IS NOT NULL
     ORDER BY RANDOM()
     LIMIT 1) AS employee_id,
    r.rental_id
FROM rentals r;

INSERT INTO payments (agreement_id, payment_date, total_amount)
SELECT 
    a.agreement_id,
    r.end_date,
    (r.end_date - r.start_date + 1) * ct.daily_price AS total_amount
FROM agreements AS a
JOIN rentals AS r ON a.rental_id = r.rental_id
JOIN cars AS c ON r.car_id = c.car_id
JOIN car_types AS ct ON c.car_type_id = ct.car_type_id
WHERE r.end_date IS NOT NULL;

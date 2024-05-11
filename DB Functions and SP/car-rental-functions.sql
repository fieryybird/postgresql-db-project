-- 1) Calculate payment by agreement (multiplying the duration of the rental and daily price of the car type). / scalar function

CREATE OR REPLACE FUNCTION calculate_payment(_agreement_id INT)
RETURNS DECIMAL(10,5) AS 
$$
DECLARE
    payment_amount DECIMAL(10,5);
   	rental_id_associated INT;
BEGIN
	SELECT rental_id INTO rental_id_associated FROM agreements WHERE agreement_id = _agreement_id;
	IF rental_id_associated IS NULL THEN
        RAISE EXCEPTION 'No rental found for the given agreement ID.';
    END IF;
   
    SELECT (r.end_date - r.start_date +1) * ct.daily_price INTO payment_amount
    FROM rentals r
    JOIN cars c ON r.car_id = c.car_id
    JOIN car_types ct ON c.car_type_id = ct.car_type_id
    WHERE r.rental_id = (SELECT rental_id FROM agreements WHERE agreement_id = _agreement_id);

    IF payment_amount IS NULL OR payment_amount < 0 THEN
        RAISE EXCEPTION 'Invalid payment amount calculated.';
    END IF;

    RETURN payment_amount;
END
$$ 
LANGUAGE plpgsql;

-- SELECT calculate_payment(10);


-- 2) Show all rentals for a given car during a specific year. / table funtion


CREATE OR REPLACE FUNCTION get_agreements_for_car(_car_id INT, _target_year INT)
RETURNS TABLE(agreement_id INT, employee_id INT, rental_id INT) AS 
$$
BEGIN
    IF NOT EXISTS (SELECT * FROM cars WHERE car_id = _car_id) THEN
        RAISE EXCEPTION 'Given car_id does not exist.';
    END IF;

    RETURN QUERY 
    SELECT a.agreement_id, a.employee_id, a.rental_id
    FROM agreements a
    JOIN rentals r ON a.rental_id = r.rental_id
    WHERE r.car_id = _car_id
      AND EXTRACT(YEAR FROM r.start_date) <= _target_year
      AND EXTRACT(YEAR FROM r.end_date) >= _target_year;
END
$$ 
LANGUAGE plpgsql;

-- SELECT * FROM get_agreements_for_car(20, 2024);

-- SELECT get.agreement_id, r.start_date, r.end_date, r.customer_id FROM get_agreements_for_car(1, 2024) AS get
-- JOIN rentals r USING(rental_id);


-- 3) Show rental history for a specific customer. / custom type function


CREATE TYPE rental_history_type AS (
    agreement_id INT,
    start_date DATE,
    end_date DATE,
    car_id INT,
    mileage INT,
    total_amount DECIMAL(10,5)
);

CREATE OR REPLACE FUNCTION customer_rental_history(_customer_id INT)
RETURNS SETOF rental_history_type AS  
$$
BEGIN
	  IF NOT EXISTS (SELECT * FROM customers WHERE customer_id = _customer_id) THEN
        RAISE EXCEPTION 'Given customer_id does not exist.';
    END IF;	
	
    RETURN QUERY 
    SELECT a.agreement_id, r.start_date, r.end_date, c.car_id, (r.end_odometer - r.start_odometer) AS mileage, p.total_amount
    FROM agreements a
    JOIN rentals r USING(rental_id)
 		JOIN payments p USING(agreement_id)
		JOIN cars c ON r.car_id = c.car_id
    WHERE r.customer_id = _customer_id;
END
$$ 
LANGUAGE plpgsql;

-- SELECT * FROM customer_rental_history(1);


-- 4) Add payments procedure. / Insert procedure with perform calculate_payment() function.

CREATE OR REPLACE PROCEDURE add_payment(
    _agreement_id INT, 
    _payment_date DATE
) AS 
$$
BEGIN
    INSERT INTO payments(agreement_id, payment_date, total_amount)
    VALUES (_agreement_id, _payment_date, (SELECT calculate_payment(_agreement_id)));
END
$$
LANGUAGE plpgsql;

-- CALL add_payment(33, '2024-05-09');


-- 5) Update car info in cars table after the end of the lease. / Update procedure

CREATE OR REPLACE PROCEDURE update_car_info(
    _car_id INT,
    _availability_status BOOLEAN,
    _branch_id INT DEFAULT NULL,
    _last_inspected_odometer INT DEFAULT NULL
) AS
$$
BEGIN
    IF NOT EXISTS (SELECT car_id FROM cars AS c WHERE car_id = _car_id)
    THEN
        RAISE EXCEPTION 'The Car is not exists';
    END IF;
    IF _branch_id IS NULL
    THEN
        SELECT branch_id INTO _branch_id FROM cars WHERE car_id = _car_id;
    END IF;
    IF _last_inspected_odometer IS NULL
    THEN
        SELECT last_inspected_odometer INTO _last_inspected_odometer FROM cars WHERE car_id = _car_id;
    END IF;
    IF _last_inspected_odometer < (SELECT last_inspected_odometer FROM cars AS c WHERE car_id = _car_id) 
    THEN
        RAISE EXCEPTION 'New odometer value cannot be less then last inspected value';
    END IF;

    UPDATE cars
        SET 
            availability_status = _availability_status,
            branch_id = _branch_id,
            last_inspected_odometer = _last_inspected_odometer
        WHERE car_id = _car_id;

    COMMIT;
END
$$
LANGUAGE plpgsql;

-- CALL update_car_info(5, TRUE); 


-- 6) Add new rental procedure / Insert procedure with perform another procedure (update_car_info)

CREATE OR REPLACE PROCEDURE add_rentals(
    _car_id INT,
    _customer_id INT,
    _start_date DATE,
    _end_date DATE,
    _end_branch INT,
    _end_odometer INT DEFAULT NULL,
    inout _rental_id INT DEFAULT NULL
) AS
$$
DECLARE
    _final_odometer INT;
    _is_available BOOLEAN;
BEGIN
    IF NOT EXISTS (SELECT car_id FROM cars AS c WHERE car_id = _car_id)
    THEN
        RAISE EXCEPTION 'The Car is not exists';
    END IF;
    IF NOT EXISTS (SELECT customer_id FROM customers WHERE customer_id = _customer_id) 
    THEN
        RAISE EXCEPTION 'The Customer does not exist';
    END IF;
    IF (SELECT availability_status FROM cars AS c WHERE car_id = _car_id) = FALSE
    THEN
        RAISE EXCEPTION 'The Car is not avaliable';
    END IF;
    IF _start_date > _end_date 
    THEN
        RAISE EXCEPTION 'Start date must be before end date';
    END IF;
    IF _end_date >= NOW() AND _start_date <= NOW()
    THEN
        _is_available = FALSE;
    ELSE
        _is_available = TRUE;
    END IF;
    
    INSERT INTO rentals(car_id, customer_id, start_date, end_date, start_odometer, end_odometer, start_branch, end_branch)
    VALUES (
        _car_id,
        _customer_id,
        _start_date,
        _end_date,
        (SELECT last_inspected_odometer FROM cars WHERE car_id = _car_id),
        _end_odometer,
        (SELECT branch_id FROM cars WHERE car_id = _car_id),
        _end_branch
    )
   	RETURNING rental_id INTO _rental_id;

    _final_odometer = COALESCE(_end_odometer, (SELECT last_inspected_odometer FROM cars WHERE car_id = _car_id));
    CALL update_car_info(_car_id, _is_available, _end_branch, _final_odometer);

END
$$
LANGUAGE plpgsql;
COMMIT;

-- CALL add_rentals(5, 17, '2024-05-01', '2024-05-08', 2, 20139);

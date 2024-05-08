-- Create roles
CREATE ROLE manager_role;

CREATE ROLE accountant_role;
CREATE ROLE regular_employee_role;

CREATE ROLE ny_role;
CREATE ROLE la_role;
CREATE ROLE chicago_role;
CREATE ROLE houston_role;
CREATE ROLE seattle_role;

-- Assign Grant to roles
GRANT ALL ON employees, rentals, cars, car_types, customers, agreements, branches TO manager_role;
GRANT ALL ON rentals, employees, payments, agreements TO accountant_role;
GRANT SELECT, UPDATE, INSERT ON rentals TO regular_employee_role;
GRANT SELECT ON cars, customers, branches TO regular_employee_role;

-- Create policy on employees by branches
CREATE POLICY ny_employee_policy ON employees 
    FOR ALL TO ny_role
    USING(branch_id = (SELECT branch_id FROM branches WHERE city LIKE 'New York'));

CREATE POLICY la_employee_policy ON employees 
    FOR ALL TO la_role
    USING(branch_id = (SELECT branch_id FROM branches WHERE city LIKE 'Los Angeles'));

CREATE POLICY chicago_employee_policy ON employees 
    FOR ALL TO chicago_role
    USING(branch_id = (SELECT branch_id FROM branches WHERE city LIKE 'Chicago'));

CREATE POLICY houston_employee_policy ON employees 
    FOR ALL TO houston_role
    USING(branch_id = (SELECT branch_id FROM branches WHERE city LIKE 'Houston'));

CREATE POLICY seattle_employee_policy ON employees 
    FOR ALL TO seattle_role
    USING(branch_id = (SELECT branch_id FROM branches WHERE city LIKE 'Seattle'));

-- Create policy on cars by branches
CREATE POLICY ny_car_policy ON cars
    FOR ALL TO ny_role
    USING(branch_id = (SELECT branch_id FROM branches WHERE city LIKE 'New York'));

CREATE POLICY la_car_policy ON cars 
    FOR ALL TO la_role
    USING(branch_id = (SELECT branch_id FROM branches WHERE city LIKE 'Los Angeles'));

CREATE POLICY chicago_car_policy ON cars 
    FOR ALL TO chicago_role
    USING(branch_id = (SELECT branch_id FROM branches WHERE city LIKE 'Chicago'));

CREATE POLICY houston_car_policy ON cars
    FOR ALL TO houston_role
    USING(branch_id = (SELECT branch_id FROM branches WHERE city LIKE 'Houston'));

CREATE POLICY seattle_car_policy ON cars 
    FOR ALL TO seattle_role
    USING(branch_id = (SELECT branch_id FROM branches WHERE city LIKE 'Seattle'));

ALTER TABLE employees ENABLE ROW LEVEL SECURITY;
ALTER TABLE employees FORCE ROW LEVEL SECURITY;
ALTER TABLE cars ENABLE ROW LEVEL SECURITY;
ALTER TABLE cars FORCE ROW LEVEL SECURITY;


-- Create manager users
CREATE USER j_doe WITH PASSWORD 'supersecret'; -- NY manager
CREATE USER m_johnson WITH PASSWORD 'supersecret'; -- LA manager
CREATE USER c_williams WITH PASSWORD 'supersecret'; -- Chicago manager
CREATE USER d_brown WITH PASSWORD 'supersecret'; -- Houston manager
CREATE USER m_martinez WITH PASSWORD 'supersecret'; -- Seattle manager

-- Create accountant user
CREATE USER l_pacioli WITH PASSWORD 'strongpassword';

-- Create regular employee users

-- NY employees
CREATE USER j_smith WITH PASSWORD 'password';
CREATE USER d_wilson WITH PASSWORD 'password';

-- LA employees
CREATE USER a_richardson WITH PASSWORD 'password';
CREATE USER m_green WITH PASSWORD 'password';

-- Chicago employees
CREATE USER a_jones WITH PASSWORD 'password';
CREATE USER m_sanchez WITH PASSWORD 'password';

-- Houston employees
CREATE USER s_miller WITH PASSWORD 'password';
CREATE USER e_rivera WITH PASSWORD 'password';

-- Seattle employees
CREATE USER o_taylor WITH PASSWORD 'password';
CREATE USER e_kelly WITH PASSWORD 'password';

-- Grant by roles
GRANT manager_role, ny_role TO j_doe;
GRANT manager_role, la_role TO m_johnson;
GRANT manager_role, chicago_role TO c_williams;
GRANT manager_role, houston_role TO d_brown;
GRANT manager_role, seattle_role TO m_martinez;

GRANT accountant_role TO l_pacioli;

GRANT regular_employee_role, ny_role TO j_smith, d_wilson;
GRANT regular_employee_role, la_role TO a_richardson, m_green;
GRANT regular_employee_role, chicago_role TO a_jones, m_sanchez;
GRANT regular_employee_role, houston_role TO s_miller, e_rivera;
GRANT regular_employee_role, seattle_role TO o_taylor, e_kelly;

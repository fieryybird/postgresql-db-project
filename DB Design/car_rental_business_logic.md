
### Cars

- Each car has a unique identifier called `car_id`.
- The `car_type_id` refers to the `car_types` table that indicates the type of car
- It has a registration number and a VIN code to uniquely identify it.
- We store details like the manufacturer, model, year, color, and number of seats.
- Other information includes fuel type, transmission type, and the last odometer reading.
- We track if the car is available for rent and which branch it's currently at.

### Customers

- Customers have a unique identifier called `customer_id`.
- We store their basic info like first name, last name, and date of birth.
- There's space for contact details like phone number and email.
- We also record their address including city and region.
- For identification, we store their passport and driver's license numbers.

### Agreements

- Each agreement has a unique identifier called `agreement_id`.
- It's linked to an employee who handles the agreement.

### Car Types

- Different types of cars are stored here, each with a unique `car_type_id`.
- `car_type` tells us what type of car it is, like econom, comfort  etc.
- We describe the type of car and its daily rental price.

### Payments

- Payments have a unique identifier called `payment_id`.
- They're linked to an agreement and have details like payment date and amount.

### Rentals

- Rentals also have a unique identifier called `rental_id`.
- They're associated with a specific car and customer.
- We track the rental period, starting and ending dates, as well as the odometer readings.
- Additionally, we record the branch where the rental starts and ends.

### Branches

- Each branch of the rental company has its own unique identifier.
- We store its address, city, region, postal code, and phone number.

### Employees

- Employees have a unique identifier called `employee_id`.
- We link them to the branch they work at and store their personal information.
- This includes their name, birth date, address, and contact details.
- Additionally, we track their salary and who they report to within the company.
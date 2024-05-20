use car-rental;


// 1) Cars with odometer count > 50 000 km. in "Business" class.

db.cars.find(
  {
    last_inspected_odometer: {$gte: 50000},
    car_type: "Business"
  },
  {
    _id: 1,
    registration_number: 1,
    vin_code: 1,
    manufacturer: 1,
    model: 1,
    last_inspected_odometer: 1,
    branch_name: 1
  }
);


// 2) List of all currently active rental agreements.

db.rentals.find(
  {
    end_date: { $gt: new Date().toISOString().split('T')[0] }  // generates the current date in YYYY-MM-DD format
  },
  {
    _id: 1,
    "car._id": 1,
    "car.model": 1,
    "car.manufacturer": 1,
    "car.registration_number": 1,
    start_date: 1,
    end_date: 1,
    "customer._id": 1,
    "customer.first_name": 1,
    "customer.last_name": 1,
    "customer.phone_number": 1,
    "customer.email": 1,
    "agreement.employee_id": 1,
    "agreement.employee_first_name": 1,
    "agreement.employee_last_name": 1,
    "agreement.payment_date": 1,
    "agreement.total_amount": 1
  }
);


// 3) The number of available cars in different branches. 

db.cars.aggregate([
  {
    $match: { availability_status: true }
  },
  {
    $group: {
      _id: "$branch_name",
      available_cars: { $sum: 1 }
    }
  },
  {
    $project: {
      _id: 0,
      branch_name: "$_id",
      available_cars: 1
    }
  }
]);


// 4) Top 5 of customers who spent the most money on car rental.

db.rentals.aggregate([
  {
    $group: {
      _id: "$customer._id",
      firstName: { $first: "$customer.first_name" },
      lastName: { $first: "$customer.last_name" },
      totalSum: { $sum: "$agreement.total_amount" }
    }
  },
  {
    $project: {
      _id: 1,
      firstName: 1,
      lastName: 1,
      totalSum: 1
    }
  },
  {
    $sort: {
      totalSum: -1
    }
  },
  {
    $limit: 5
  }
]);

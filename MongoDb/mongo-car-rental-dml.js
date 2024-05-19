
// Create a new database.
use car-rental;

// Create collection - "customers": 

db.customers.insertMany([
    {
        first_name: "John",
        last_name: "Smith",
        birth_date: "1990-05-15",
        phone_number: "123-456-789",
        email: "john.smith@gmail.com",
        address: "123 Alumni Hall",
        city: "New York",
        region: "NY",
        passport: "AB123456",
        driver_license: "DL123456"
    },
    {
        first_name: "Emma",
        last_name: "Johnson",
        birth_date: "1985-09-22",
        phone_number: "987-654-321",
        email: "emma.johnson@yahoo.com",
        address: "456 Sepulveda Blvd",
        city: "Los Angeles",
        region: "CA",
        passport: "CD987654",
        driver_license: "DL987654"
    },
    {
        first_name: "Michael",
        last_name: "Brown",
        birth_date: "1982-07-10",
        phone_number: "555-123-456",
        email: "michael.brown@hotmail.com",
        address: "554 W Diversey",
        city: "Chicago",
        region: "IL",
        passport: "EF456789",
        driver_license: "DL456789"
    },
    {
        first_name: "Sarah",
        last_name: "Davis",
        birth_date: "1978-12-03",
        phone_number: "555-987-654",
        email: "sarah.davis@outlook.com",
        address: "7204-D Southwest Freeway",
        city: "Houston",
        region: "TX",
        passport: "GH654321",
        driver_license: "DL654321"
    },
    {
        first_name: "Christopher",
        last_name: "Wilson",
        birth_date: "1993-03-28",
        phone_number: "777-123-456",
        email: "christopher.wilson@aol.com",
        address: "819 East Pike St",
        city: "Seattle",
        region: "WA",
        passport: "IJ234567",
        driver_license: "DL234567"
    },
    {
        first_name: "Jennifer",
        last_name: "Martinez",
        birth_date: "1989-08-17",
        phone_number: "777-987-654",
        email: "jennifer.martinez@icloud.com",
        address: "371 Washington St",
        city: "Boston",
        region: "MA",
        passport: "KL345678",
        driver_license: "DL345678"
    },
    {
        first_name: "James",
        last_name: "Taylor",
        birth_date: "1980-11-05",
        phone_number: "333-123-456",
        email: "james.taylor@protonmail.com",
        address: "325 Gellert Blvd",
        city: "San Francisco",
        region: "CA",
        passport: "MN456789",
        driver_license: "DL456789"
    },
    {
        first_name: "Jessica",
        last_name: "Anderson",
        birth_date: "1987-04-12",
        phone_number: "333-987-654",
        email: "jessica.anderson@yandex.com",
        address: "2701 N Belt Line RD",
        city: "Dallas",
        region: "TX",
        passport: "OP567890",
        driver_license: "DL567890"
    },
    {
        first_name: "Daniel",
        last_name: "Thomas",
        birth_date: "1975-06-20",
        phone_number: "888-123-456",
        email: "daniel.thomas@tutanota.com",
        address: "1113 Key Plaza",
        city: "Miami",
        region: "FL",
        passport: "QR678901",
        driver_license: "DL678901"
    },
    {
        first_name: "Elizabeth",
        last_name: "Lee",
        birth_date: "1984-10-08",
        phone_number: "888-987-654",
        email: "elizabeth.lee@protonmail.ch",
        address: "1851 S Columbus Blvd",
        city: "Philadelphia",
        region: "PA",
        passport: "ST789012",
        driver_license: "DL789012"
    },
    {
        first_name: "William",
        last_name: "White",
        birth_date: "1991-02-14",
        phone_number: "222-123-456",
        email: "william.white@fastmail.fm",
        address: "200 Lakeline Blvd",
        city: "Austin",
        region: "TX",
        passport: "UV890123",
        driver_license: "DL890123"
    },
    {
        first_name: "Ashley",
        last_name: "Harris",
        birth_date: "1986-05-30",
        phone_number: "222-987-654",
        email: "ashley.harris@mail.com",
        address: "728 SE Washington St",
        city: "Portland",
        region: "OR",
        passport: "WX901234",
        driver_license: "DL901234"
    },
    {
        first_name: "David",
        last_name: "Martin",
        birth_date: "1979-09-10",
        phone_number: "444-123-456",
        email: "david.martin@inbox.com",
        address: "4400 Ashford Dunwoody St",
        city: "Atlanta",
        region: "GA",
        passport: "YZ012345",
        driver_license: "DL012345"
    },
    {
        first_name: "Samantha",
        last_name: "Thompson",
        birth_date: "1988-01-25"  ,
        phone_number: "444-987-654",
        email: "samantha.thompson@zoho.com",
        address: "22 E Ray Road",
        city: "Phoenix",
        region: "AZ",
        passport: "AB123456",
        driver_license: "DL123456"
    },
    {
        first_name: "Joseph",
        last_name: "Garcia",
        birth_date: "1983-06-15",
        phone_number: "999-123-456",
        email: "joseph.garcia@tutanota.de",
        address: "111 Monroe St",
        city: "Detroit",
        region: "MI",
        passport: "CD234567",
        driver_license: "DL234567"
    },
    {
        first_name: "Olivia",
        last_name: "Martinez",
        birth_date: "1994-04-02",
        phone_number: "999-987-654",
        email: "olivia.martinez@protonmail.com",
        address: "132 2nd St",
        city: "Minneapolis",
        region: "MN",
        passport: "EF345678",
        driver_license: "DL345678"
    },
    {
        first_name: "Charles",
        last_name: "Robinson",
        birth_date: "1981-12-20",
        phone_number: "111-123-456",
        email: "charles.robinson@pm.me",
        address: "55 Cornerstar Way",
        city: "Denver",
        region: "CO",
        passport: "GH456789",
        driver_license: "DL456789"
    },
    {
        first_name: "Emily",
        last_name: "Lewis",
        birth_date: "1980-08-03",
        phone_number: "111-987-654",
        email: "emily.lewis@protonmail.com",
        address: "609 N Stephanie St",
        city: "Las Vegas",
        region: "NV",
        passport: "IJ567890",
        driver_license: "DL567890"
    },
    {
        first_name: "Matthew",
        last_name: "Hall",
        birth_date: "1990-03-18",
        phone_number: "666-123-456",
        email: "matthew.hall@posteo.de",
        address: "721 E Independence Blvd",
        city: "Charlotte",
        region: "NC",
        passport: "KL678901",
        driver_license: "DL678901"
    },
    {
        first_name: "Sophia",
        last_name: "Scott",
        birth_date: "1985-11-11",
        phone_number: "666-987-654",
        email: "sophia.scott@disroot.org",
        address: "26 25th Ave NE",
        city: "Seattle",
        region: "WA",
        passport: "MN789012",
        driver_license: "DL789012"
    }
]);   

// Create collection - "branches": 

db.branches.insertMany([
  {
      branch_name: "NY-1",
      address: "123 Main St",
      city: "New York",
      region: "NY",
      postal_code: "10001",
      phone_number: "555-1234"
  },
  {
      branch_name: "LA-1",
      address: "3031 Malibu Lane",
      city: "Los Angeles",
      region: "CA",
      postal_code: "90001",
      phone_number: "555-5678"
  },
  {
      branch_name: "CH-1",
      address: "3031 N Clark St",
      city: "Chicago",
      region: "IL",
      postal_code: "60601",
      phone_number: "555-9101"
  },
  {
      branch_name: "HST-1",
      address: "101 Pine St",
      city: "Houston",
      region: "TX",
      postal_code: "77001",
      phone_number: "555-1212"
  },
  {
      branch_name: "STL-1",
      address: "229 Rainier Ave",
      city: "Seattle",
      region: "WA",
      postal_code: "98101",
      phone_number: "555-3434"
  }
]);


// Create collection - "employees"

db.employees.insertMany([
    {
        first_name: "John",
        last_name: "Doe",
        birth_date: "1990-05-15",
        address: "425 Chestnut Avenue",
        city: "New York",
        region: "NY",
        email: "john.doe@car-rental.com",
        salary: 60000.00,
        branch: {
          branch_name: "NY-1",
          address: "123 Main St",
          city: "New York",
          region: "NY",
          postal_code: "10001",
          phone_number: "555-1234"
        }
    },
    {
        first_name: "Jane",
        last_name: "Smith",
        birth_date: "1985-10-20",
        address: "223 Walnut Street",
        city: "New York",
        region: "NY",
        email: "jane.smith@car-rental.com",
        salary: 55000.00,
        branch: {
          branch_name: "NY-1",
          address: "123 Main St",
          city: "New York",
          region: "NY",
          postal_code: "10001",
          phone_number: "555-1234"
          }
    },
    {
        first_name: "Michael",
        last_name: "Johnson",
        birth_date: "1988-03-25",
        address: "28 Venice Beach Drive",
        city: "Los Angeles",
        region: "CA",
        email: "michael.johnson@car-rental.com",
        salary: 62000.00,
        branch: {
          branch_name: "LA-1",
          address: "3031 Malibu Lane",
          city: "Los Angeles",
          region: "CA",
          postal_code: "90001",
          phone_number: "555-5678"
        }
    },
    {
        first_name: "Emily",
        last_name: "Brown",
        birth_date: "1987-07-12",
        address: "425 Santa Monica Boulevard",
        city: "Los Angeles",
        region: "CA",
        email: "emily.brown@car-rental.com",
        salary: 53000.00,
        branch: {
          branch_name: "LA-1",
          address: "3031 Malibu Lane",
          city: "Los Angeles",
          region: "CA",
          postal_code: "90001",
          phone_number: "555-5678"
        }
    },
    {
        first_name: "Christopher",
        last_name: "Williams",
        birth_date: "1992-09-05",
        address: "28 E Grand Ave",
        city: "Chicago",
        region: "IL",
        email: "christopher.williams@car-rental.com",
        salary: 61000.00,
        branch: {
          branch_name: "CH-1",
          address: "3031 N Clark St",
          city: "Chicago",
          region: "IL",
          postal_code: "60601",
          phone_number: "555-9101"
        }
    },
    {
        first_name: "Amanda",
        last_name: "Jones",
        birth_date: "1989-12-10",
        address: "25 S Halsted St",
        city: "Chicago",
        region: "IL",
        email: "amanda.jones@car-rental.com",
        salary: 54000.00,
        branch: {
          branch_name: "CH-1",
          address: "3031 N Clark St",
          city: "Chicago",
          region: "IL",
          postal_code: "60601",
          phone_number: "555-9101"
        }
    },
    {
        first_name: "Daniel",
        last_name: "Brown",
        birth_date: "1991-02-18",
        address: "324 Magnolia St",
        city: "Houston",
        region: "TX",
        email: "daniel.brown@car-rental.com",
        salary: 62000.00,
        branch: {
          branch_name: "HST-1",
          address: "101 Pine St",
          city: "Houston",
          region: "TX",
          postal_code: "77001",
          phone_number: "555-1212"
        }
    },
    {
        first_name: "Sarah",
        last_name: "Miller",
        birth_date: "1986-06-30",
        address: "21 Willow St",
        city: "Houston",
        region: "TX",
        email: "sarah.miller@car-rental.com",
        salary: 56000.00,
        branch: {
          branch_name: "HST-1",
          address: "101 Pine St",
          city: "Houston",
          region: "TX",
          postal_code: "77001",
          phone_number: "555-1212"
        }
    },
    {
        first_name: "Matthew",
        last_name: "Martinez",
        birth_date: "1990-04-28",
        address: "78 Pike St",
        city: "Seattle",
        region: "WA",
        email: "matthew.martinez@car-rental.com",
        salary: 63000.00,
        branch: {
          branch_name: "STL-1",
          address: "229 Rainier Ave",
          city: "Seattle",
          region: "WA",
          postal_code: "98101",
          phone_number: "555-3434"
        }
    },
    {
        first_name: "Olivia",
        last_name: "Taylor",
        birth_date: "1988-11-15",
        address: "11 Bell St",
        city: "Seattle",
        region: "WA",
        email: "olivia.taylor@car-rental.com",
        salary: 57000.00,
        branch: {
          branch_name: "STL-1",
          address: "229 Rainier Ave",
          city: "Seattle",
          region: "WA",
          postal_code: "98101",
          phone_number: "555-3434"
        }
    },
    {
      first_name: "David",
      last_name: "Wilson",
      birth_date: "1993-08-03",
      address: "2021 Spruce Boulevard",
      city: "New York",
      region: "NY",
      email: "david.wilson@car-rental.com",
      salary: 51000.00,
      branch: {
          branch_name: "NY-1",
          address: "123 Main St",
          city: "New York",
          region: "NY",
          postal_code: "10001",
          phone_number: "555-1234"
      }
    },
    {
      first_name: "Jessica",
      last_name: "Garcia",
      birth_date: "1992-01-20",
      address: "122 Beverly Hills Road",
      city: "Los Angeles",
      region: "CA",
      email: "jessica.garcia@car-rental.com",
      salary: 54000.00,
      branch: {
          branch_name: "LA-1",
          address: "3031 Malibu Lane",
          city: "Los Angeles",
          region: "CA",
          postal_code: "90001",
          phone_number: "555-5678"
      }
    },
    {
      first_name: "William",
      last_name: "Rodriguez",
      birth_date: "1984-07-29",
      address: "19 Lincoln Ave",
      city: "Chicago",
      region: "IL",
      email: "william.rodriguez@car-rental.com",
      salary: 55000.00,
      branch: {
          branch_name: "CH-1",
          address: "3031 N Clark St",
          city: "Chicago",
          region: "IL",
          postal_code: "60601",
          phone_number: "555-9101"
      }
    },
    {
      first_name: "Sophia",
      last_name: "Hernandez",
      birth_date: "1985-09-12",
      address: "718 Cypress St",
      city: "Houston",
      region: "TX",
      email: "sophia.hernandez@car-rental.com",
      salary: 58000.00,
      branch: {
          branch_name: "HST-1",
          address: "101 Pine St",
          city: "Houston",
          region: "TX",
          postal_code: "77001",
          phone_number: "555-1212"
      }
    },
    {
      first_name: "James",
      last_name: "Lopez",
      birth_date: "1995-03-18",
      address: "314 Summit Ave",
      city: "Seattle",
      region: "WA",
      email: "james.lopez@car-rental.com",
      salary: 52000.00,
      branch: {
          branch_name: "STL-1",
          address: "229 Rainier Ave",
          city: "Seattle",
          region: "WA",
          postal_code: "98101",
          phone_number: "555-3434"
      }
    },
    {
      first_name: "Ashley",
      last_name: "Gonzalez",
      birth_date: "1987-12-01",
      address: "1819 Birch Drive",
      city: "New York",
      region: "NY",
      email: "ashley.gonzalez@car-rental.com",
      salary: 55000.00,
      branch: {
          branch_name: "NY-1",
          address: "123 Main St",
          city: "New York",
          region: "NY",
          postal_code: "10001",
          phone_number: "555-1234"
      }
    },
    {
      first_name: "Benjamin",
      last_name: "Perez",
      birth_date: "1990-05-05",
      address: "19 Wilshire Boulevard",
      city: "Los Angeles",
      region: "CA",
      email: "benjamin.perez@car-rental.com",
      salary: 56000.00,
      branch: {
          branch_name: "LA-1",
          address: "3031 Malibu Lane",
          city: "Los Angeles",
          region: "CA",
          postal_code: "90001",
          phone_number: "555-5678"
      }
    },
    {
      first_name: "Mia",
      last_name: "Sanchez",
      birth_date: "1993-02-14",
      address: "516 Belmont Ave",
      city: "Chicago",
      region: "IL",
      email: "mia.sanchez@car-rental.com",
      salary: 53000.00,
      branch: {
          branch_name: "CH-1",
          address: "3031 N Clark St",
          city: "Chicago",
          region: "IL",
          postal_code: "60601",
          phone_number: "555-9101"
      }
    },
    {
      first_name: "Ethan",
      last_name: "Rivera",
      birth_date: "1988-10-08",
      address: "738 Sycamore St",
      city: "Houston",
      region: "TX",
      email: "ethan.rivera@car-rental.com",
      salary: 57000.00,
      branch: {
          branch_name: "HST-1",
          address: "101 Pine St",
          city: "Houston",
          region: "TX",
          postal_code: "77001",
          phone_number: "555-1212"
      }
    },
    {
      first_name: "Emma",
      last_name: "Barnes",
      birth_date: "1986-06-25",
      address: "2223 Cherry St",
      city: "Seattle",
      region: "WA",
      email: "emma.barnes@car-rental.com",
      salary: 54000.00,
      branch: {
          branch_name: "STL-1",
          address: "229 Rainier Ave",
          city: "Seattle",
          region: "WA",
          postal_code: "98101",
          phone_number: "555-3434"
      }
    },
    {
      first_name: "Alexander",
      last_name: "Scott",
      birth_date: "1991-09-30",
      address: "1617 Cedar Court",
      city: "New York",
      region: "NY",
      email: "alexander.scott@car-rental.com",
      salary: 56000.00,
      branch: {
          branch_name: "NY-1",
          address: "123 Main St",
          city: "New York",
          region: "NY",
          postal_code: "10001",
          phone_number: "555-1234"
      }
    },
    {
      first_name: "Madison",
      last_name: "Green",
      birth_date: "1990-08-22",
      address: "516 Rodeo Drive",
      city: "Los Angeles",
      region: "CA",
      email: "madison.green@car-rental.com",
      salary: 55000.00,
      branch: {
          branch_name: "LA-1",
          address: "3031 Malibu Lane",
          city: "Los Angeles",
          region: "CA",
          postal_code: "90001",
          phone_number: "555-5678"
      }
    },
    {
      first_name: "Noah",
      last_name: "Adams",
      birth_date: "1989-04-11",
      address: "101 State St",
      city: "Chicago",
      region: "IL",
      email: "noah.adams@car-rental.com",
      salary: 54000.00,
      branch: {
          branch_name: "CH-1",
          address: "3031 N Clark St",
          city: "Chicago",
          region: "IL",
          postal_code: "60601",
          phone_number: "555-9101"
      }
    },
    {
      first_name: "Chloe",
      last_name: "Gomez",
      birth_date: "1992-11-03",
      address: "697 Juniper St",
      city: "Houston",
      region: "TX",
      email: "chloe.gomez@car-rental.com",
      salary: 58000.00,
      branch: {
          branch_name: "HST-1",
          address: "101 Pine St",
          city: "Houston",
          region: "TX",
          postal_code: "77001",
          phone_number: "555-1212"
      }
    },
    {
      first_name: "Elijah",
      last_name: "Kelly",
      birth_date: "1994-01-28",
      address: "494 Elm St",
      city: "Seattle",
      region: "WA",
      email: "elijah.kelly@car-rental.com",
      salary: 52000.00,
      branch: {
          branch_name: "STL-1",
          address: "229 Rainier Ave",
          city: "Seattle",
          region: "WA",
          postal_code: "98101",
          phone_number: "555-3434"
      }
    },
    {
      first_name: "Grace",
      last_name: "Howard",
      birth_date: "1985-07-17",
      address: "315 Maple Road",
      city: "New York",
      region: "NY",
      email: "grace.howard@car-rental.com",
      salary: 57000.00,
      branch: {
          branch_name: "NY-1",
          address: "123 Main St",
          city: "New York",
          region: "NY",
          postal_code: "10001",
          phone_number: "555-1234"
      }
    },
    {
      first_name: "Avery",
      last_name: "Richardson",
      birth_date: "1988-12-09",
      address: "13 Melrose Place",
      city: "Los Angeles",
      region: "CA",
      email: "avery.richardson@car-rental.com",
      salary: 56000.00,
      branch: {
          branch_name: "LA-1",
          address: "3031 Malibu Lane",
          city: "Los Angeles",
          region: "CA",
          postal_code: "90001",
          phone_number: "555-5678"
      }
    },
    {
      first_name: "Logan",
      last_name: "Myers",
      birth_date: "1991-06-27",
      address: "34 W Madison St",
      city: "Chicago",
      region: "IL",
      email: "logan.myers@car-rental.com",
      salary: 55000.00,
      branch: {
          branch_name: "CH-1",
          address: "3031 N Clark St",
          city: "Chicago",
          region: "IL",
          postal_code: "60601",
          phone_number: "555-9101"
      }
    },
    {
      first_name: "Sofia",
      last_name: "Diaz",
      birth_date: "1987-09-15",
      address: "91 Elmwood Dr",
      city: "Houston",
      region: "TX",
      email: "sofia.diaz@car-rental.com",
      salary: 54000.00,
      branch: {
          branch_name: "HST-1",
          address: "101 Pine St",
          city: "Houston",
          region: "TX",
          postal_code: "77001",
          phone_number: "555-1212"
      }
    },
    {
      first_name: "Lucas",
      last_name: "Russell",
      birth_date: "1993-04-19",
      address: "435 Fir St",
      city: "Seattle",
      region: "WA",
      email: "lucas.russell@car-rental.com",
      salary: 59000.00,
      branch: {
          branch_name: "STL-1",
          address: "229 Rainier Ave",
          city: "Seattle",
          region: "WA",
          postal_code: "98101",
          phone_number: "555-3434"
      }
    }
  ]);
  

// Create collection - "cars"

db.cars.insertMany([
    {
      registration_number: "ERS-8579",
      vin_code: "1M8GDM9AXKP042788",
      manufacturer: "Smart",
      model: "Fortwo",
      year: 2021,
      color: "Silver",
      number_of_seats: 2,
      fuel_type: "Gasoline",
      transmission: "Automatic",
      last_inspected_odometer: 41550,
      availability_status: true,
      car_type: "Econom",
      daily_price: 50.00,
      branch_name: "NY-1"
    },
    {
      registration_number: "799-XYF",
      vin_code: "JH4KA3260KC007360",
      manufacturer: "Kia",
      model: "Rio",
      year: 2020,
      color: "Black",
      number_of_seats: 5,
      fuel_type: "Gasoline",
      transmission: "Manual",
      last_inspected_odometer: 27852,
      availability_status: true,
      car_type: "Econom",
      daily_price: 50.00,
      branch_name: "STL-1"
    },
    {
      registration_number: "D36-8BN",
      vin_code: "1HGCM82633A004352",
      manufacturer: "Ford",
      model: "Fiesta",
      year: 2019,
      color: "White",
      number_of_seats: 5,
      fuel_type: "Diesel",
      transmission: "Automatic",
      last_inspected_odometer: 54312,
      availability_status: true,
      car_type: "Econom",
      daily_price: 50.00,
      branch_name: "LA-1"
    },
    {
      registration_number: "H37-XY2",
      vin_code: "1FAFP4041WF067316",
      manufacturer: "Chevrolet",
      model: "Spark",
      year: 2022,
      color: "Red",
      number_of_seats: 5,
      fuel_type: "Electro",
      transmission: "Automatic",
      last_inspected_odometer: 20484,
      availability_status: true,
      car_type: "Econom",
      daily_price: 50.00,
      branch_name: "NY-1"
    },
    {
      registration_number: "B57-XY9",
      vin_code: "1HGEM115XSL060792",
      manufacturer: "Toyota",
      model: "Corolla",
      year: 2023,
      color: "Blue",
      number_of_seats: 5,
      fuel_type: "Hybrid",
      transmission: "Automatic",
      last_inspected_odometer: 14015,
      availability_status: true,
      car_type: "Standard",
      daily_price: 70.00,
      branch_name: "CH-1"
    },
    {
      registration_number: "G98-ZY3",
      vin_code: "1G8AJ52F73Z164200",
      manufacturer: "Honda",
      model: "Civic",
      year: 2018,
      color: "Grey",
      number_of_seats: 5,
      fuel_type: "Gasoline",
      transmission: "Automatic",
      last_inspected_odometer: 91743,
      availability_status: false,
      car_type: "Standard",
      daily_price: 70.00,
      branch_name: "CH-1"
    },
    {
      registration_number: "J88-9YH",
      vin_code: "1N4AL11D75C109151",
      manufacturer: "Ford",
      model: "Transit",
      year: 2021,
      color: "Blue",
      number_of_seats: 12,
      fuel_type: "Diesel",
      transmission: "Manual",
      last_inspected_odometer: 125837,
      availability_status: false,
      car_type: "Standard",
      daily_price: 70.00,
      branch_name: "HST-1"
    },
    {
      registration_number: "L90-3GJ",
      vin_code: "1GNEK13ZX3R298984",
      manufacturer: "Dodge",
      model: "Journey",
      year: 2020,
      color: "Black",
      number_of_seats: 7,
      fuel_type: "Diesel",
      transmission: "Automatic",
      last_inspected_odometer: 46592,
      availability_status: true,
      car_type: "Standard",
      daily_price: 70.00,
      branch_name: "LA-1"
    },
    {
      registration_number: "W34-EF9",
      vin_code: "2G1WF52E459279731",
      manufacturer: "BMW",
      model: "3 Series",
      year: 2019,
      color: "Green",
      number_of_seats: 5,
      fuel_type: "Diesel",
      transmission: "Automatic",
      last_inspected_odometer: 68127,
      availability_status: false,
      car_type: "Business",
      daily_price: 100.00,
      branch_name: "STL-1"
    },
    {
      registration_number: "Q65-4RF",
      vin_code: "2C3KA43R08H129984",
      manufacturer: "Mercedes",
      model: "C-Class",
      year: 2022,
      color: "Silver",
      number_of_seats: 5,
      fuel_type: "Diesel",
      transmission: "Automatic",
      last_inspected_odometer: 30258,
      availability_status: false,
      car_type: "Business",
      daily_price: 100.00,
      branch_name: "NY-1"
    },
    {
      registration_number: "R22-VB6",
      vin_code: "19UUA5661DA707070",
      manufacturer: "Audi",
      model: "A4",
      year: 2021,
      color: "Red",
      number_of_seats: 5,
      fuel_type: "Diesel",
      transmission: "Automatic",
      last_inspected_odometer: 87546,
      availability_status: true,
      car_type: "Business",
      daily_price: 100.00,
      branch_name: "CH-1"
    },
    {
      registration_number: "S39-6GH",
      vin_code: "1FAHP3FN0BW146623",
      manufacturer: "Lexus",
      model: "IS",
      year: 2019,
      color: "White",
      number_of_seats: 5,
      fuel_type: "Hybrid",
      transmission: "Automatic",
      last_inspected_odometer: 46035,
      availability_status: true,
      car_type: "Business",
      daily_price: 100.00,
      branch_name: "NY-1"
    },
    {
      registration_number: "U44-JK7",
      vin_code: "3VWFE21C04M000001",
      manufacturer: "Infiniti",
      model: "Q50",
      year: 2023,
      color: "Black",
      number_of_seats: 5,
      fuel_type: "Diesel",
      transmission: "Automatic",
      last_inspected_odometer: 61259,
      availability_status: true,
      car_type: "Business",
      daily_price: 100.00,
      branch_name: "CH-1"
    },
    {
      registration_number: "V55-KL8",
      vin_code: "5N1AR18U65C768122",
      manufacturer: "Tesla",
      model: "Model S",
      year: 2020,
      color: "Grey",
      number_of_seats: 5,
      fuel_type: "Electro",
      transmission: "Automatic",
      last_inspected_odometer: 10734,
      availability_status: true,
      car_type: "Premium",
      daily_price: 150.00,
      branch_name: "HST-1"
    },
    {
      registration_number: "X66-MN4",
      vin_code: "1N4AB41D1VC759373",
      manufacturer: "Porsche",
      model: "Panamera",
      year: 2021,
      color: "Blue",
      number_of_seats: 5,
      fuel_type: "Gasoline",
      transmission: "Automatic",
      last_inspected_odometer: 21025,
      availability_status: true,
      car_type: "Premium",
      daily_price: 150.00,
      branch_name: "LA-1"
    },
    {
      registration_number: "Y77-OP5",
      vin_code: "1LNHM81WXYV411972",
      manufacturer: "Jaguar",
      model: "XE",
      year: 2022,
      color: "Silver",
      number_of_seats: 5,
      fuel_type: "Diesel",
      transmission: "Automatic",
      last_inspected_odometer: 10512,
      availability_status: true,
      car_type: "Premium",
      daily_price: 150.00,
      branch_name: "NY-1"
    },
    {
      registration_number: "Z88-QQ6",
      vin_code: "2FTRX18L1XCA01234",
      manufacturer: "BMW",
      model: "5 Series",
      year: 2019,
      color: "Red",
      number_of_seats: 5,
      fuel_type: "Gasoline",
      transmission: "Manual",
      last_inspected_odometer: 30501,
      availability_status: true,
      car_type: "Premium",
      daily_price: 150.00,
      branch_name: "CH-1"
    },
    {
      registration_number: "A99-RR7",
      vin_code: "1B3ES26C75D164896",
      manufacturer: "Mercedes",
      model: "S-Class",
      year: 2021,
      color: "White",
      number_of_seats: 5,
      fuel_type: "Gasoline",
      transmission: "Automatic",
      last_inspected_odometer: 41070,
      availability_status: true,
      car_type: "Premium",
      daily_price: 150.00,
      branch_name: "CH-1"
    },
    {
      registration_number: "C11-ST8",
      vin_code: "1G2ZG57B794218686",
      manufacturer: "Audi",
      model: "A6",
      year: 2022,
      color: "Black",
      number_of_seats: 5,
      fuel_type: "Hybrid",
      transmission: "Automatic",
      last_inspected_odometer: 50599,
      availability_status: true,
      car_type: "Premium",
      daily_price: 150.00,
      branch_name: "NY-1"
    },
    {
      registration_number: "E33-UV9",
      vin_code: "2G1WF52E459279732",
      manufacturer: "Tesla",
      model: "Model X",
      year: 2023,
      color: "Blue",
      number_of_seats: 5,
      fuel_type: "Electro",
      transmission: "Automatic",
      last_inspected_odometer: 12146,
      availability_status: true,
      car_type: "Premium",
      daily_price: 150.00,
      branch_name: "HST-1"
    }
  ]);
  


// Create collection - "rentals"

// Fetch all necessary data

const cars = db.cars.find().toArray();
const customers = db.customers.find().toArray();
const employees = db.employees.find().toArray();

const rentals = [
    {
        registration_number: "ERS-8579",
        customer_name: { first_name: "John", last_name: "Smith" },
        employee_name: { first_name: "Alexander", last_name: "Scott" },
        start_date: "2024-01-07",
        end_date: "2024-01-10",
        start_odometer: 38657,
        end_odometer: 39042,
        start_branch_name: "NY-1",
        end_branch_name: "NY-1"
    },
    {
        registration_number: "ERS-8579",
        customer_name: { first_name: "Emma", last_name: "Johnson" },
        employee_name: { first_name: "Grace", last_name: "Howard" },
        start_date: "2024-01-15",
        end_date: "2024-01-20",
        start_odometer: 39042,
        end_odometer: 41073,
        start_branch_name: "NY-1",
        end_branch_name: "NY-1"
    },
    {
        registration_number: "799-XYF",
        customer_name: { first_name: "Michael", last_name: "Brown" },
        employee_name: { first_name: "Jane", last_name: "Smith" },
        start_date: "2024-01-01",
        end_date: "2024-01-08",
        start_odometer: 25960,
        end_odometer: 27082,
        start_branch_name: "NY-1",
        end_branch_name: "NY-1"
    },
    {
        registration_number: "D36-8BN",
        customer_name: { first_name: "Sarah", last_name: "Davis" },
        employee_name: { first_name: "Avery", last_name: "Richardson" },
        start_date: "2024-01-02",
        end_date: "2024-01-15",
        start_odometer: 50512,
        end_odometer: 53024,
        start_branch_name: "LA-1",
        end_branch_name: "STL-1"
    },
    {
        registration_number: "D36-8BN",
        customer_name: { first_name: "John", last_name: "Smith" },
        employee_name: { first_name: "Emma", last_name: "Barnes" },
        start_date: "2024-01-19",
        end_date: "2024-01-28",
        start_odometer: 53024,
        end_odometer: 54012,
        start_branch_name: "STL-1",
        end_branch_name: "LA-1"
    },
    {
        registration_number: "H37-XY2",
        customer_name: { first_name: "Christopher", last_name: "Wilson" },
        employee_name: { first_name: "Madison", last_name: "Green" },
        start_date: "2024-01-03",
        end_date: "2024-01-12",
        start_odometer: 18930,
        end_odometer: 20034,
        start_branch_name: "LA-1",
        end_branch_name: "HST-1"
    },
    {
        registration_number: "B57-XY9",
        customer_name: { first_name: "Jennifer", last_name: "Martinez" },
        employee_name: { first_name: "Mia", last_name: "Sanchez" },
        start_date: "2024-01-12",
        end_date: "2024-01-15",
        start_odometer: 12728,
        end_odometer: 13058,
        start_branch_name: "CH-1",
        end_branch_name: "CH-1"
    },
    {
        registration_number: "G98-ZY3",
        customer_name: { first_name: "James", last_name: "Taylor" },
        employee_name: { first_name: "Ashley", last_name: "Gonzalez" },
        start_date: "2024-01-11",
        end_date: "2024-01-25",
        start_odometer: 89641,
        end_odometer: 91743,
        start_branch_name: "NY-1",
        end_branch_name: "CH-1"
    },
    {
        registration_number: "J88-9YH",
        customer_name: { first_name: "Jessica", last_name: "Anderson" },
        employee_name: { first_name: "Lucas", last_name: "Russell" },
        start_date: "2024-01-02",
        end_date: "2024-01-12",
        start_odometer: 123901,
        end_odometer: 125837,
        start_branch_name: "STL-1",
        end_branch_name: "HST-1"
    },
    {
        registration_number: "L90-3GJ",
        customer_name: { first_name: "John", last_name: "Smith" },
        employee_name: { first_name: "Benjamin", last_name: "Perez" },
        start_date: "2024-01-19",
        end_date: "2024-01-23",
        start_odometer: 45220,
        end_odometer: 46347,
        start_branch_name: "LA-1",
        end_branch_name: "HST-1"
    },
    {
        registration_number: "W34-EF9",
        customer_name: { first_name: "Daniel", last_name: "Thomas" },
        employee_name: { first_name: "Sophia", last_name: "Hernandez" },
        start_date: "2024-01-12",
        end_date: "2024-01-14",
        start_odometer: 67986,
        end_odometer: 68127,
        start_branch_name: "HST-1",
        end_branch_name: "STL-1"
    },
    {
        registration_number: "Q65-4RF",
        customer_name: { first_name: "Elizabeth", last_name: "Lee" },
        employee_name: { first_name: "Jessica", last_name: "Garcia" },
        start_date: "2024-01-16",
        end_date: "2024-01-20",
        start_odometer: 29360,
        end_odometer: 30258,
        start_branch_name: "LA-1",
        end_branch_name: "NY-1"
    },
    {
        registration_number: "R22-VB6",
        customer_name: { first_name: "William", last_name: "White" },
        employee_name: { first_name: "Grace", last_name: "Howard" },
        start_date: "2024-01-22",
        end_date: "2024-01-30",
        start_odometer: 87000,
        end_odometer: 87546,
        start_branch_name: "NY-1",
        end_branch_name: "CH-1"
    },
    {
        registration_number: "S39-6GH",
        customer_name: { first_name: "Ashley", last_name: "Harris" },
        employee_name: { first_name: "Avery", last_name: "Richardson" },
        start_date: "2024-02-02",
        end_date: "2024-02-05",
        start_odometer: 45601,
        end_odometer: 46035,
        start_branch_name: "LA-1",
        end_branch_name: "NY-1"
    },
    {
        registration_number: "U44-JK7",
        customer_name: { first_name: "John", last_name: "Smith" },
        employee_name: { first_name: "Noah", last_name: "Adams" },
        start_date: "2024-02-09",
        end_date: "2024-02-15",
        start_odometer: 60000,
        end_odometer: 61259,
        start_branch_name: "CH-1",
        end_branch_name: "CH-1"
    },
    {
        registration_number: "V55-KL8",
        customer_name: { first_name: "David", last_name: "Martin" },
        employee_name: { first_name: "Sophia", last_name: "Hernandez" },
        start_date: "2024-02-18",
        end_date: "2024-02-25",
        start_odometer: 10007,
        end_odometer: 10734,
        start_branch_name: "HST-1",
        end_branch_name: "HST-1"
    },
    {
        registration_number: "X66-MN4",
        customer_name: { first_name: "Samantha", last_name: "Thompson" },
        employee_name: { first_name: "Lucas", last_name: "Russell" },
        start_date: "2024-02-28",
        end_date: "2024-03-03",
        start_odometer: 20012,
        end_odometer: 21025,
        start_branch_name: "STL-1",
        end_branch_name: "LA-1"
    },
    {
        registration_number: "Y77-OP5",
        customer_name: { first_name: "John", last_name: "Smith" },
        employee_name: { first_name: "Grace", last_name: "Howard" },
        start_date: "2024-03-06",
        end_date: "2024-03-10",
        start_odometer: 10005,
        end_odometer: 10512,
        start_branch_name: "NY-1",
        end_branch_name: "NY-1"
    },
    {
        registration_number: "Z88-QQ6",
        customer_name: { first_name: "Joseph", last_name: "Garcia" },
        employee_name: { first_name: "Madison", last_name: "Green" },
        start_date: "2024-03-11",
        end_date: "2024-03-17",
        start_odometer: 30020,
        end_odometer: 30501,
        start_branch_name: "LA-1",
        end_branch_name: "CH-1"
    },
    {
        registration_number: "A99-RR7",
        customer_name: { first_name: "Olivia", last_name: "Martinez" },
        employee_name: { first_name: "Mia", last_name: "Sanchez" },
        start_date: "2024-03-18",
        end_date: "2024-03-25",
        start_odometer: 40009,
        end_odometer: 41070,
        start_branch_name: "CH-1",
        end_branch_name: "CH-1"
    },
    {
        registration_number: "C11-ST8",
        customer_name: { first_name: "Charles", last_name: "Robinson" },
        employee_name: { first_name: "Sofia", last_name: "Diaz" },
        start_date: "2024-03-27",
        end_date: "2024-03-31",
        start_odometer: 50034,
        end_odometer: 50599,
        start_branch_name: "HST-1",
        end_branch_name: "NY-1"
    },
    {
        registration_number: "E33-UV9",
        customer_name: { first_name: "Emily", last_name: "Lewis" },
        employee_name: { first_name: "James", last_name: "Lopez" },
        start_date: "2024-04-02",
        end_date: "2024-04-08",
        start_odometer: 11276,
        end_odometer: 12146,
        start_branch_name: "STL-1",
        end_branch_name: "HST-1"
    },
    {
        registration_number: "ERS-8579",
        customer_name: { first_name: "Matthew", last_name: "Hall" },
        employee_name: { first_name: "Alexander", last_name: "Scott" },
        start_date: "2024-04-11",
        end_date: "2024-04-15",
        start_odometer: 41073,
        end_odometer: 41550,
        start_branch_name: "NY-1",
        end_branch_name: "NY-1"
    },
    {
        registration_number: "799-XYF",
        customer_name: { first_name: "Sophia", last_name: "Scott" },
        employee_name: { first_name: "David", last_name: "Wilson" },
        start_date: "2024-04-17",
        end_date: "2024-04-23",
        start_odometer: 27082,
        end_odometer: 27852,
        start_branch_name: "NY-1",
        end_branch_name: "STL-1"
    },
    {
        registration_number: "D36-8BN",
        customer_name: { first_name: "Matthew", last_name: "Hall" },
        employee_name: { first_name: "Jessica", last_name: "Garcia" },
        start_date: "2024-04-27",
        end_date: "2024-04-30",
        start_odometer: 54012,
        end_odometer: 54312,
        start_branch_name: "LA-1",
        end_branch_name: "LA-1"
    },
    {
        registration_number: "H37-XY2",
        customer_name: { first_name: "Emily", last_name: "Lewis" },
        employee_name: { first_name: "Sofia", last_name: "Diaz" },
        start_date: "2024-05-05",
        end_date: "2024-05-08",
        start_odometer: 20034,
        end_odometer: 20484,
        start_branch_name: "HST-1",
        end_branch_name: "NY-1"
    },
    {
        registration_number: "B57-XY9",
        customer_name: { first_name: "Charles", last_name: "Robinson" },
        employee_name: { first_name: "Amanda", last_name: "Jones" },
        start_date: "2024-05-11",
        end_date: "2024-05-16",
        start_odometer: 13058,
        end_odometer: 14015,
        start_branch_name: "CH-1",
        end_branch_name: "CH-1"
    },
    {
        registration_number: "G98-ZY3",
        customer_name: { first_name: "Olivia", last_name: "Martinez" },
        employee_name: { first_name: "William", last_name: "Rodriguez" },
        start_date: "2024-05-20",
        end_date: "2024-05-23",
        start_odometer: 91743,
        end_odometer: null,
        start_branch_name: "CH-1",
        end_branch_name: "CH-1"
    },
    {
        registration_number: "J88-9YH",
        customer_name: { first_name: "Joseph", last_name: "Garcia" },
        employee_name: { first_name: "Sophia", last_name: "Hernandez" },
        start_date: "2024-05-25",
        end_date: "2024-05-29",
        start_odometer: 125837,
        end_odometer: null,
        start_branch_name: "HST-1",
        end_branch_name: "HST-1"
    },
    {
        registration_number: "L90-3GJ",
        customer_name: { first_name: "Samantha", last_name: "Thompson" },
        employee_name: { first_name: "Sofia", last_name: "Diaz" },
        start_date: "2024-06-05",
        end_date: "2024-06-06",
        start_odometer: 46347,
        end_odometer: 46592,
        start_branch_name: "HST-1",
        end_branch_name: "LA-1"
    },
    {
        registration_number: "W34-EF9",
        customer_name: { first_name: "David", last_name: "Martin" },
        employee_name: { first_name: "Olivia", last_name: "Taylor" },
        start_date: "2024-06-09",
        end_date: "2024-06-13",
        start_odometer: 68127,
        end_odometer: null,
        start_branch_name: "STL-1",
        end_branch_name: "STL-1"
    },
    {
        registration_number: "Q65-4RF",
        customer_name: { first_name: "Ashley", last_name: "Harris" },
        employee_name: { first_name: "Ashley", last_name: "Gonzalez" },
        start_date: "2024-06-15",
        end_date: "2024-06-20",
        start_odometer: 30258,
        end_odometer: null,
        start_branch_name: "NY-1",
        end_branch_name: "NY-1"
    }
];

// Insert rental documents into the rentals collection
rentals.forEach(rental => {
  const car = cars.find(car => car.registration_number === rental.registration_number);
  const customer = customers.find(cust => 
    cust.first_name === rental.customer_name.first_name &&
    cust.last_name === rental.customer_name.last_name
  );
  const employee = employees.find(employee => 
    employee.first_name === rental.employee_name.first_name &&
    employee.last_name === rental.employee_name.last_name
  );
  const start_date = new Date(rental.start_date);
  const end_date = new Date(rental.end_date);
  const rental_days = Math.ceil((end_date - start_date) / (1000 * 60 * 60 * 24)); // Calculate rental days
  const total_amount = rental_days * car.daily_price; // Calculate total amount

  db.rentals.insertOne({
    car: {
      _id: car._id,
      model: car.model,
      manufacturer: car.manufacturer,
      registration_number: car.registration_number
    },
    customer: {
      _id: customer._id,
      first_name: customer.first_name,
      last_name: customer.last_name,
      phone_number: customer.phone_number,
      email: customer.email
    },
    agreement: {
      employee_id: employee._id,
      employee_first_name: employee.first_name,
      employee_last_name: employee.last_name,
      payment_date: rental.start_date,
      total_amount: total_amount
    },
    start_date: rental.start_date,
    end_date: rental.end_date,
    start_odometer: rental.start_odometer,
    end_odometer: rental.end_odometer,
    start_branch_name: rental.start_branch_name,
    end_branch_name: rental.end_branch_name
  });
});

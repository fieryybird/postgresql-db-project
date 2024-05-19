use car_rentals;

db.createCollection("cars", {
    "capped": false,
    "validator": {
        "$jsonSchema": {
            "bsonType": "object",
            "title": "cars",
            "properties": {
                "_id": {
                    "bsonType": "objectId"
                },
                "car_type": {
                    "bsonType": "string",
                    "enum": [
                        "Econom",
                        "Standart",
                        "Bussines",
                        "Premium"
                    ]
                },
                "daily_price": {
                    "bsonType": "int"
                },
                "registration_number": {
                    "bsonType": "string"
                },
                "vin_code": {
                    "bsonType": "string"
                },
                "manufacturer": {
                    "bsonType": "string"
                },
                "model": {
                    "bsonType": "string"
                },
                "year": {
                    "bsonType": "int"
                },
                "color": {
                    "bsonType": "string"
                },
                "number_of_seats": {
                    "bsonType": "int"
                },
                "fuel_type": {
                    "bsonType": "string",
                    "enum": [
                        "Diesel",
                        "Gasoline",
                        "Hybrid",
                        "Electro"
                    ]
                },
                "transmission": {
                    "bsonType": "string"
                },
                "last_inspected_odometer": {
                    "bsonType": "int"
                },
                "availability_status": {
                    "bsonType": "bool"
                },
                "branch_name": {
                    "bsonType": "string"
                }
            },
            "additionalProperties": false,
            "required": [
                "_id",
                "car_type",
                "daily_price",
                "registration_number",
                "vin_code",
                "manufacturer",
                "model",
                "year",
                "color",
                "fuel_type",
                "transmission",
                "availability_status",
                "branch_name"
            ]
        }
    },
    "validationLevel": "off"
});




db.createCollection("branches", {
    "capped": false,
    "validator": {
        "$jsonSchema": {
            "bsonType": "object",
            "title": "branches",
            "properties": {
                "_id": {
                    "bsonType": "objectId"
                },
                "branch_name": {
                    "bsonType": "string"
                },
                "address": {
                    "bsonType": "string"
                },
                "city": {
                    "bsonType": "string"
                },
                "region": {
                    "bsonType": "string"
                },
                "postal_code": {
                    "bsonType": "string"
                },
                "phone_number": {
                    "bsonType": "string"
                }
            },
            "additionalProperties": false,
            "required": [
                "_id",
                "branch_name",
                "address",
                "city",
                "region",
                "postal_code",
                "phone_number"
            ]
        }
    },
    "validationLevel": "off",
    "validationAction": "warn"
});




db.createCollection("customers", {
    "capped": false,
    "validator": {
        "$jsonSchema": {
            "bsonType": "object",
            "title": "customers",
            "properties": {
                "_id": {
                    "bsonType": "objectId"
                },
                "first_name": {
                    "bsonType": "string"
                },
                "last_name": {
                    "bsonType": "string"
                },
                "birth_date": {
                    "bsonType": "string",
                    "pattern": "^(\\d{4})-(0[1-9]|1[0-2])-(0[1-9]|[12][0-9]|3[01])$"
                },
                "phone_number": {
                    "bsonType": "string"
                },
                "email": {
                    "bsonType": "string"
                },
                "address": {
                    "bsonType": "string"
                },
                "city": {
                    "bsonType": "string"
                },
                "region": {
                    "bsonType": "string"
                },
                "passport": {
                    "bsonType": "string"
                },
                "driver_license": {
                    "bsonType": "string"
                }
            },
            "additionalProperties": false,
            "required": [
                "_id",
                "first_name",
                "last_name",
                "date_of_birth",
                "phone_number",
                "address",
                "city",
                "passport",
                "driver_license"
            ]
        }
    },
    "validationLevel": "off",
    "validationAction": "warn"
});




db.createCollection("employees", {
    "capped": false,
    "validator": {
        "$jsonSchema": {
            "bsonType": "object",
            "title": "employees",
            "properties": {
                "_id": {
                    "bsonType": "objectId"
                },
                "first_name": {
                    "bsonType": "string"
                },
                "last_name": {
                    "bsonType": "string"
                },
                "birth_date": {
                    "bsonType": "string",
                    "pattern": "^(\\d{4})-(0[1-9]|1[0-2])-(0[1-9]|[12][0-9]|3[01])$"
                },
                "address": {
                    "bsonType": "string"
                },
                "city": {
                    "bsonType": "string"
                },
                "region": {
                    "bsonType": "string"
                },
                "email": {
                    "bsonType": "string"
                },
                "salary": {
                    "bsonType": "int"
                },
                "branch": {
                    "bsonType": "object",
                    "properties": {
                        "branch_name": {
                            "bsonType": "string"
                        },
                        "address": {
                            "bsonType": "string"
                        },
                        "city": {
                            "bsonType": "string"
                        },
                        "region": {
                            "bsonType": "string"
                        },
                        "postal_code": {
                            "bsonType": "string"
                        },
                        "phone_number": {
                            "bsonType": "string"
                        }
                    },
                    "additionalProperties": false,
                    "required": [
                        "branch_name",
                        "address",
                        "city",
                        "region",
                        "postal_code",
                        "phone_number"
                    ]
                }
            },
            "additionalProperties": false,
            "required": [
                "_id",
                "first_name",
                "last_name",
                "birth_date",
                "address",
                "city",
                "salary"
            ]
        }
    },
    "validationLevel": "off",
    "validationAction": "warn"
});




db.createCollection("rentals", {
    "capped": false,
    "validator": {
        "$jsonSchema": {
            "bsonType": "object",
            "title": "rentals",
            "properties": {
                "_id": {
                    "bsonType": "objectId"
                },
                "car": {
                    "bsonType": "object",
                    "properties": {
                        "_id": {
                            "bsonType": "objectId"
                        },
                        "model": {
                            "bsonType": "string"
                        },
                        "manufacturer": {
                            "bsonType": "string"
                        },
                        "registration_number": {
                            "bsonType": "string"
                        }
                    },
                    "additionalProperties": false,
                    "required": [
                        "_id",
                        "model",
                        "manufacturer",
                        "registration_number"
                    ]
                },
                "customer": {
                    "bsonType": "object",
                    "properties": {
                        "_id": {
                            "bsonType": "objectId"
                        },
                        "first_name": {
                            "bsonType": "string"
                        },
                        "last_name": {
                            "bsonType": "string"
                        },
                        "phone_number": {
                            "bsonType": "string"
                        },
                        "email": {
                            "bsonType": "string"
                        }
                    },
                    "additionalProperties": false,
                    "required": [
                        "_id",
                        "first_name",
                        "last_name",
                        "phone_number"
                    ]
                },
                "agreement": {
                    "bsonType": "object",
                    "properties": {
                        "employee_id": {
                            "bsonType": "objectId"
                        },
                        "employee_first_name": {
                            "bsonType": "string"
                        },
                        "employee_last_name": {
                            "bsonType": "string"
                        },
                        "payment_date": {
                            "bsonType": "string",
                            "pattern": "^(\\d{4})-(0[1-9]|1[0-2])-(0[1-9]|[12][0-9]|3[01])$"
                        },
                        "total_amount": {
                            "bsonType": "int"
                        }
                    },
                    "additionalProperties": false,
                    "required": [
                        "employee_id",
                        "employee_first_name",
                        "employee_last_name",
                        "payment_date",
                        "total_amount"
                    ]
                },
                "start_date": {
                    "bsonType": "string"
                },
                "end_date": {
                    "bsonType": "string"
                },
                "start_odometer": {
                    "bsonType": "int"
                },
                "end_odometer": {
                    "bsonType": "string"
                },
                "start_branch_name": {
                    "bsonType": "string"
                },
                "end_branch_name": {
                    "bsonType": "string"
                }
            },
            "additionalProperties": false,
            "dependencies": {
                "end_branch_name": [
                    "start_branch_name"
                ],
                "end_odometer": [
                    "start_odometer"
                ]
            },
            "required": [
                "_id",
                "car",
                "agreement",
                "start_date",
                "end_date",
                "start_odometer",
                "start_branch_name"
            ]
        }
    },
    "validationLevel": "off",
    "validationAction": "warn"
});
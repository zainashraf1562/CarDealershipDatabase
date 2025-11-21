DROP DATABASE IF EXISTS CarDealershipDatabase;

CREATE DATABASE IF NOT EXISTS CarDealershipDatabase;

USE CarDealershipDatabase;

DROP TABLE IF EXISTS sales_contracts;
DROP TABLE IF EXISTS lease_contracts;
DROP TABLE IF EXISTS vehicles;
DROP TABLE IF EXISTS inventory;
DROP TABLE IF EXISTS dealerships;

CREATE TABLE dealerships (
    dealership_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    address VARCHAR(50) NOT NULL,
    phone VARCHAR(12)
);

CREATE TABLE vehicles (
    vin varchar(17) PRIMARY KEY,
    make varchar(50),
    model varchar(50),
    `year` int,
    color varchar(50),
    vehicleType varchar(50),
    odometer int,
    price double not null,
    SOLD boolean
);

CREATE TABLE inventory (
	dealership_id INT,
    vin varchar(17),
    FOREIGN KEY (dealership_id) REFERENCES dealerships(dealership_id),
    FOREIGN KEY (vin) REFERENCES vehicles(vin)
);

CREATE TABLE sales_contracts (
    contract_id int auto_increment primary key,
    vin varchar(17),
    date date,
    price decimal(10,2),
    foreign key (vin) references vehicles(vin)
);

CREATE TABLE lease_contracts (
    contract_id int auto_increment primary key,
    vin varchar(17),
    date date,
    price decimal(10,2),
    foreign key (vin) references vehicles(vin)
);


INSERT INTO dealerships (name, address, phone) VALUES
('Manhattan Auto Mall', '123 Broadway, NY', '2125551290'),
('Queens Car Center', '45-12 Queens Blvd, NY', '7185554422'),
('Brooklyn Motors', '88 Flatbush Ave, NY', '3475557788');


INSERT INTO vehicles (vin, make, model, year, color, vehicleType, odometer, price, SOLD) VALUES
('1HGCM82633A004352', 'Honda', 'Civic', 2020, 'Blue', 'Sedan', 15000, 18000, FALSE),
('1FAFP404X1F192837', 'Ford', 'Mustang', 2019, 'Red', 'Coupe', 22000, 26000, FALSE),
('2G1WF52E659126734', 'Chevrolet', 'Impala', 2021, 'Black', 'Sedan', 12000, 21000, TRUE),
('5YJ3E1EA7KF317321', 'Tesla', 'Model 3', 2022, 'White', 'Electric', 5000, 38000, FALSE),
('3C6UR5DL6FG512890', 'Dodge', 'Ram 1500', 2018, 'Gray', 'Truck', 45000, 29000, TRUE);


INSERT INTO inventory (dealership_id, vin) VALUES
(1, '1HGCM82633A004352'),   
(1, '5YJ3E1EA7KF317321'),  
(2, '1FAFP404X1F192837'),   
(3, '2G1WF52E659126734'),   
(3, '3C6UR5DL6FG512890');   


INSERT INTO sales_contracts (vin, date, price) VALUES
('2G1WF52E659126734', '2024-10-15', 20500.00),
('3C6UR5DL6FG512890', '2024-09-12', 28000.00);


INSERT INTO lease_contracts (vin, date, price) VALUES
('1HGCM82633A004352', '2024-01-05', 350.00),
('5YJ3E1EA7KF317321', '2024-02-18', 499.00);





USE `CruiseShip`;

CREATE TABLE `CruiseShip` (
  `CruiseShipId` INT(11) NOT NULL AUTO_INCREMENT,
  `CruiseName` VARCHAR(77) NOT NULL,
  `Destination` VARCHAR(55) NOT NULL,
  PRIMARY KEY (`CruiseShipId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
INSERT INTO `CruiseShip` VALUES (1055, 'Le Jacques Cartier', 'France');
INSERT INTO `CruiseShip` VALUES (1072, 'Golden West Waterways', 'United State Of America');

CREATE TABLE `Department` (
  `DepartmentId` INT(11) NOT NULL AUTO_INCREMENT,
  `DepartmentType` VARCHAR(255) NOT NULL,
  `ManagerId` INT(11) NOT NULL,
  `ManagerStartDate` DATE NOT NULL,
  `CruiseShipId` INT(11) NOT NULL,
  PRIMARY KEY (`DepartmentId`),
  FOREIGN KEY (`CruiseShipId`) REFERENCES `CruiseShip`(`CruiseShipId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
INSERT INTO `Department` VALUES (4024, 'Reservation', 7600, '2022-01-11', 1055);
INSERT INTO `Department` VALUES (4025, 'Engineering', 7604, '2020-25-11', 1055);
INSERT INTO `Department` VALUES (4026, 'Kitchen', 7633, '2021-03-3', 1072);
INSERT INTO `Department` VALUES (4027, 'Security', 7659, '2022-02-10', 1055);
INSERT INTO `Department` VALUES (4028, 'Housekeeping', 7664, '2021-16-2', 1072);
INSERT INTO `Department` VALUES (4029, 'Accounts', 7682, '2019-07-16', 1072);

CREATE TABLE `Room` (
  `RoomId` INT(11) NOT NULL AUTO_INCREMENT,
  `RoomNumber` INT(11) NOT NULL,
  `RoomType` ENUM('Single', 'Double', 'Triple') NOT NULL,
  `CruiseShipId` INT(11) NOT NULL,
  PRIMARY KEY (`RoomId`),
  FOREIGN KEY (`CruiseShipId`) REFERENCES `CruiseShip`(`CruiseShipId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
INSERT INTO `Room` VALUES (3, 1, 'Single', 1055);
INSERT INTO `Room` VALUES (4, 2, 'Double', 1055);
INSERT INTO `Room` VALUES (5, 3, 'Triple', 1055);
INSERT INTO `Room` VALUES (6, 4, 'Single', 1055);
INSERT INTO `Room` VALUES (7, 5, 'Single', 1055);
INSERT INTO `Room` VALUES (8, 6, 'Single', 1055);
INSERT INTO `Room` VALUES (9, 7, 'Double', 1055);
INSERT INTO `Room` VALUES (12, 8, 'Triple', 1055);
INSERT INTO `Room` VALUES (13, 9, 'Triple', 1055);
INSERT INTO `Room` VALUES (14, 10, 'Triple', 1055);
INSERT INTO `Room` VALUES (15, 11, 'Single', 1055);
INSERT INTO `Room` VALUES (21, 12, 'Double', 1055);
INSERT INTO `Room` VALUES (22, 13, 'Triple', 1055);
INSERT INTO `Room` VALUES (23, 14, 'Single', 1055);
INSERT INTO `Room` VALUES (24, 15, 'Double', 1055);
INSERT INTO `Room` VALUES (25, 16, 'Single', 1055);
INSERT INTO `Room` VALUES (26, 17, 'Double', 1055);
INSERT INTO `Room` VALUES (28, 18, 'Triple', 1055);
INSERT INTO `Room` VALUES (38, 19, 'Double', 1055);
INSERT INTO `Room` VALUES (39, 20, 'Triple', 1055);
INSERT INTO `Room` VALUES (40, 21, 'Single', 1055);
INSERT INTO `Room` VALUES (41, 22, 'Double', 1055);
INSERT INTO `Room` VALUES (42, 23, 'Triple', 1055);
INSERT INTO `Room` VALUES (43, 24, 'Triple', 1055);
INSERT INTO `Room` VALUES (44, 25, 'Triple', 1055);
INSERT INTO `Room` VALUES (45, 26, 'Single', 1055);
INSERT INTO `Room` VALUES (46, 27, 'Double', 1055);
INSERT INTO `Room` VALUES (47, 28, 'Triple', 1055);
INSERT INTO `Room` VALUES (48, 29, 'Single', 1055);
INSERT INTO `Room` VALUES (49, 30, 'Single', 1055);
INSERT INTO `Room` VALUES (50, 31, 'Single', 1055);
INSERT INTO `Room` VALUES (51, 32, 'Double', 1055);
INSERT INTO `Room` VALUES (52, 33, 'Triple', 1055);
INSERT INTO `Room` VALUES (53, 34, 'Double', 1055);
INSERT INTO `Room` VALUES (54, 35, 'Double', 1055);
INSERT INTO `Room` VALUES (55, 36, 'Single', 1055);
INSERT INTO `Room` VALUES (56, 37, 'Double', 1055);
INSERT INTO `Room` VALUES (57, 38, 'Triple', 1055);
INSERT INTO `Room` VALUES (58, 39, 'Double', 1055);
INSERT INTO `Room` VALUES (59, 40, 'Triple', 1055);
INSERT INTO `Room` VALUES (60, 41, 'Single', 1055);
INSERT INTO `Room` VALUES (61, 42, 'Double', 1055);
INSERT INTO `Room` VALUES (62, 43, 'Triple', 1055);
INSERT INTO `Room` VALUES (63, 44, 'Triple', 1055);
INSERT INTO `Room` VALUES (64, 45, 'Single', 1055);
INSERT INTO `Room` VALUES (65, 46, 'Single', 1055);
INSERT INTO `Room` VALUES (66, 47, 'Double', 1055);
INSERT INTO `Room` VALUES (67, 48, 'Triple', 1055);
INSERT INTO `Room` VALUES (68, 49, 'Single', 1055);
INSERT INTO `Room` VALUES (69, 50, 'Single', 1055);
INSERT INTO `Room` VALUES (70, 51, 'Single', 1055);
INSERT INTO `Room` VALUES (71, 52, 'Double', 1055);
INSERT INTO `Room` VALUES (72, 53, 'Triple', 1055);
INSERT INTO `Room` VALUES (73, 54, 'Triple', 1055);
INSERT INTO `Room` VALUES (74, 55, 'Single', 1055);
INSERT INTO `Room` VALUES (75, 56, 'Single', 1055);
INSERT INTO `Room` VALUES (76, 57, 'Double', 1055);
INSERT INTO `Room` VALUES (77, 58, 'Triple', 1055);
INSERT INTO `Room` VALUES (78, 59, 'Triple', 1055);
INSERT INTO `Room` VALUES (79, 60, 'Single', 1055);
INSERT INTO `Room` VALUES (80, 61, 'Single', 1055);
INSERT INTO `Room` VALUES (81, 62, 'Double', 1055);
INSERT INTO `Room` VALUES (82, 63, 'Triple', 1055);
INSERT INTO `Room` VALUES (83, 64, 'Double', 1055);
INSERT INTO `Room` VALUES (84, 65, 'Double', 1055);
INSERT INTO `Room` VALUES (85, 66, 'Single', 1055);
INSERT INTO `Room` VALUES (86, 67, 'Double', 1055);
INSERT INTO `Room` VALUES (87, 68, 'Triple', 1055);
INSERT INTO `Room` VALUES (88, 69, 'Double', 1055);
INSERT INTO `Room` VALUES (89, 70, 'Double', 1055);
INSERT INTO `Room` VALUES (90, 71, 'Single', 1055);
INSERT INTO `Room` VALUES (91, 72, 'Double', 1055);
INSERT INTO `Room` VALUES (92, 73, 'Triple', 1055);
INSERT INTO `Room` VALUES (93, 74, 'Double', 1055);
INSERT INTO `Room` VALUES (94, 75, 'Double', 1055);
INSERT INTO `Room` VALUES (95, 76, 'Single', 1055);
INSERT INTO `Room` VALUES (96, 77, 'Double', 1055);
INSERT INTO `Room` VALUES (97, 78, 'Triple', 1055);
INSERT INTO `Room` VALUES (98, 79, 'Double', 1055);
INSERT INTO `Room` VALUES (99, 80, 'Double', 1055);
INSERT INTO `Room` VALUES (100, 81, 'Single', 1055);


CREATE TABLE `Reservation` (
  `ReservationId` INT(11) NOT NULL AUTO_INCREMENT,
  `StartDate` DATE NOT NULL,
  `EndDate` DATE NOT NULL,
  PRIMARY KEY (`ReservationId`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
INSERT INTO `Reservation` VALUES (2, '2023-12-12', '2023-12-17');
INSERT INTO `Reservation` VALUES (3, '2023-12-19', '2023-12-26');
INSERT INTO `Reservation` VALUES (4, '2023-12-01', '2023-12-10');
INSERT INTO `Reservation` VALUES (5, '2023-12-09', '2023-12-15');
INSERT INTO `Reservation` VALUES (6, '2023-12-05', '2023-12-12');
INSERT INTO `Reservation` VALUES (7, '2023-12-22', '2023-12-27');
INSERT INTO `Reservation` VALUES (8, '2023-12-31', '2024-01-08');
INSERT INTO `Reservation` VALUES (9, '2023-12-29', '2024-01-11');
INSERT INTO `Reservation` VALUES (10, '2023-12-02', '2023-12-09');
INSERT INTO `Reservation` VALUES (11, '2023-12-16', '2023-12-31');

CREATE TABLE `Customer` (
  `CustomerID` INT(11) NOT NULL AUTO_INCREMENT,
  `Email` VARCHAR(255) NOT NULL,
  `FirstName` VARCHAR(366) NOT NULL,
  `LastName` VARCHAR(344) NOT NULL,
  `PhoneNumber` VARCHAR(211) NOT NULL,
  `Trip` VARCHAR(7) NOT NULL,
  `CustomerBirthday` DATE NOT NULL,
  `RoomId` INT(11) NOT NULL,
  PRIMARY KEY (`CustomerID`),
  FOREIGN KEY (`RoomId`) REFERENCES `Room`(`RoomId`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
INSERT INTO `Customer` VALUES (1015, 'a.micheal@randatmail.com', 'Alice', 'Micheal', '872-7642-12', 'Norway', '1975-07-11', 4);
INSERT INTO `Customer` VALUES (1016, 'r.brooks@randatmail.com', 'Robert', 'Brooks', '922-6153-06', 'Vietnam', '1990-12-07', 5);
INSERT INTO `Customer` VALUES (1017, 'g.casey@randatmail.com', 'Greg', 'Casey', '738-0235-82', 'Hawaii', '1988-11-15', 6);
INSERT INTO `Customer` VALUES (1018, 'a.kelly@randatmail.com', 'Aaron', 'Kelly', '991-7645-49', 'Caribbean', '2000-09-03', 7);
INSERT INTO `Customer` VALUES (1019, 'd.carter@randatmail.com', 'David', 'Carter', '236-0150-11', 'Bahamas', '2005-12-01', 8);
INSERT INTO `Customer` VALUES (1020, 'a.tucker@randatmail.com', 'Alice', 'Tucker', '742-6026-98', 'Bermuda', '2004-01-12', 9);
INSERT INTO `Customer` VALUES (1021, 't.perry@randatmail.com', 'Tina', 'Perry', '549-5644-63', 'Mexico', '2001-11-14', 12);
INSERT INTO `Customer` VALUES (1022, 'a.davis@randatmail.com', 'Amelia', 'Davis', '642-5678-22', 'Canada', '2001-06-25', 15);
INSERT INTO `Customer` VALUES (1023, 'r.brown@randatmail.com', 'Rebecca', 'Brown', '980-0027-82', 'Alaska', '1979-11-03', 21);
INSERT INTO `Customer` VALUES (1024, 'f.dixon@randatmail.com', 'DefaultName', 'Dixon', '158-1095-10', 'Australia', '2000-11-07', 22);
INSERT INTO `Customer` VALUES (1025, 'r.parker@randatmail.com', 'Rachel', 'Parker', '519-8100-98', 'Norway', '2002-07-19', 23);
INSERT INTO `Customer` VALUES (1026, 't.armstrong@randatmail.com', 'Tina', 'Armstrong', '823-6230-57', 'Vietnam', '2003-01-26', 24);
INSERT INTO `Customer` VALUES (1027, 'm.harris@randatmail.com', 'Matthew', 'Harris', '575-7916-47', 'Hawaii', '2000-05-06', 25);
INSERT INTO `Customer` VALUES (1028, 'm.taylor@randatmail.com', 'Molly', 'Taylor', '239-3587-27', 'Caribbean', '1986-08-09', 26);
INSERT INTO `Customer` VALUES (1029, 'd.dixon@randatmail.com', 'David', 'Dixon', '649-6290-94', 'Bahamas', '1996-03-04', 28);
INSERT INTO `Customer` VALUES (1030, 'm.perkins@randatmail.com', 'Michael', 'Perkins', '039-6345-08', 'Bermuda', '1996-05-24', 38);
INSERT INTO `Customer` VALUES (1031, 'r.campbell@randatmail.com', 'Robert', 'Campbell', '447-3139-38', 'Mexico', '1983-07-09', 39);
INSERT INTO `Customer` VALUES (1032, 's.cole@randatmail.com', 'Sophia', 'Cole', '961-9009-24', 'Canada', '1978-06-02', 40);
INSERT INTO `Customer` VALUES (1033, 'e.campbell@randatmail.com', 'Ella', 'Campbell', '922-6209-61', 'Alaska', '1995-11-15', 41);
INSERT INTO `Customer` VALUES (1034, 't.bennett@randatmail.com', 'Tracy', 'Bennett', '920-1498-45', 'Australia', '1979-02-24', 42);
INSERT INTO `Customer` VALUES (1035, 'm.ross@randatmail.com', 'Michael', 'Ross', '609-2673-52', 'Norway', '1992-08-28', 43);
INSERT INTO `Customer` VALUES (1036, 'r.mason@randatmail.com', 'Robert', 'Mason', '897-1819-87', 'Vietnam', '1991-08-14', 44);
INSERT INTO `Customer` VALUES (1037, 's.henderson@randatmail.com', 'Sophia', 'Henderson', '067-0176-37', 'Hawaii', '2002-04-28', 45);
INSERT INTO `Customer` VALUES (1038, 'b.farrell@randatmail.com', 'Bianca', 'Farrell', '659-3123-07', 'Caribbean', '1982-08-12', 46);
INSERT INTO `Customer` VALUES (1039, 'm.douglas@randatmail.com', 'Mason', 'Douglas', '465-9780-10', 'Bahamas', '1974-02-10', 47);
INSERT INTO `Customer` VALUES (1040, 'b.carroll@randatmail.com', 'Brian', 'Carroll', '019-9273-49', 'Bermuda', '2000-11-24', 48);
INSERT INTO `Customer` VALUES (1041, 'r.reed@randatmail.com', 'Robert', 'Reed', '789-1539-54', 'Mexico', '1999-12-25', 49);
INSERT INTO `Customer` VALUES (1042, 'r.gibson@randatmail.com', 'Ryan', 'Gibson', '941-1987-52', 'Canada', '2000-11-21', 50);
INSERT INTO `Customer` VALUES (1043, 'p.parker@randatmail.com', 'Paige', 'Parker', '204-4471-13', 'Alaska', '1970-08-21', 51);
INSERT INTO `Customer` VALUES (1044, 'a.myers@randatmail.com', 'Amber', 'Myers', '572-0632-19', 'Australia', '1989-08-16', 52);
INSERT INTO `Customer` VALUES (1045, 'a.casey@randatmail.com', 'Alice', 'Casey', '485-7236-31', 'Norway', '1986-08-27', 53);
INSERT INTO `Customer` VALUES (1046, 'a.morgan@randatmail.com', 'Andrew', 'Morgan', '504-0393-14', 'Vietnam', '1974-07-23', 54);
INSERT INTO `Customer` VALUES (1047, 'l.perry@randatmail.com', 'Logan', 'Perry', '425-5136-42', 'Hawaii', '2000-01-23', 55);
INSERT INTO `Customer` VALUES (1048, 'a.walker@randatmail.com', 'Aaron', 'Walker', '074-9756-33', 'Caribbean', '2000-07-21', 56);
INSERT INTO `Customer` VALUES (1049, 'e.barrett@randatmail.com', 'Elijah', 'Barrett', '966-4692-37', 'Bahamas', '2000-09-12', 57);
INSERT INTO `Customer` VALUES (1050, 'd.fowler@randatmail.com', 'Daniel', 'Fowler', '589-4991-00', 'Bermuda', '1978-07-20', 58);
INSERT INTO `Customer` VALUES (1051, 'r.hall@randatmail.com', 'Robert', 'Hall', '197-2503-16', 'Mexico', '1991-03-28', 59);
INSERT INTO `Customer` VALUES (1052, 'a.stewart@randatmail.com', 'Amelia', 'Stewart', '016-5018-89', 'Canada', '2015-06-09', 60);
INSERT INTO `Customer` VALUES (1053, 'h.walker@randatmail.com', 'Hailey', 'Walker', '022-0562-73', 'Alaska', '2012-05-17', 61);
INSERT INTO `Customer` VALUES (1054, 'l.brown@randatmail.com', 'Lucas', 'Brown', '109-7297-95', 'Australia', '1989-11-25', 62);
INSERT INTO `Customer` VALUES (1055, 'm.barrett@randatmail.com', 'Michael', 'Barrett', '901-9689-34', 'Norway', '2019-07-30', 63);
INSERT INTO `Customer` VALUES (1056, 'm.clark@randatmail.com', 'Megan', 'Clark', '359-7351-05', 'Vietnam', '2023-07-18', 64);
INSERT INTO `Customer` VALUES (1057, 'm.miller@randatmail.com', 'Matthew', 'Miller', '151-4028-24', 'Hawaii', '1994-12-04', 65);
INSERT INTO `Customer` VALUES (1058, 'd.howard@randatmail.com', 'Daisy', 'Howard', '363-6538-63', 'Caribbean', '2017-01-15', 66);
INSERT INTO `Customer` VALUES (1059, 'm.adams@randatmail.com', 'Mason', 'Adams', '319-9972-97', 'Bahamas', '2009-09-28', 67);
INSERT INTO `Customer` VALUES (1060, 'f.harrison@randatmail.com', 'DefaultName', 'Harrison', '619-7322-87', 'Bermuda', '2016-04-27', 68);
INSERT INTO `Customer` VALUES (1061, 'e.fowler@randatmail.com', 'Emma', 'Fowler', '911-2834-11', 'Mexico', '1999-12-16', 69);
INSERT INTO `Customer` VALUES (1062, 's.armstrong@randatmail.com', 'Sophia', 'Armstrong', '939-5013-24', 'Canada', '2012-02-21', 70);
INSERT INTO `Customer` VALUES (1063, 'h.hunt@randatmail.com', 'Hailey', 'Hunt', '140-0142-79', 'Alaska', '1979-10-07', 71);
INSERT INTO `Customer` VALUES (1064, 't.murphy@randatmail.com', 'Tracy', 'Murphy', '473-1926-71', 'Australia', '1979-06-27', 72);
INSERT INTO `Customer` VALUES (1065, 'a.crawford@randatmail.com', 'Alice', 'Crawford', '277-2465-19', 'Norway', '2017-04-26', 73);
INSERT INTO `Customer` VALUES (1066, 'j.murray@randatmail.com', 'DefaultName', 'Murray', '887-6573-28', 'Vietnam', '1986-07-19', 74);
INSERT INTO `Customer` VALUES (1067, 'p.morgan@randatmail.com', 'Patrick', 'Morgan', '710-4244-44', 'Hawaii', '1993-08-29', 75);
INSERT INTO `Customer` VALUES (1068, 'g.bennett@randatmail.com', 'Gina', 'Bennett', '890-9761-52', 'Caribbean', '2008-12-04', 76);
INSERT INTO `Customer` VALUES (1069, 'd.hall@randatmail.com', 'David', 'Hall', '487-5214-54', 'Bahamas', '2003-03-23', 77);
INSERT INTO `Customer` VALUES (1070, 'p.mitchell@randatmail.com', 'Peter', 'Mitchell', '872-5165-01', 'Bermuda', '1988-04-15', 78);
INSERT INTO `Customer` VALUES (1071, 's.payne@randatmail.com', 'Steven', 'Payne', '572-5259-92', 'Mexico', '2015-08-06', 79);
INSERT INTO `Customer` VALUES (1072, 'm.parker@randatmail.com', 'Matthew', 'Parker', '687-5813-24', 'Canada', '2023-08-20', 80);
INSERT INTO `Customer` VALUES (1073, 'c.gibson@randatmail.com', 'Claire', 'Gibson', '014-4362-37', 'Alaska', '2010-02-16', 81);
INSERT INTO `Customer` VALUES (1074, 'j.scott@randatmail.com', 'DefaultName', 'Scott', '781-8439-93', 'Australia', '2021-09-25', 82);
INSERT INTO `Customer` VALUES (1075, 'g.evans@randatmail.com', 'George', 'Evans', '367-6023-02', 'Norway', '1975-06-06', 83);
INSERT INTO `Customer` VALUES (1076, 'v.spencer@randatmail.com', 'Vanessa', 'Spencer', '458-3393-60', 'Vietnam', '1974-12-19', 84);
INSERT INTO `Customer` VALUES (1077, 'r.parker@randatmail.com', 'Ryan', 'Parker', '692-9555-38', 'Hawaii', '2005-06-04', 85);
INSERT INTO `Customer` VALUES (1078, 't.douglas@randatmail.com', 'Tara', 'Douglas', '016-0438-04', 'Caribbean', '2004-01-01', 86);
INSERT INTO `Customer` VALUES (1079, 'd.cooper@randatmail.com', 'David', 'Cooper', '632-0573-87', 'Bahamas', '2008-08-22', 87);
INSERT INTO `Customer` VALUES (1080, 'l.foster@randatmail.com', 'Liam', 'Foster', '913-6146-45', 'Bermuda', '1977-05-16', 88);
INSERT INTO `Customer` VALUES (1081, 'a.murray@randatmail.com', 'Andrew', 'Murray', '856-5818-54', 'Mexico', '1980-09-16', 89);
INSERT INTO `Customer` VALUES (1082, 'a.brooks@randatmail.com', 'Amelia', 'Brooks', '940-1298-44', 'Canada', '2008-12-05', 90);
INSERT INTO `Customer` VALUES (1083, 'h.brooks@randatmail.com', 'Hailey', 'Brooks', '645-7150-37', 'Alaska', '1970-05-14', 91);
INSERT INTO `Customer` VALUES (1084, 'a.richards@randatmail.com', 'Amber', 'Richards', '691-5816-20', 'Australia', '1975-04-03', 92);
INSERT INTO `Customer` VALUES (1085, 'w.higgins@randatmail.com', 'William', 'Higgins', '529-1061-12', 'Norway', '1973-03-28', 93);
INSERT INTO `Customer` VALUES (1086, 'o.hunt@randatmail.com', 'Olivia', 'Hunt', '552-6320-86', 'Vietnam', '1995-02-04', 94);

CREATE TABLE `Employee` (
  `EmployeeId` INT(11) NOT NULL AUTO_INCREMENT,
  `PhoneNumber` VARCHAR(20) NOT NULL,
  `FirstName` VARCHAR(255) NOT NULL,
  `LastName` VARCHAR(255) NOT NULL,
  `Gender` ENUM('Male', 'Female') NOT NULL,
  `DepartmentNumber` INT(11) NOT NULL,
  `Salary` DECIMAL(10, 2) NOT NULL,
  `Position` VARCHAR(255) NOT NULL,
  `Address` VARCHAR(70) NOT NULL,
  `Email` VARCHAR(99) NOT NULL,
  `BirthDate` DATE NOT NULL,
  `DepartmentId` INT(11) NOT NULL,
  PRIMARY KEY (`EmployeeId`),
  FOREIGN KEY (`DepartmentId`) REFERENCES `Department`(`DepartmentId`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
INSERT INTO `Employee` VALUES (7592, '03-8174-9123', 'April', 'Hunt', 'Female', 4024, 141604.00, 'Sr. Manger', '171 E 24th St', 'a.hunt@randatmail.com', '1990-09-03', 4024);
INSERT INTO `Employee` VALUES (7593, '07-9997-3366', 'Mary', 'Hawkins', 'Female', 4024, 99975.00, 'Technical Architect', '22222 Acoma St', 'm.hawkins@randatmail.com', '1992-11-05', 4024);
INSERT INTO `Employee` VALUES (7594, '08-5558-9019', 'Martin', 'Myers', 'Male', 4024, 83099.00, 'Reception', '534 Schoenborn St #51', 'm.myers@randatmail.com', '1998-12-28', 4024);
INSERT INTO `Employee` VALUES (7595, '02-6044-4682', 'Tiana', 'Jones', 'Female', 4024, 84913.00, 'Computer Systems Manager', '69206 Jackson Ave', 't.jones@randatmail.com', '1999-06-12', 4024);
INSERT INTO `Employee` VALUES (7596, '02-1455-6085', 'Connie', 'Thomas', 'Female', 4024, 95409.00, 'Sr. Analyst', '808 Glen Cove Ave', 'c.thomas@randatmail.com', '1997-11-08', 4024);
INSERT INTO `Employee` VALUES (7597, '08-7868-1355', 'Rosie', 'Cunningham', 'Female', 4024, 50994.00, 'Account Representative', '373 Lafayette St', 'r.cunningham@randatmail.com', '1999-08-05', 4024);
INSERT INTO `Employee` VALUES (7598, '08-6522-8931', 'Aldus', 'Thomas', 'Male', 4027, 119746.00, 'Manager', '87 Sylvan Ave', 'a.thomas@randatmail.com', '1996-10-02', 4027);
INSERT INTO `Employee` VALUES (7599, '02-5226-9402', 'Jasmine', 'Elliott', 'Female', 4024, 41336.00, 'Analyst', '60562 Ky Rt 321', 'j.elliott@randatmail.com', '1977-04-09', 4024);
INSERT INTO `Employee` VALUES (7600, '07-3184-9989', 'Dexter', 'Perry', 'Male', 4024, 113527.00, 'Manager', '70 S 18th Pl', 'd.perry@randatmail.com', '1999-12-04', 4024);
INSERT INTO `Employee` VALUES (7601, '08-6890-4661', 'Alfred', 'Williams', 'Male', 4028, 77203.00, 'Sr. Analyst', '8839 Ventura Blvd', 'a.williams@randatmail.com', '1970-01-21', 4028);
INSERT INTO `Employee` VALUES (7602, '07-8135-3271', 'Oliver', 'Bailey', 'Male', 4026, 157333.00, 'Sr. Manger', '3684 N Wacker Dr', 'o.bailey@randatmail.com', '1975-12-26', 4026);
INSERT INTO `Employee` VALUES (7603, '03-1174-6817', 'Caroline', 'Martin', 'Female', 4027, 109851.00, 'Controls Engineer', '68828 S 32nd St #6', 'c.martin@randatmail.com', '1977-05-14', 4027);
INSERT INTO `Employee` VALUES (7604, '07-7977-6039', 'Hailey', 'Barnes', 'Female', 4025, 105086.00, 'Manager', '43157 Cypress St', 'h.barnes@randatmail.com', '1990-07-14', 4025);
INSERT INTO `Employee` VALUES (7605, '08-8344-8929', 'Miller', 'Stewart', 'Male', 4024, 146742.00, 'Sr. Manger', '6 S Hanover Ave', 'm.stewart@randatmail.com', '2000-07-28', 4024);
INSERT INTO `Employee` VALUES (7606, '07-4941-9471', 'Catherine', 'Barrett', 'Female', 4024, 97078.00, 'Sr. Analyst', '27916 Tarrytown Rd', 'c.barrett@randatmail.com', '1994-07-13', 4024);
INSERT INTO `Employee` VALUES (7607, '02-3518-7078', 'Jordan', 'Johnson', 'Male', 4027, 249270.00, 'Vice President', '79620 Timber Dr', 'j.johnson@randatmail.com', '1987-12-01', 4027);
INSERT INTO `Employee` VALUES (7608, '07-9387-7293', 'Savana', 'Robinson', 'Female', 4024, 175837.00, 'Reception', '387 Airway Cir #62', 's.robinson@randatmail.com', '1976-09-07', 4024);
INSERT INTO `Employee` VALUES (7609, '02-5171-4345', 'Carlos', 'Armstrong', 'Male', 4024, 154828.00, 'Sr. Manger', '570 W Pine St', 'c.armstrong@randatmail.com', '1979-02-19', 4024);
INSERT INTO `Employee` VALUES (7610, '02-5311-7778', 'Reid', 'Spencer', 'Male', 4028, 86503.00, 'Reception', '823 Fishers Ln', 'r.spencer@randatmail.com', '1991-01-10', 4028);
INSERT INTO `Employee` VALUES (7611, '07-9354-2612', 'Leonardo', 'Phillips', 'Male', 4026, 66331.00, 'Reception', '4 Brookcrest Dr #7786', 'l.phillips@randatmail.com', '1977-01-14', 4026);
INSERT INTO `Employee` VALUES (7612, '02-1638-4380', 'Justin', 'Harris', 'Male', 4027, 146140.00, 'Sr. Manger', '72 Wyoming Ave', 'j.harris@randatmail.com', '1999-03-02', 4027);
INSERT INTO `Employee` VALUES (7613, '02-5322-6127', 'Lucia', 'Thompson', 'Female', 4025, 67703.00, 'Reception', '754 Sammis Ave', 'l.thompson@randatmail.com', '1993-05-27', 4025);
INSERT INTO `Employee` VALUES (7614, '07-6460-4488', 'Mary', 'Allen', 'Female', 4024, 89787.00, 'Reception', '660 N Green St', 'm.allen@randatmail.com', '1994-09-25', 4024);
INSERT INTO `Employee` VALUES (7615, '07-5338-6357', 'Charlie', 'Andrews', 'Male', 4024, 49998.00, 'Analyst', '970 Waterloo Rd', 'c.andrews@randatmail.com', '1989-06-20', 4024);
INSERT INTO `Employee` VALUES (7616, '03-6443-2786', 'Olivia', 'Scott', 'Female', 4027, 207172.00, 'Vice President', '4129 Abbott Dr', 'o.scott@randatmail.com', '1991-11-12', 4027);
INSERT INTO `Employee` VALUES (7617, '07-4785-3781', 'Clark', 'Brooks', 'Male', 4024, 52239.00, 'Reception', '1529 Prince Rodgers Ave', 'c.brooks@randatmail.com', '1985-03-13', 4024);
INSERT INTO `Employee` VALUES (7618, '03-6543-6688', 'Brianna', 'Myers', 'Female', 4024, 98581.00, 'Quality Engineer', '2 N Valley Mills Dr', 'b.myers@randatmail.com', '1998-03-23', 4024);
INSERT INTO `Employee` VALUES (7619, '07-3721-9123', 'Miley', 'Fowler', 'Female', 4028, 246231.00, 'Vice President', '50968 Kurtz St #45', 'm.fowler@randatmail.com', '1971-08-08', 4028);
INSERT INTO `Employee` VALUES (7620, '08-2748-1250', 'Jordan', 'Fowler', 'Male', 4026, 99354.00, 'Engineering Manager', '71585 S Ayon Ave #9', 'j.fowler@randatmail.com', '1994-08-27', 4026);
INSERT INTO `Employee` VALUES (7621, '03-7063-6734', 'Kirsten', 'Carroll', 'Female', 4027, 231141.00, 'Vice President', '8 Old County Rd #3', 'k.carroll@randatmail.com', '1985-12-14', 4027);
INSERT INTO `Employee` VALUES (7622, '02-8171-9051', 'Abigail', 'Murphy', 'Female', 4025, 54775.00, 'IT Coordinator', '13904 S 35th St', 'a.murphy@randatmail.com', '1986-11-06', 4025);
INSERT INTO `Employee` VALUES (7623, '07-1153-8567', 'Arthur', 'Elliott', 'Male', 4024, 55499.00, 'Analyst', '6149 Kapiolani Blvd #6', 'a.elliott@randatmail.com', '1981-03-15', 4024);
INSERT INTO `Employee` VALUES (7624, '08-7097-3947', 'Lyndon', 'Barrett', 'Male', 4024, 66521.00, 'Analyst II', '95431 34th Ave #62', 'l.barrett@randatmail.com', '1977-09-06', 4024);
INSERT INTO `Employee` VALUES (7625, '07-7991-8880', 'Amber', 'Brooks', 'Female', 4027, 59100.00, 'Account Representative', '25 Swift Ave', 'a.brooks@randatmail.com', '1996-01-09', 4027);
INSERT INTO `Employee` VALUES (7626, '03-8998-5485', 'Tess', 'Turner', 'Female', 4024, 49011.00, 'Analyst', '14304 Old Alexandria Ferry Rd', 't.turner@randatmail.com', '1978-11-20', 4024);
INSERT INTO `Employee` VALUES (7627, '02-5046-1307', 'Amanda', 'Owens', 'Female', 4024, 99575.00, 'Enterprise Architect', '1585 Salem Church Rd #59', 'a.owens@randatmail.com', '1977-01-09', 4024);
INSERT INTO `Employee` VALUES (7628, '07-6476-1399', 'Ned', 'Harris', 'Male', 4028, 99989.00, 'Controls Engineer', '75962 E Drinker St', 'n.harris@randatmail.com', '1975-04-03', 4028);
INSERT INTO `Employee` VALUES (7629, '07-4463-7223', 'Darcy', 'Walker', 'Female', 4026, 256420.00, 'Vice President', '8978 W Henrietta Rd', 'd.walker@randatmail.com', '1990-04-12', 4026);
INSERT INTO `Employee` VALUES (7630, '08-3071-2258', 'Andrew', 'Carter', 'Male', 4027, 78940.00, 'Technical Architect', '86 Worth St #272', 'a.carter@randatmail.com', '1999-03-24', 4027);
INSERT INTO `Employee` VALUES (7631, '07-1576-1412', 'Nicholas', 'Ellis', 'Male', 4025, 82872.00, 'Enterprise Architect', '15 Campville Rd #191', 'n.ellis@randatmail.com', '1982-05-29', 4025);

CREATE TABLE `Bill` (
  `BillId` INT(11) NOT NULL AUTO_INCREMENT,
  `Amount` DECIMAL(10, 2) NOT NULL,
  `Date` DATE NOT NULL,
  `Name` VARCHAR(255) NOT NULL,
  `ReservationID` INT(11) NOT NULL,
  `EmployeeID` INT(11) NOT NULL,
  `CustomerID` INT(11) NOT NULL,
  PRIMARY KEY (`BillId`),
  FOREIGN KEY (`EmployeeID`) REFERENCES `Employee`(`EmployeeId`),
  FOREIGN KEY (`ReservationID`) REFERENCES `Reservation`(`ReservationID`),
  FOREIGN KEY (`CustomerID`) REFERENCES `Customer`(`CustomerID`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
INSERT INTO `Bill` VALUES (127, 804.00, '2023-12-19', 'Arianna', 3, 7646, 1015);
INSERT INTO `Bill` VALUES (128, 566.00, '2023-12-16', 'Rafael', 4, 7646, 1016);
INSERT INTO `Bill` VALUES (129, 628.00, '2023-12-29', 'George', 5, 7646, 1017);
INSERT INTO `Bill` VALUES (130, 987.00, '2023-12-05', 'Agata', 6, 7646, 1018);
INSERT INTO `Bill` VALUES (131, 1005.00, '2023-12-02', 'Daryl', 7, 7646, 1019);
INSERT INTO `Bill` VALUES (132, 1009.00, '2023-12-12', 'Alan', 8, 7646, 1020);
INSERT INTO `Bill` VALUES (133, 1070.00, '2023-12-31', 'Tiana', 9, 7646, 1021);
INSERT INTO `Bill` VALUES (136, 670.00, '2023-12-16', 'Sabrina', 2, 7646, 1024);
INSERT INTO `Bill` VALUES (137, 1500.00, '2023-12-05', 'Miley', 3, 7646, 1025);
INSERT INTO `Bill` VALUES (138, 1000.00, '2023-12-02', 'Alan', 4, 7646, 1026);
INSERT INTO `Bill` VALUES (139, 804.00, '2023-12-22', 'Rubie', 5, 7646, 1027);
INSERT INTO `Bill` VALUES (140, 566.00, '2023-12-29', 'Fenton', 6, 7646, 1028);
INSERT INTO `Bill` VALUES (141, 628.00, '2023-12-09', 'Rafael', 7, 7646, 1029);
INSERT INTO `Bill` VALUES (142, 987.00, '2023-12-31', 'Tyler', 8, 7646, 1030);
INSERT INTO `Bill` VALUES (143, 1005.00, '2023-12-12', 'Madaline', 9, 7646, 1031);
INSERT INTO `Bill` VALUES (144, 1009.00, '2023-12-01', 'Myra', 10, 7646, 1032);
INSERT INTO `Bill` VALUES (145, 1070.00, '2023-12-19', 'Derek', 11, 7646, 1033);
INSERT INTO `Bill` VALUES (146, 670.00, '2023-12-22', 'Max', 2, 7646, 1034);
INSERT INTO `Bill` VALUES (147, 1500.00, '2023-12-09', 'Roman', 3, 7646, 1035);
INSERT INTO `Bill` VALUES (148, 1000.00, '2023-12-16', 'Sam', 4, 7646, 1036);
INSERT INTO `Bill` VALUES (149, 804.00, '2023-12-29', 'Eddy', 5, 7646, 1037);
INSERT INTO `Bill` VALUES (150, 566.00, '2023-12-05', 'Tiana', 6, 7646, 1038);
INSERT INTO `Bill` VALUES (151, 628.00, '2023-12-02', 'Maximilian', 7, 7646, 1039);
INSERT INTO `Bill` VALUES (152, 987.00, '2023-12-12', 'Rubie', 8, 7646, 1040);
INSERT INTO `Bill` VALUES (153, 1005.00, '2023-12-31', 'Sam', 9, 7646, 1041);
INSERT INTO `Bill` VALUES (154, 1009.00, '2023-12-19', 'Brad', 10, 7646, 1042);
INSERT INTO `Bill` VALUES (155, 1070.00, '2023-12-01', 'Maria', 11, 7646, 1043);
INSERT INTO `Bill` VALUES (156, 670.00, '2023-12-16', 'Bruce', 2, 7646, 1044);
INSERT INTO `Bill` VALUES (157, 1500.00, '2023-12-05', 'Richard', 3, 7646, 1045);
INSERT INTO `Bill` VALUES (158, 1000.00, '2023-12-02', 'Ryan', 4, 7646, 1046);
INSERT INTO `Bill` VALUES (159, 804.00, '2023-12-22', 'Patrick', 5, 7646, 1047);
INSERT INTO `Bill` VALUES (160, 566.00, '2023-12-29', 'Arnold', 6, 7646, 1048);
INSERT INTO `Bill` VALUES (161, 628.00, '2023-12-09', 'Andrew', 7, 7646, 1049);
INSERT INTO `Bill` VALUES (162, 987.00, '2023-12-31', 'Abraham', 8, 7646, 1050);
INSERT INTO `Bill` VALUES (163, 1005.00, '2023-12-12', 'Leonardo', 9, 7646, 1051);
INSERT INTO `Bill` VALUES (164, 1009.00, '2023-12-01', 'Alen', 10, 7646, 1052);
INSERT INTO `Bill` VALUES (165, 1070.00, '2023-12-19', 'Ellia', 11, 7646, 1053);
INSERT INTO `Bill` VALUES (166, 670.00, '2023-12-22', 'David', 2, 7646, 1054);
INSERT INTO `Bill` VALUES (167, 1500.00, '2023-12-09', 'Ryan', 3, 7646, 1055);
INSERT INTO `Bill` VALUES (168, 1000.00, '2023-12-16', 'Alisa', 4, 7646, 1056);
INSERT INTO `Bill` VALUES (169, 804.00, '2023-12-29', 'Hailey', 5, 7646, 1057);
INSERT INTO `Bill` VALUES (170, 566.00, '2023-12-05', 'Lily', 6, 7646, 1058);
INSERT INTO `Bill` VALUES (171, 628.00, '2023-12-02', 'Maddie', 7, 7646, 1059);
INSERT INTO `Bill` VALUES (172, 987.00, '2023-12-12', 'Martin', 8, 7646, 1060);
INSERT INTO `Bill` VALUES (173, 1005.00, '2023-12-31', 'Maria', 9, 7646, 1061);
INSERT INTO `Bill` VALUES (174, 1009.00, '2023-12-19', 'Dominik', 10, 7646, 1062);
INSERT INTO `Bill` VALUES (175, 1070.00, '2023-12-01', 'Martin', 11, 7613, 1063);
INSERT INTO `Bill` VALUES (176, 670.00, '2023-12-16', 'Frederick', 2, 7613, 1064);
INSERT INTO `Bill` VALUES (177, 1500.00, '2023-12-05', 'Emma', 3, 7613, 1065);
INSERT INTO `Bill` VALUES (178, 1000.00, '2023-12-02', 'Sofia', 4, 7613, 1066);
INSERT INTO `Bill` VALUES (179, 804.00, '2023-12-22', 'Haris', 5, 7613, 1067);
INSERT INTO `Bill` VALUES (180, 566.00, '2023-12-29', 'Tyler', 6, 7613, 1068);
INSERT INTO `Bill` VALUES (181, 628.00, '2023-12-09', 'Arthur', 7, 7613, 1069);
INSERT INTO `Bill` VALUES (182, 987.00, '2023-12-31', 'Julian', 8, 7613, 1070);
INSERT INTO `Bill` VALUES (183, 1005.00, '2023-12-12', 'Preston', 9, 7613, 1071);

CREATE TABLE `FlightPrice` (
    `FlightId` INT NOT NULL,
    `Date` DATE NOT NULL,
    `FlightPriceList` DECIMAL(10, 2) NOT NULL,
    `RoomAvailability` VARCHAR(40) NOT NULL,
    `Trip` VARCHAR(32) NOT NULL,
    `ReservationId` INT NOT NULL,
    PRIMARY KEY (`FlightId`),
    FOREIGN KEY (`ReservationId`) REFERENCES `Reservation`(`ReservationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
INSERT INTO `FlightPrice` VALUES (2, '2023-12-12', 804.00, '100', 2, 'Norway', 2);
INSERT INTO `FlightPrice` VALUES (3, '2023-12-19', 566.00, '50', 3, 'Vietnam', 3);
INSERT INTO `FlightPrice` VALUES (4, '2023-12-01', 628.00, '150', 4, 'Hawaii',4);
INSERT INTO `FlightPrice` VALUES (5, '2023-12-09', 987.00, '75', 5, 'Caribbean', 5);
INSERT INTO `FlightPrice` VALUES (6, '2023-12-05', 1005.00, '97', 6, 'Bahamas', 6);
INSERT INTO `FlightPrice` VALUES (7, '2023-12-22', 1009.00, '143', 7, 'Bermuda', 7);
INSERT INTO `FlightPrice` VALUES (8, '2023-12-31', 1070.00, '178', 8, 'Mexico', 8);
INSERT INTO `FlightPrice` VALUES (9, '2023-12-29', 670.00, '65', 9, 'Canada', 9);
INSERT INTO `FlightPrice` VALUES (10, '2023-12-02', 1500.00, '150', 10, 'Alaska', 10);
INSERT INTO `FlightPrice` VALUES (11, '2023-12-16', 1000.00, '80', 11, 'Australia', 11);

CREATE TABLE Activities (
    ActivitiesId INT NOT NULL,
    ActivitiesType VARCHAR(255) NOT NULL, 
    CruiseShipId INT NOT NULL,
    PRIMARY KEY (ActivitiesId),
    FOREIGN KEY (CruiseShipId) REFERENCES CruiseShip(CruiseShipId)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
INSERT INTO Activities VALUES (1, 'Gym', 1055);
INSERT INTO Activities VALUES (3, 'Cinema', 1055);
INSERT INTO Activities VALUES (5, 'Night club', 1055);
INSERT INTO Activities VALUES (6, 'Casino', 1055);
INSERT INTO Activities VALUES (7, 'Aquapark', 1055);
INSERT INTO Activities VALUES (8, 'Live shows', 1055);
INSERT INTO Activities VALUES (13, 'Calisthenics classes', 1055);
INSERT INTO Activities VALUES (14, 'Music concerts', 1055);
INSERT INTO Activities VALUES (15, 'Swimming Pool', 1055);
INSERT INTO Activities VALUES (18, 'Shopping Mall', 1055);
INSERT INTO Activities VALUES (19, 'Rock climbing', 1055);
INSERT INTO Activities VALUES (20, 'Yoga classes', 1055);
INSERT INTO Activities VALUES (21, 'Bowling', 1055);
INSERT INTO Activities VALUES (22, 'Ice skating', 1055);
INSERT INTO Activities VALUES (23, 'Sports court', 1055);
INSERT INTO Activities VALUES (25, 'Gym', 1072);
INSERT INTO Activities VALUES (26, 'Cinema', 1072);
INSERT INTO Activities VALUES (27, 'Night club', 1072);
INSERT INTO Activities VALUES (28, 'Casino', 1072);
INSERT INTO Activities VALUES (29, 'Aquapark', 1072);
INSERT INTO Activities VALUES (30, 'Live shows', 1072);
INSERT INTO Activities VALUES (31, 'Calisthenics classes', 1072);
INSERT INTO Activities VALUES (32, 'Music concerts', 1072);
INSERT INTO Activities VALUES (33, 'Swimming Pool', 1072);
INSERT INTO Activities VALUES (34, 'Shopping Mall', 1072);
INSERT INTO Activities VALUES (35, 'Rock climbing', 1072);
INSERT INTO Activities VALUES (36, 'Yoga classes', 1072);
INSERT INTO Activities VALUES (37, 'Bowling', 1072);
INSERT INTO Activities VALUES (38, 'Ice skating', 1072);
INSERT INTO Activities VALUES (39, 'Sports court', 1072);

CREATE TABLE OWN (
    DepartmentId INT,
    CruiseShipId INT, 
    FOREIGN KEY (CruiseShipId) REFERENCES CruiseShip(CruiseShipId),
    FOREIGN KEY (DepartmentId) REFERENCES department(DepartmentId)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
INSERT INTO OWN VALUES (4024, 1055);
INSERT INTO OWN VALUES (4024, 1072);
INSERT INTO OWN VALUES (4025, 1055);
INSERT INTO OWN VALUES (4025, 1072);
INSERT INTO OWN VALUES (4026, 1055);
INSERT INTO OWN VALUES (4026, 1072);
INSERT INTO OWN VALUES (4027, 1055);
INSERT INTO OWN VALUES (4027, 1072);
INSERT INTO OWN VALUES (4028, 1055);
INSERT INTO OWN VALUES (4028, 1072);
INSERT INTO OWN VALUES (4029, 1055);
INSERT INTO OWN VALUES (4029, 1072);




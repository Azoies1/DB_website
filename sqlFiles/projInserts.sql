insert into Facility(name, address, city, province, postalCode, country, phoneNumber, pharmID) values('Zoolab','1 Kensington Drive','Oni','Quebec','J1J3K3','Canada','7935209774','1');
insert into Facility (name, address, city, province, postalCode, country, phoneNumber, pharmID) values ('Fixflex', '2 West Circle', 'Arlington', 'Virginia', 'J7I8W7', 'United States', '7031521485', 4);
insert into Facility (name, address, city, province, postalCode, country, phoneNumber, pharmID) values ('Namfix', '1 Hintze Pass', 'Phoenix', 'Arizona', 'Y0N5W6', 'United States', '6021864039', 6);
insert into Facility (name, address, city, province, postalCode, country, phoneNumber, pharmID) values ('Ventosanzap', '99063 Dennis Trail', 'Boulder', 'Colorado', 'K7U1V1', 'United States', '3039660292', 2);
insert into Facility (name, address, city, province, postalCode, country, phoneNumber, pharmID) values ('Y-Solowarm', '41105 Homewood Terrace', 'Yakima', 'Washington', 'I4W1P3', 'United States', '5096674769', 6);
insert into Facility (name, address, city, province, postalCode, country, phoneNumber, pharmID) values ('Alphazap', '42462 Linden Pass', 'Fort Wayne', 'Indiana', 'P7U1H5', 'United States', '2603796452', 9);
insert into Facility (name, address, city, province, postalCode, country, phoneNumber, pharmID) values ('Voltsillam', '17 Garrison Court', 'Toledo', 'Ohio', 'Y7C8C0', 'United States', '4197116335', 4);
insert into Facility (name, address, city, province, postalCode, country, phoneNumber, pharmID) values ('Tres-Zap', '90067 Columbus Hill', 'Miami', 'Florida', 'E8K6P2', 'United States', '3056172062', 3);
insert into Facility (name, address, city, province, postalCode, country, phoneNumber, pharmID) values ('Daltfresh', '63 Hansons Street', 'Birmingham', 'Alabama', 'Z6T1L7', 'United States', '2051187654', 8);
insert into Facility (name, address, city, province, postalCode, country, phoneNumber, pharmID) values ('Flowdesk', '3631 Fisk Plaza', 'Los Angeles', 'California', 'Z1D4F8', 'United States', '3235620228', 9);
insert into Facility (name, address, city, province, postalCode, country, phoneNumber, pharmID) values ('Fixflex', '45381 Lukken Parkway', 'El Paso', 'Texas', 'U4G6C8', 'United States', '9155580373', 10);
insert into Facility (name, address, city, province, postalCode, country, phoneNumber, pharmID) values ('Cookley', '47 Utah Road', 'Portland', 'Oregon', 'P1W3B5', 'United States', '5038991141', 2);
insert into Facility (name, address, city, province, postalCode, country, phoneNumber, pharmID) values ('Home Ing', '864 Waywood Parkway', 'El Paso', 'Texas', 'C8T9Q1', 'United States', '9151507570', 1);
insert into Facility (name, address, city, province, postalCode, country, phoneNumber, pharmID) values ('Vagram', '678 4th Hill', 'Dayton', 'Ohio', 'K7F2I4', 'United States', '9372140206', 10);
insert into Facility (name, address, city, province, postalCode, country, phoneNumber, pharmID) values ('Gembucket', '5 Trailsway Terrace', 'Huntington', 'West Virginia', 'V4F8Z1', 'United States', '3045956730', 8);
insert into Facility (name, address, city, province, postalCode, country, phoneNumber, pharmID) values ('Kanlam', '50543 Prentice Center', 'Greeley', 'Colorado', 'G1U8Z0', 'United States', '9705863069', 4);
insert into Facility (name, address, city, province, postalCode, country, phoneNumber, pharmID) values ('Bamity', '133 Beilfuss Terrace', 'Saint Petersburg', 'Florida', 'T5Y7S3', 'United States', '7277345428', 9);
insert into Facility (name, address, city, province, postalCode, country, phoneNumber, pharmID) values ('Treeflex', '2522 Charing Cross Point', 'Green Bay', 'Wisconsin', 'G3M1S5', 'United States', '9207660095', 7);
insert into Facility (name, address, city, province, postalCode, country, phoneNumber, pharmID) values ('Stronghold', '432 Farragut Circle', 'Des Moines', 'Iowa', 'U5F1S2', 'United States', '5151348351', 8);
insert into Facility (name, address, city, province, postalCode, country, phoneNumber, pharmID) values ('Quo Lux', '75 Melrose Plaza', 'Monticello', 'Minnesota', 'X1U4B6', 'United States', '7634892916', 10);
insert into Facility (name, address, city, province, postalCode, country, phoneNumber, pharmID) values ('Alpha', '43 3rd Lane', 'Wilmington', 'Delaware', 'V3L8W6', 'United States', '3022200429', 1);


--Warehouse
insert into Warehouse (capacity, facilityID) values (52, 20);
insert into Warehouse (capacity, facilityID) values (212, 4);
insert into Warehouse (capacity, facilityID) values (162, 18);
insert into Warehouse (capacity, facilityID) values (232, 11);
insert into Warehouse (capacity, facilityID) values (146, 11);
insert into Warehouse (capacity, facilityID) values (95, 18);
insert into Warehouse (capacity, facilityID) values (122, 15);
insert into Warehouse (capacity, facilityID) values (74, 1);
insert into Warehouse (capacity, facilityID) values (78, 12);
insert into Warehouse (capacity, facilityID) values (58, 14);


--ResearchCenter
insert into ResearchCenter (facilityID) values (3);
insert into ResearchCenter (facilityID) values (20);
insert into ResearchCenter (facilityID) values (20);
insert into ResearchCenter (facilityID) values (7);
insert into ResearchCenter (facilityID) values (2);
insert into ResearchCenter (facilityID) values (11);
insert into ResearchCenter (facilityID) values (1);
insert into ResearchCenter (facilityID) values (20);
insert into ResearchCenter (facilityID) values (18);
insert into ResearchCenter (facilityID) values (17);

--ManufacturingFacility
insert into ManufacturingFacility (facilityID, maxProductionCapacity) values (20, 59);
insert into ManufacturingFacility (facilityID, maxProductionCapacity) values (10, 93);
insert into ManufacturingFacility (facilityID, maxProductionCapacity) values (3, 125);
insert into ManufacturingFacility (facilityID, maxProductionCapacity) values (9, 36);
insert into ManufacturingFacility (facilityID, maxProductionCapacity) values (2, 70);
insert into ManufacturingFacility (facilityID, maxProductionCapacity) values (9, 33);
insert into ManufacturingFacility (facilityID, maxProductionCapacity) values (12, 185);
insert into ManufacturingFacility (facilityID, maxProductionCapacity) values (17, 14);
insert into ManufacturingFacility (facilityID, maxProductionCapacity) values (17, 34);
insert into ManufacturingFacility (facilityID, maxProductionCapacity) values (13, 206);

--Employee
insert into Employee (firstname, lastname, dateofbirth, ssn, phonenumber, address, city, province, postalcode, country, citizenship, email, position, salary, startdate, lastdate, facilityid) values ('Teodor', 'Offiler', '1983-10-23', 882186568, '4983832095', '2605 Swallow Crossing', 'Néa Ionía', 'Quebec', 'F0B3F9', 'Greece', 'Russia', 'toffiler0@wsj.com', 'Manufacturing', 1530035224, '2011/06/06', '2020-04-24', 9);
insert into Employee (firstname, lastname, dateofbirth, ssn, phonenumber, address, city, province, postalcode, country, citizenship, email, position, salary, startdate, lastdate, facilityid) values ('Rafaellle', 'Matthisson', '1972-01-20', 155819154, '5309535564', '006 Parkside Alley', 'Obertyn', 'Quebec', 'U7U6T7', 'Ukraine', 'Panama', 'rmatthisson1@shinystat.com', 'Student', 1967470607, '2021/08/19', '2015-10-07', 15);
insert into Employee (firstname, lastname, dateofbirth, ssn, phonenumber, address, city, province, postalcode, country, citizenship, email, position, salary, startdate, lastdate, facilityid) values ('Berry', 'Jarville', '1957-03-25', 885289626, '2677818785', '8527 Forster Alley', 'Wichit', 'Quebec', 'U6R6H3', 'Thailand', 'Brazil', 'bjarville2@odnoklassniki.ru', 'Warehouse', 716249746, '2020/10/04', '2018-09-29', 6);
insert into Employee (firstname, lastname, dateofbirth, ssn, phonenumber, address, city, province, postalcode, country, citizenship, email, position, salary, startdate, lastdate, facilityid) values ('Harlin', 'Sunter', '1991-08-29', 473401093, '4802009551', '24 Hallows Junction', 'Timiryazevo', 'Quebec', 'R5B8V5', 'Kazakhstan', 'China', 'hsunter3@g.co', 'Warehouse', 417174439, '2019/09/05', '2019-10-31', 17);
insert into Employee (firstname, lastname, dateofbirth, ssn, phonenumber, address, city, province, postalcode, country, citizenship, email, position, salary, startdate, lastdate, facilityid) values ('Ingar', 'Evetts', '1968-02-01', 105251699, '1105217838', '01 Di Loreto Lane', 'Wodzisław Śląski', 'Quebec', 'Y6A1R8', 'Poland', 'Philippines', 'ievetts4@walmart.com', 'Cleaner', 1298873793, '2005/07/05', '2020-04-07', 17);
insert into Employee (firstname, lastname, dateofbirth, ssn, phonenumber, address, city, province, postalcode, country, citizenship, email, position, salary, startdate, lastdate, facilityid) values ('Jesselyn', 'Rego', '1967-02-06', 635175404, '4003069287', '4621 Chive Parkway', 'Budta', 'Quebec', 'U4D0E9', 'Philippines', 'United States', 'jrego5@facebook.com', 'Researcher', 1435833068, '2000/03/19', '2017-10-10', 15);
insert into Employee (firstname, lastname, dateofbirth, ssn, phonenumber, address, city, province, postalcode, country, citizenship, email, position, salary, startdate, lastdate, facilityid) values ('Karena', 'Moverley', '1998-07-08', 452215748, '9785587034', '8883 Lyons Alley', 'Évreux', 'Haute-Normandie', 'L3C5V1', 'France', 'Ghana', 'kmoverley6@rediff.com', 'Student', 777563536, '2003/08/25', '2019-01-11', 15);
insert into Employee (firstname, lastname, dateofbirth, ssn, phonenumber, address, city, province, postalcode, country, citizenship, email, position, salary, startdate, lastdate, facilityid) values ('Regina', 'Rouchy', '1983-07-22', 819605133, '7175738456', '0458 Knutson Trail', 'Puamata', 'Quebec', 'O2C5F8', 'Indonesia', 'Poland', 'rrouchy7@canalblog.com', 'Researcher', 1641803390, '2002/05/22', '2017-06-24', 8);
insert into Employee (firstname, lastname, dateofbirth, ssn, phonenumber, address, city, province, postalcode, country, citizenship, email, position, salary, startdate, lastdate, facilityid) values ('Chiarra', 'Howsden', '1971-10-07', 424333760, '1999950750', '5 Express Hill', 'Tiraspol', 'Quebec', 'L0E4F0', 'Moldova', 'Colombia', 'chowsden8@vkontakte.ru', 'Manufacturing', 1419489234, '2009/07/10', '2020-09-16', 3);
insert into Employee (firstname, lastname, dateofbirth, ssn, phonenumber, address, city, province, postalcode, country, citizenship, email, position, salary, startdate, lastdate, facilityid) values ('Jaymee', 'MacLleese', '1998-10-08', 104215662, '6823058409', '2338 Maywood Pass', 'Sibiti', 'Quebec', 'B3P8T3', 'Republic of the Congo', 'Brazil', 'jmaclleese9@dedecms.com', 'Cleaner', 529649466, '2016/09/28', '2019-02-06', 14);
insert into Employee (firstname, lastname, dateofbirth, ssn, phonenumber, address, city, province, postalcode, country, citizenship, email, position, salary, startdate, lastdate, facilityid) values ('Nickola', 'Bulled', '1969-05-30', 637247465, '4554867853', '0 Shasta Court', 'Lahān', 'Quebec', 'G5C8P4', 'Nepal', 'Greece', 'nbulleda@pen.io', 'Researcher', 149527397, '2018/09/27', '2021-09-18', 16);
insert into Employee (firstname, lastname, dateofbirth, ssn, phonenumber, address, city, province, postalcode, country, citizenship, email, position, salary, startdate, lastdate, facilityid) values ('Josepha', 'Laflin', '1972-02-20', 121295518, '4309056177', '56 Paget Road', 'Nancheng', 'Quebec', 'Q2I6Y1', 'China', 'France', 'jlaflinb@soup.io', 'Researcher', 1659445642, '2014/09/16', '2015-07-05', 9);
insert into Employee (firstname, lastname, dateofbirth, ssn, phonenumber, address, city, province, postalcode, country, citizenship, email, position, salary, startdate, lastdate, facilityid) values ('Chadwick', 'Cluet', '1958-08-23', 947474202, '8605934600', '64444 Cordelia Terrace', 'Debrecen', 'Hajdú-Bihar', 'T6K2O6', 'Hungary', 'Colombia', 'ccluetc@seattletimes.com', 'Cleaner', 502239355, '2004/03/09', '2016-08-16', 18);
insert into Employee (firstname, lastname, dateofbirth, ssn, phonenumber, address, city, province, postalcode, country, citizenship, email, position, salary, startdate, lastdate, facilityid) values ('Cyrillus', 'Baudinelli', '1986-06-04', 794919422, '9807096457', '97690 Ronald Regan Trail', 'Gandi', 'Quebec', 'H1Y6Q6', 'Nigeria', 'France', 'cbaudinellid@europa.eu', 'Warehouse', 1208660218, '2021/06/22', '2018-12-15', 16);
insert into Employee (firstname, lastname, dateofbirth, ssn, phonenumber, address, city, province, postalcode, country, citizenship, email, position, salary, startdate, lastdate, facilityid) values ('Arty', 'Morican', '1962-11-19', 5773803, '3216222979', '0 Summit Way', 'Oujda', 'Quebec', 'B7M1R2', 'Morocco', 'Thailand', 'amoricane@domainmarket.com', 'Manufacturing', 1916828665, '2009/01/19', '2016-05-01', 14);
insert into Employee (firstname, lastname, dateofbirth, ssn, phonenumber, address, city, province, postalcode, country, citizenship, email, position, salary, startdate, lastdate, facilityid) values ('Dyana', 'Bresnen', '1980-03-07', 50733745, '5959329784', '517 Hanson Pass', 'Paris 17', 'Île-de-France', 'U8T2F6', 'France', 'Honduras', 'dbresnenf@craigslist.org', 'Researcher', 870490893, '2003/11/24', '2017-10-08', 17);
insert into Employee (firstname, lastname, dateofbirth, ssn, phonenumber, address, city, province, postalcode, country, citizenship, email, position, salary, startdate, lastdate, facilityid) values ('Karry', 'Twiddle', '1991-04-02', 754454837, '4611133425', '28 Pine View Lane', 'Cogon', 'Quebec', 'O2Y3F3', 'Philippines', 'China', 'ktwiddleg@reverbnation.com', 'Student', 68486712, '2001/08/25', '2020-06-07', 19);
insert into Employee (firstname, lastname, dateofbirth, ssn, phonenumber, address, city, province, postalcode, country, citizenship, email, position, salary, startdate, lastdate, facilityid) values ('Samson', 'Vergine', '1982-02-03', 358615522, '3974157639', '9920 Spohn Circle', 'Örebro', 'Örebro', 'Q4L3Y7', 'Sweden', 'Indonesia', 'svergineh@slashdot.org', 'Manufacturing', 1119351294, '2000/12/03', '2017-04-21', 2);
insert into Employee (firstname, lastname, dateofbirth, ssn, phonenumber, address, city, province, postalcode, country, citizenship, email, position, salary, startdate, lastdate, facilityid) values ('Frank', 'Wendover', '1952-12-31', 147912343, '5355597626', '5 Village Green Hill', 'Pruszcz Gdański', 'Quebec', 'W1X2A3', 'Poland', 'Ecuador', 'fwendoveri@marketwatch.com', 'Student', 2002915662, '2001/12/20', '2016-12-11', 9);
insert into Employee (firstname, lastname, dateofbirth, ssn, phonenumber, address, city, province, postalcode, country, citizenship, email, position, salary, startdate, lastdate, facilityid) values ('Fonzie', 'Gelsthorpe', '1980-08-27', 532019742, '6746297715', '6 East Road', 'Matangpayang', 'Quebec', 'V5N0O8', 'Indonesia', 'China', 'fgelsthorpej@newsvine.com', 'Warehouse', 1301948450, '2020/03/16', '2017-07-22', 11);
insert into Employee (firstname, lastname, dateofbirth, ssn, phonenumber, address, city, province, postalcode, country, citizenship, email, position, salary, startdate, lastdate, facilityid) values ('Anabel', 'Maryott', '1959-07-01', 608091812, '7781690184', '0274 Eastlawn Pass', 'Pomacanchi', 'Quebec', 'W4K8A9', 'Peru', 'Thailand', 'amaryottk@friendfeed.com', 'Manufacturing', 165870785, '2012/10/05', '2019-10-14', 20);
insert into Employee (firstname, lastname, dateofbirth, ssn, phonenumber, address, city, province, postalcode, country, citizenship, email, position, salary, startdate, lastdate, facilityid) values ('Friederike', 'Baldrick', '1968-07-01', 934440092, '7692981920', '49109 Golf View Terrace', 'Luobuqiongzi', 'Quebec', 'Y0Y1J6', 'China', 'Poland', 'fbaldrickl@google.ru', 'Researcher', 577088989, '2013/09/21', '2016-06-14', 19);
insert into Employee (firstname, lastname, dateofbirth, ssn, phonenumber, address, city, province, postalcode, country, citizenship, email, position, salary, startdate, lastdate, facilityid) values ('Jermain', 'Cordova', '1968-08-16', 652062847, '9911809991', '4784 Hayes Center', 'Sukošan', 'Quebec', 'E8R8K1', 'Croatia', 'Sierra Leone', 'jcordovam@scribd.com', 'Researcher', 1506739528, '2017/11/13', '2017-09-28', 10);
insert into Employee (firstname, lastname, dateofbirth, ssn, phonenumber, address, city, province, postalcode, country, citizenship, email, position, salary, startdate, lastdate, facilityid) values ('Ailbert', 'Cridlon', '1975-03-02', 644467954, '9879592926', '0 Pierstorff Park', 'Henglin', 'Quebec', 'G4J2S2', 'China', 'China', 'acridlonn@wiley.com', 'Manufacturing', 664339519, '2005/05/23', '2020-10-26', 5);
insert into Employee (firstname, lastname, dateofbirth, ssn, phonenumber, address, city, province, postalcode, country, citizenship, email, position, salary, startdate, lastdate, facilityid) values ('Bayard', 'Searles', '1993-03-03', 510997761, '5105069992', '24987 Vermont Terrace', 'Gyamco', 'Quebec', 'F6C3S0', 'China', 'Norway', 'bsearleso@addthis.com', 'Manufacturing', 776016925, '2003/05/26', '2017-09-26', 19);
insert into Employee (firstname, lastname, dateofbirth, ssn, phonenumber, address, city, province, postalcode, country, citizenship, email, position, salary, startdate, lastdate, facilityid) values ('Lothaire', 'Chasle', '1986-01-01', 967170940, '1422025850', '10895 Chinook Point', 'Belén', 'Quebec', 'R9L4B2', 'Uruguay', 'Madagascar', 'lchaslep@amazon.co.jp', 'Researcher', 586138331, '2008/10/14', '2015-11-26', 7);
insert into Employee (firstname, lastname, dateofbirth, ssn, phonenumber, address, city, province, postalcode, country, citizenship, email, position, salary, startdate, lastdate, facilityid) values ('Alano', 'Woolf', '1972-01-08', 835454383, '2251530560', '611 Mallard Trail', 'Concepción', 'Quebec', 'O1E9Y0', 'Peru', 'Brazil', 'awoolfq@google.pl', 'Manufacturing', 862964816, '2002/03/12', '2021-02-06', 10);
insert into Employee (firstname, lastname, dateofbirth, ssn, phonenumber, address, city, province, postalcode, country, citizenship, email, position, salary, startdate, lastdate, facilityid) values ('Gwenni', 'Meagh', '1970-09-25', 584991520, '4972622192', '0120 Glendale Road', 'Nong Bua', 'Quebec', 'L7P7B6', 'Thailand', 'Russia', 'gmeaghr@mtv.com', 'Cleaner', 652753652, '2009/11/10', '2018-04-16', 14);
insert into Employee (firstname, lastname, dateofbirth, ssn, phonenumber, address, city, province, postalcode, country, citizenship, email, position, salary, startdate, lastdate, facilityid) values ('Tomasine', 'James', '1965-07-27', 151654303, '6801756728', '47498 Maple Wood Circle', 'Seixezelo', 'Porto', 'Y1G4E8', 'Portugal', 'Russia', 'tjamess@facebook.com', 'Manufacturing', 1057063189, '2010/07/26', '2017-07-11', 9);
insert into Employee (firstname, lastname, dateofbirth, ssn, phonenumber, address, city, province, postalcode, country, citizenship, email, position, salary, startdate, lastdate, facilityid) values ('Xymenes', 'Yankin', '1967-01-04', 622606836, '7706597760', '1 Mockingbird Road', 'Amurzet', 'Quebec', 'E9I5E8', 'Russia', 'Egypt', 'xyankint@jiathis.com', 'Researcher', 248591889, '2006/12/02', '2020-11-05', 5);
insert into Employee (firstname, lastname, dateofbirth, ssn, phonenumber, address, city, province, postalcode, country, citizenship, email, position, salary, startdate, lastdate, facilityid) values ('Gregoor', 'McElmurray', '1994-07-09', 949335681, '1825375421', '23 Evergreen Way', 'Xianglan', 'Quebec', 'T5Y4H6', 'China', 'Pakistan', 'gmcelmurrayu@army.mil', 'Manufacturing', 1439395346, '2009/12/25', '2017-11-21', 18);
insert into Employee (firstname, lastname, dateofbirth, ssn, phonenumber, address, city, province, postalcode, country, citizenship, email, position, salary, startdate, lastdate, facilityid) values ('Caleb', 'Fratczak', '1975-11-24', 357031714, '9564208260', '495 Meadow Valley Plaza', 'Maintang', 'Quebec', 'D7H1C9', 'China', 'Indonesia', 'cfratczakv@bandcamp.com', 'Researcher', 569636790, '2014/05/13', '2015-09-25', 19);
insert into Employee (firstname, lastname, dateofbirth, ssn, phonenumber, address, city, province, postalcode, country, citizenship, email, position, salary, startdate, lastdate, facilityid) values ('Faulkner', 'Gaish', '1950-07-04', 559465872, '9093846613', '8 Nobel Crossing', 'Sidaurip', 'Quebec', 'U5F2U8', 'Indonesia', 'China', 'fgaishw@a8.net', 'Manufacturing', 1133390181, '2008/11/15', '2016-10-26', 6);
insert into Employee (firstname, lastname, dateofbirth, ssn, phonenumber, address, city, province, postalcode, country, citizenship, email, position, salary, startdate, lastdate, facilityid) values ('Una', 'Swatman', '1986-07-18', 323213433, '5232992006', '6306 Nevada Drive', 'Napoli', 'Campania', 'E3L5L8', 'Italy', 'Russia', 'uswatmanx@shareasale.com', 'Manufacturing', 528723778, '2000/05/05', '2021-09-13', 21);
insert into Employee (firstname, lastname, dateofbirth, ssn, phonenumber, address, city, province, postalcode, country, citizenship, email, position, salary, startdate, lastdate, facilityid) values ('Charles', 'Saggers', '1993-08-01', 274135033, '8321102829', '57291 Maywood Terrace', 'Pionerskiy', 'Quebec', 'C8C9N2', 'Russia', 'Indonesia', 'csaggersy@vkontakte.ru', 'Researcher', 965164386, '2016/08/29', '2019-12-03', 1);

--Ceo
insert into Ceo (employeeID) values (5);
insert into Ceo (employeeID) values (18);
insert into Ceo (employeeID) values (19);
insert into Ceo (employeeID) values (30);
insert into Ceo (employeeID) values (32);
insert into Ceo (employeeID) values (35);
insert into Ceo (employeeID) values (7);
insert into Ceo (employeeID) values (27);
insert into Ceo (employeeID) values (12);
insert into Ceo (employeeID) values (4);

--Task
insert into Task (task, EmployeeID) values ('cooking', 22);
insert into Task (task, EmployeeID) values ('cooking', 4);
insert into Task (task, EmployeeID) values ('tech work', 9);
insert into Task (task, EmployeeID) values ('cleaning', 25);
insert into Task (task, EmployeeID) values ('researching', 31);
insert into Task (task, EmployeeID) values ('packaging', 5);
insert into Task (task, EmployeeID) values ('cleaning', 31);
insert into Task (task, EmployeeID) values ('shipping', 6);
insert into Task (task, EmployeeID) values ('wrapping', 4);
insert into Task (task, EmployeeID) values ('tech work', 11);
insert into Task (task, EmployeeID) values ('administrative work', 31);
insert into Task (task, EmployeeID) values ('cooking', 34);
insert into Task (task, EmployeeID) values ('researching', 33);
insert into Task (task, EmployeeID) values ('researching', 32);
insert into Task (task, EmployeeID) values ('tech work', 2);
insert into Task (task, EmployeeID) values ('packaging', 26);
insert into Task (task, EmployeeID) values ('tech work', 12);
insert into Task (task, EmployeeID) values ('tech work', 2);
insert into Task (task, EmployeeID) values ('packaging', 26);
insert into Task (task, EmployeeID) values ('researching', 11);
insert into Task (task, EmployeeID) values ('researching', 5);
insert into Task (task, EmployeeID) values ('researching', 33);
insert into Task (task, EmployeeID) values ('programming', 11);
insert into Task (task, EmployeeID) values ('shipping', 30);
insert into Task (task, EmployeeID) values ('wrapping', 19);
insert into Task (task, EmployeeID) values ('programming', 15);
insert into Task (task, EmployeeID) values ('cleaning', 12);
insert into Task (task, EmployeeID) values ('tech work', 34);
insert into Task (task, EmployeeID) values ('cleaning', 12);
insert into Task (task, EmployeeID) values ('researching', 22);
insert into Task (task, EmployeeID) values ('researching', 3);
insert into Task (task, EmployeeID) values ('researching', 17);
insert into Task (task, EmployeeID) values ('packaging', 23);
insert into Task (task, EmployeeID) values ('cleaning', 16);
insert into Task (task, EmployeeID) values ('wrapping', 5);
insert into Task (task, EmployeeID) values ('administrative work', 16);
insert into Task (task, EmployeeID) values ('researching', 31);
insert into Task (task, EmployeeID) values ('programming', 31);
insert into Task (task, EmployeeID) values ('programming', 10);
insert into Task (task, EmployeeID) values ('programming', 34);

UPDATE Task
INNER JOIN Employee ON Task.EmployeeID = Employee.employeeID
SET Task.facilityID = Employee.facilityID;

--HeadOffice
insert into HeadOffice (webSite, emailAddress, ceoID, facilityID, headOfficeID) values ('weather.com', 'sbrockherst0@techcrunch.com', 1, 1, 1);
insert into HeadOffice (webSite, emailAddress, ceoID, facilityID, headOfficeID) values ('techcrunch.com', 'aeul1@51.la', 2, 2, 2);
insert into HeadOffice (webSite, emailAddress, ceoID, facilityID, headOfficeID) values ('prnewswire.com', 'agyurko2@nationalgeographic.com', 3, 3, 3);
insert into HeadOffice (webSite, emailAddress, ceoID, facilityID, headOfficeID) values ('bing.com', 'obeaney3@cmu.edu', 4, 4, 4);
insert into HeadOffice (webSite, emailAddress, ceoID, facilityID, headOfficeID) values ('google.com', 'glockhart4@sakura.ne.jp', 5, 5, 5);
insert into HeadOffice (webSite, emailAddress, ceoID, facilityID, headOfficeID) values ('example.com', 'aferminger5@ebay.com', 6, 6, 6);
insert into HeadOffice (webSite, emailAddress, ceoID, facilityID, headOfficeID) values ('bravesites.com', 'cbrocklehurst6@nih.gov', 7, 7, 7);
insert into HeadOffice (webSite, emailAddress, ceoID, facilityID, headOfficeID) values ('hhs.gov', 'cabdy7@bigcartel.com', 8, 8, 8);
insert into HeadOffice (webSite, emailAddress, ceoID, facilityID, headOfficeID) values ('friendfeed.com', 'droberds8@eventbrite.com', 9, 9, 9);
insert into HeadOffice (webSite, emailAddress, ceoID, facilityID, headOfficeID) values ('mayoclinic.com', 'bblagburn9@usgs.gov', 10, 10, 10);

UPDATE HeadOffice
INNER JOIN Ceo ON Ceo.ceoID = HeadOffice.ceoID
SET facilityID = 
    (SELECT facilityID FROM Employee WHERE Employee.employeeID = Ceo.employeeID)

--Contract
insert into Contract (contractID, employeeID, employeeNameSignedContract, dateOfSignedContract, expectedDeliveryDayProduct, clientID, pharmID) values (1, 18, 'Teodor Offiler', '2021-01-05', '2022-09-06', 5, 9);
insert into Contract (contractID, employeeID, employeeNameSignedContract, dateOfSignedContract, expectedDeliveryDayProduct, clientID, pharmID) values (2, 5, 'Rafaellle Matthisson', '2021-03-15', '2022-08-10', 1, 5);
insert into Contract (contractID, employeeID, employeeNameSignedContract, dateOfSignedContract, expectedDeliveryDayProduct, clientID, pharmID) values (3, 4, 'Harlin Sunter', '2021-01-05', '2021-11-15', 8, 7);
insert into Contract (contractID, employeeID, employeeNameSignedContract, dateOfSignedContract, expectedDeliveryDayProduct, clientID, pharmID) values (4, 9, 'Ingar Evetts', '2021-05-09', '2022-02-25', 7, 7);
insert into Contract (contractID, employeeID, employeeNameSignedContract, dateOfSignedContract, expectedDeliveryDayProduct, clientID, pharmID) values (5, 3, 'Jesselyn Rego', '2021-08-11', '2021-12-04', 9, 5);
insert into Contract (contractID, employeeID, employeeNameSignedContract, dateOfSignedContract, expectedDeliveryDayProduct, clientID, pharmID) values (6, 17, 'Regina Rouchy',  '2022-03-07', '2022-10-01', 3, 8);
insert into Contract (contractID, employeeID, employeeNameSignedContract, dateOfSignedContract, expectedDeliveryDayProduct, clientID, pharmID) values (7, 16, 'Chiarra Howsden', '2022-05-05', '2022-11-17', 2, 3);
insert into Contract (contractID, employeeID, employeeNameSignedContract, dateOfSignedContract, expectedDeliveryDayProduct, clientID, pharmID) values (8, 8, 'Jaymee MacLleese',  '2022-06-19', '2022-10-27', 6, 4);
insert into Contract (contractID, employeeID, employeeNameSignedContract, dateOfSignedContract, expectedDeliveryDayProduct, clientID, pharmID) values (9, 13, 'Chadwick Cluet',  '2021-12-30', '2022-06-27', 2, 8);
insert into Contract (contractID, employeeID, employeeNameSignedContract, dateOfSignedContract, expectedDeliveryDayProduct, clientID, pharmID) values (10, 15, 'Karry Twiddle',  '2021-03-28', '2022-09-02', 4, 1);
insert into Contract (contractID, employeeID, employeeNameSignedContract, dateOfSignedContract, expectedDeliveryDayProduct, clientID, pharmID) values (11, 22, 'Alano Woolf',  '2022-01-04', '2022-07-10', 9, 10);

--HistoryOfEmployment
insert into HistoryOfEmployment (hoeID, employeeID, taskID) values (1, 4, 6);
insert into HistoryOfEmployment (hoeID, employeeID, taskID) values (3, 9, 20);
insert into HistoryOfEmployment (hoeID, employeeID, taskID) values (6, 3, 16);
insert into HistoryOfEmployment (hoeID, employeeID, taskID) values (24, 17, 23);
insert into HistoryOfEmployment (hoeID, employeeID, taskID) values (15, 16, 20);
insert into HistoryOfEmployment (hoeID, employeeID, taskID) values (8, 7, 2);
insert into HistoryOfEmployment (hoeID, employeeID, taskID) values (20, 8, 3);
insert into HistoryOfEmployment (hoeID, employeeID, taskID) values (11, 6, 18);
insert into HistoryOfEmployment (hoeID, employeeID, taskID) values (14, 23, 19);
insert into HistoryOfEmployment (hoeID, employeeID, taskID) values (9, 11, 15);

--Product
insert into Product (productID, name, description, volume, weight, defaultPrice, status, purchaseID) values (1, 'Pfizer-BioNTech', 'mRNA', 50, 5, 50.50, 'Available', 9);
insert into Product (productID, name, description, volume, weight, defaultPrice, status, purchaseID) values (2, 'Moderna', 'mRNA',50, 5, 55.50, 'Available', 4);
insert into Product (productID, name, description, volume, weight, defaultPrice, status, purchaseID) values (3, 'AstraZeneca', 'Viral Vector', 20, 4, 20.25, 'Not Available', 7);
insert into Product (productID, name, description, volume, weight, defaultPrice, status, purchaseID) values (4, 'Pfizer-BioNTech', 'mRNA', 100, 10, 112, 'Available', 10);
insert into Product (productID, name, description, volume, weight, defaultPrice, status, purchaseID) values (5, 'Pfizer-BioNTech', 'mRNA', 100, 10, 112, 'Available', 3);
insert into Product (productID, name, description, volume, weight, defaultPrice, status, purchaseID) values (6, 'Moderna', 'mRNA', 100, 10, 115, 'Available', 2);
insert into Product (productID, name, description, volume, weight, defaultPrice, status, purchaseID) values (7, 'AstraZeneca', 'Viral Vector', 50, 5, 40.25, 'Not Available', 4);
insert into Product (productID, name, description, volume, weight, defaultPrice, status, purchaseID) values (8, 'Pfizer-BioNTech', 'mRNA', 100, 10, 112, 'Available', 3);
insert into Product (productID, name, description, volume, weight, defaultPrice, status, purchaseID) values (9, 'Pfizer-BioNTech', 'mRNA', 100, 10, 112, 'Available', 2);
insert into Product (productID, name, description, volume, weight, defaultPrice, status, purchaseID) values (10, 'Moderna', 'mRNA', 100, 10, 115, 'Available', 6);

--Purchase
insert into Purchase (purchaseID, productPurchased, productQuantity, productPrice, clientID) values (1, 'Pfizer-BioNTech', 60, 3030, 8);
insert into Purchase (purchaseID, productPurchased, productQuantity, productPrice, clientID) values (2, 'Moderna', 80, 4440, 5);
insert into Purchase (purchaseID, productPurchased, productQuantity, productPrice, clientID) values (3, 'AstraZeneca', 10, 202.5, 4);
insert into Purchase (purchaseID, productPurchased, productQuantity, productPrice, clientID) values (4, 'Pfizer-BioNTech', 30, 3360, 9);
insert into Purchase (purchaseID, productPurchased, productQuantity, productPrice, clientID) values (5, 'Pfizer-BioNTech', 30, 3360, 2);
insert into Purchase (purchaseID, productPurchased, productQuantity, productPrice, clientID) values (6, 'Moderna', 60, 6900, 7);
insert into Purchase (purchaseID, productPurchased, productQuantity, productPrice, clientID) values (7, 'AstraZeneca', 15, 603.75, 8);
insert into Purchase (purchaseID, productPurchased, productQuantity, productPrice, clientID) values (8, 'Pfizer-BioNTech', 60, 6720, 3);
insert into Purchase (purchaseID, productPurchased, productQuantity, productPrice, clientID) values (9, 'Pfizer-BioNTech', 100, 11200, 2);
insert into Purchase (purchaseID, productPurchased, productQuantity, productPrice, clientID) values (10, 'Moderna', 50, 5750, 9);

SELECT Table_name, COUNT (*) as count
FROM (SELECT Table_name from information_schema.Tables) as T
GROUP By Table_name;

SELECT table_name, table_rows
FROM information_schema.tables
WHERE table_schema = 'yoc353_4'
ORDER BY table_name;
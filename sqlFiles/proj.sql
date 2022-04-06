--PharmCompany
Create Table PharmCompany(
    pharmID INT AUTO_INCREMENT,
    name VARCHAR(255),
    PRIMARY KEY (pharmID)
);

--Facility
Create Table Facility(
	facilityID INT AUTO_INCREMENT,
    name VARCHAR(255),
    address VARCHAR(255),
    city VARCHAR(255),
    province VARCHAR(255),
    postalCode CHAR(6),
    country VARCHAR(255),
    phoneNumber INT,
    pharmID INT,
    PRIMARY Key (facilityID),
    FOREIGN KEY (pharmID)
        REFERENCES PharmCompany(pharmID)
);

--Warehouse
Create Table Warehouse (
    warehouseID INT AUTO_INCREMENT,
	capacity INT,
    facilityID INT,
    PRIMARY KEY (warehouseID),
    FOREIGN KEY(facilityID)
        REFERENCES Facility(facilityID)
);

--Employee
Create Table Employee (
    employeeID INT AUTO_INCREMENT,
	firstName VARCHAR (255),
	lastName VARCHAR (255),
	dateOfBirth DATE,
	SSN INT,
	phoneNumber DEC(10,0),
	address VARCHAR (255),
	city VARCHAR (255),
	province VARCHAR (255),
	postalCode VARCHAR (255),
	country VARCHAR (255),
	citizenship VARCHAR (255),
	email VARCHAR (255),
	position VARCHAR (255),
	salary INT,
	startDate DATE,
	lastDate DATE,
    facilityID INT,
    headOfficeID INT,
    CHECK (SSN >= 0 AND SSN <= 999999999),
    PRIMARY KEY (employeeID),
    FOREIGN KEY (facilityID)
        REFERENCES Facility (facilityID),
    FOREIGN KEY (headOfficeID)
        REFERENCES HeadOffice(headOfficeID)
);

--HistoryOfEmployment
Create Table HistoryOfEmployment(
    historyOfEmploymentID INT AUTO_INCREMENT,
    employeeID INT,
    taskID INT,
    PRIMARY KEY (hoeID),
    FOREIGN KEY(employeeID)
        REFERENCES Employee(employeeID),
    FOREIGN KEY(taskID)
        REFERENCES Task(taskID)
);

--Product
Create Table Product(
	productID INT AUTO_INCREMENT,
    UPC INT UNIQUE,
	name VARCHAR (255),
	description VARCHAR (255),
	volume FLOAT,
	weight FLOAT, 
	defaultPrice FLOAT,
    purchaseID INT,
    pharmID INT, 
	status VARCHAR (255),
    CHECK (status = 'Available' OR status = 'Not Available'),
	PRIMARY KEY (productID),
    FOREIGN KEY(purchaseID)
        REFERENCES Purchase(purchaseID),
    FOREIGN KEY (pharmID)
        REFERENCES PharmCompany (pharmID)
);

--Client
Create Table Client (
    clientID INT UNIQUE AUTO_INCREMENT,
    clientName VARCHAR(255),
    clientAddress VARCHAR(255),
    city VARCHAR(255),
    province VARCHAR(255),
    postalcode VARCHAR(255),
    country VARCHAR(255),
    contactName VARCHAR(255),
    phoneNumber VARCHAR(255),
    email VARCHAR(255),
    pharmID INT,
    PRIMARY KEY (clientID),
    FOREIGN KEY (pharmID)
        REFERENCES PharmCompany(pharmID)
);

--Purchase
Create Table Purchase (
    purchaseID INT AUTO_INCREMENT,
    productPurchased VARCHAR(255),
    productQuantity INT,
    productPrice FLOAT,
    PRIMARY KEY (purchaseID),
    
);

--Contract
Create Table Contract (
    contractID INT AUTO_INCREMENT,
    employeeID INT,
    employeeNameSignedContract VARCHAR(255),
    dateOfSignedContract DATE,
    expectedDeliveryDayProduct DATE,
    clientID INT,
    pharmID INT,
    purchaseID INT,
    PRIMARY KEY (contractID),
    FOREIGN KEY (pharmID)
        REFERENCES PharmCompany(pharmID),
    FOREIGN KEY (clientID)
        REFERENCES Client(clientID),
    FOREIGN KEY (employeeID)
        REFERENCES Employee(employeeID),
    FOREIGN KEY (purchaseID)
        REFERENCES Purchase (purchaseID)
);

--HeadOffice
CREATE TABLE HeadOffice (
	headOfficeID INT AUTO_INCREMENT,
    webSite VARCHAR (255),
    publicEmail VARCHAR (255),
    clientEmail VARCHAR(255),
    ceoID INT UNIQUE,
    facilityID INT,
    PRIMARY KEY (headOfficeID),
    FOREIGN KEY (facilityID) 
        REFERENCES Facility(facilityID),
    FOREIGN KEY (ceoID)
        REFERENCES Ceo(ceoID),
);

--ResearchCenter
CREATE TABLE ResearchCenter (
    researchCenterID INT AUTO_INCREMENT,
    facilityID INT,
    PRIMARY KEY(researchersID),
    FOREIGN KEY (facilityID) 
        REFERENCES Facility(facilityID),
) ;

--ResearchTeam
CREATE TABLE ResearchTeam (

    teamID INT, 
    teamName VARCHAR (255),
    teamLeader VARCHAR (255),
    researchCenterID INT,
    PRIMARY KEY (teamID),
    FOREIGN KEY (researchCenterID)
		REFERENCES ResearchCenter(researchCenterID)
 );
 
 --Project
 CREATE TABLE Project (

	projectID INT,
       name VARCHAR (255),
       startDate DATE,
       endDate DATE,
       teamID INT,
       researchCenterID INT,
      PRIMARY KEY (projectID),
      FOREIGN KEY (teamID)
		REFERENCES ResearchTeam (teamID),
	FOREIGN KEY (researchCenterID)
		REFERENCES ResearchCenter(researchCenterID)
    );

--Researcher
CREATE TABLE Researcher (

	researcherID INT ,
        startDate DATE,
        EndDate DATE,
    	totalHoursWorking INT,
    	teamID INT,
    	projectID INT,
    	researchCenterID INT,
	employeeID INT,
	pharmID INT,
    PRIMARY KEY (researcherID),
    FOREIGN KEY (teamID)
		REFERENCES ResearchTeam (teamID),
    FOREIGN KEY (projectID)
		REFERENCES Project (projectId),
	FOREIGN KEY (researchCenterId)
		REFERENCES ResearchCenter (researchCenterID)
	FOREIGN KEY (employeeID)
		REFERENCES Employee (employeeID)
	FOREIGN KEY (pharmId)
		REFERENCES PharmCompany (pharmID)
    ); 


--ManufacturingFacility
CREATE TABLE ManufacturingFacility(
    manufacturingFacilityID INT AUTO_INCREMENT,
    maxProductionCapacity INT,
    facilityID INT,
    PRIMARY KEY (manufacturingFacilityID),
    FOREIGN KEY (facilityID)
        REFERENCES Facility(facilityID),
);

--Task
CREATE TABLE Task (
    taskID INT AUTO_INCREMENT,
    facilityID INT,
    employeeID INT,
    task VARCHAR(255),
    PRIMARY KEY (taskID),
    FOREIGN KEY (facilityID)
        REFERENCES Facility(facilityID),
    FOREIGN KEY (employeeID)
        REFERENCES Employee(employeeID)
);

--Ceo
CREATE TABLE Ceo(
    ceoID INT AUTO_INCREMENT,
    employeeID INT UNIQUE,
    pharmID INT,
    PRIMARY KEY(ceoID),
    FOREIGN KEY (employeeID)
        REFERENCES Employee(employeeID),
    FOREIGN KEY (pharmCompanyID)
        REFERENCES PharmCompany(pharmCompanyID),
    FOREIGN KEY (pharmID)
        REFERENCES PharmCompany (pharmID)
);

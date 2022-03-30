//To connect all these tables to the ResearchCenter I had to add (ResearchCenterID)to ResearchCenter table 

CREATE TABLE ResearchCenter (
   
    researchCenterID INT,   
  	researchersID INT,
    facilityID INT,
    PRIMARY KEY(researchCenterID),
    FOREIGN KEY (facilityID) 
        REFERENCES Facility(facilityID)
 );



CREATE TABLE ResearchTeam (

	  teamID INT, 
    teamName VARCHAR (255),
    teamLeader VARCHAR (255),
    researchCenterID INT,
    PRIMARY KEY (teamID),
    FOREIGN KEY (researchCenterID)
		REFERENCES ResearchCenter(researchCenterID)
 );
 
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

CREATE TABLE Researcher (

	researcherID INT ,
	firstName VARCHAR (255),
	lastName VARCHAR (255),
    startDate DATE,
    EndDate DATE,
    totalHoursWorking INT,
    teamID INT,
    projectID INT,
    researchCenterID INT,
    PRIMARY KEY (researcherID),
    FOREIGN KEY (teamID)
		REFERENCES ResearchTeam (teamID),
    FOREIGN KEY (projectID)
		REFERENCES Project (projectId),
	FOREIGN KEY (researchCenterId)
		REFERENCES ResearchCenter (researchCenterID)
    );
    

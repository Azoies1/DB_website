--To connect all these tables to the ResearchCenter I had to add (ResearchCenterID)to ResearchCenter table 

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
    
    
    -- Populating new tables 
   
   insert into ResearchTeam (teamID, teamLeader, teamName, researchCenterID) values (1, 'Damiano', 'Zulauf and Sons', 1);
   insert into ResearchTeam (teamID, teamLeader, teamName, researchCenterID) values (2, 'Alica', 'Lubowitz Inc', 2);
   insert into ResearchTeam (teamID, teamLeader, teamName, researchCenterID) values (3, 'Crichton', 'Emmerich-Goodwin', 3);
   insert into ResearchTeam (teamID, teamLeader, teamName, researchCenterID) values (4, 'Mari', 'Torp and Sons', 4);
   insert into ResearchTeam (teamID, teamLeader, teamName, researchCenterID) values (5, 'Waverley', 'Schulist, Stroman and Bechtelar', 5);
   
   insert into Project (projectID, name, startDate, endDate, teamID, researchCenterID) values (1, 'Conroy and Sons', '2021-09-20', '2022-01-04', 1, 1);
   insert into Project (projectID, name, startDate, endDate, teamID, researchCenterID) values (2, 'Terry, Hilpert and Rolfson', '2021-05-20', '2022-12-14', 2, 2);
   insert into Project (projectID, name, startDate, endDate, teamID, researchCenterID) values (3, 'Deckow-Stiedemann', '2021-04-05', '2021-02-28', 3, 3);
   insert into Project (projectID, name, startDate, endDate, teamID, researchCenterID) values (4, 'Heathcote-Ebert', '2022-10-07', '2021-08-10', 4, 4);
   insert into Project (projectID, name, startDate, endDate, teamID, researchCenterID) values (5, 'Glover, Spinka and Funk', '2021-09-25', '2021-01-17', 5, 5);
   
   insert into Researcher (researcherID, firstName, lastName, startDate, endDate, totalHoursWorking, teamID, projectID, researchCenterID) values (1, 'Novelia', 'McCart', '2021-12-15', '2022-10-27', 74, 1, 1, 1);
   insert into Researcher (researcherID, firstName, lastName, startDate, endDate, totalHoursWorking, teamID, projectID, researchCenterID) values (2, 'Mina', 'Dyte', '2022-03-29', '2022-04-01', 53, 2, 2, 2);
   insert into Researcher (researcherID, firstName, lastName, startDate, endDate, totalHoursWorking, teamID, projectID, researchCenterID) values (3, 'Dreddy', 'Owbrick', '2020-12-10', '2022-11-05', 12, 3, 3, 3);
   insert into Researcher (researcherID, firstName, lastName, startDate, endDate, totalHoursWorking, teamID, projectID, researchCenterID) values (4, 'Shantee', 'Houndson', '2022-09-30', '2020-12-28', 94, 4, 4, 4);
   insert into Researcher (researcherID, firstName, lastName, startDate, endDate, totalHoursWorking, teamID, projectID, researchCenterID) values (5, 'Magnum', 'Abbotts', '2021-03-09', '2022-06-06', 69, 5, 5, 5);
   

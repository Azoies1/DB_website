--1
SELECT PharmCompany.name, Facility.city, firstName, lastName, Facility.phoneNumber,
webSite, emailAddress
FROM Facility, Employee, HeadOffice, PharmCompany, Ceo
WHERE Facility.facilityID = Employee.facilityID AND Employee.employeeID =
Ceo.employeeID AND Facility.province = 'Quebec';

--2
SELECT Facility.facilityID, COUNT(ResearchCenter.researchersID) as nbResearch
FROM Facility, ResearchCenter
WHERE (Facility.facilityID = ResearchCenter.facilityID)
GROUP BY Facility.facilityID
HAVING nbResearch >= 2;

--3
SELECT DISTINCT country, COUNT(ResearchCenter.researchersID) as nbResearch
FROM Facility, ResearchCenter
WHERE (Facility.facilityID = ResearchCenter.facilityID)
GROUP BY country
ORDER BY nbResearch DESC;

--4
SELECT Count(ManufacturingFacilityID)
FROM PharmCompany, Facility, ManufacturingFacility
WHERE PharmCompany.name = 'Pfizer'
    AND PharmCompany.pharmID = Facility.pharmID
    AND Facility.facilityID = ManufacturingFacility.facilityID;

--5
SELECT firstName, lastName, dateOfBirth, Employee.phoneNumber, salary, startDate
FROM Employee, Facility
WHERE Employee.position = 'researcher'
    AND Facility.facilityID = Employee.facilityID
    AND Facility.city = 'Montreal'
ORDER BY salary DESC;

--6
SELECT PharmCompany.name, Facility.country, maxProductionCapacity
FROM ManufacturingFacility, Facility, PharmCompany
WHERE PharmCompany.pharmID = Facility.pharmID
    AND ManufacturingFacility.facilityID = Facility.facilityID
ORDER BY maxProductionCapacity DESC;

--7
SELECT PharmCompany.name, Facility.country, webSite, COUNT(manufacturingFacilityID)
FROM PharmCompany
LEFT JOIN Facility ON PharmCompany.pharmID = Facility.pharmID
LEFT JOIN HeadOffice ON Facility.facilityID = HeadOffice.facilityID
LEFT JOIN ManufacturingFacility ON ManufacturingFacility.facilityID = Facility.facilityID
WHERE PharmCompany.pharmID NOT IN (SELECT Distinct pharmID FROM Contract);

--8
SELECT PharmCompany.name, SUM(productQuantity)
FROM PharmCompany
LEFT JOIN Client ON PharmCompany.pharmID = Client.pharmID
LEFT JOIN Purchase ON Client.clientID = Purchase.clientID
Left Join Product ON Purchase.purchaseID = Product.purchaseID
GROUP BY PharmCompany.name;

--9
SELECT firstName, lastName, PharmCompany.name
FROM Employee, Ceo, PharmCompany
WHERE Employee.employeeID = Ceo.employeeID AND position = 'Researcher';

--10
SELECT DISTINCT PharmCompany.name
FROM Facility, PharmCompany, ManufacturingFacility, ResearchCenter
WHERE Facility.pharmID = PharmCompany.pharmID
AND Facility.facilityID= ManufacturingFacility.facilityID
AND facilityID NOT IN (SELECT facilityID FROM ResearchCenter)
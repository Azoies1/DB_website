from sqlalchemy import SQLAlchemy

db = SQLAlchemy()



class Ceo(db.Model):
    __tablename__ = 'Ceo'

    ceoID = db.Column(db.Integer, primary_key=True)
    employeeID = db.Column(db.ForeignKey('Employee.employeeID'), unique=True)

    Employee = db.relationship('Employee', primaryjoin='Ceo.employeeID == Employee.employeeID', backref='ceos')



class Client(db.Model):
    __tablename__ = 'Client'

    clientID = db.Column(db.Integer, primary_key=True, unique=True)
    clientName = db.Column(db.String(255, 'utf8_unicode_ci'))
    clientAddress = db.Column(db.String(255, 'utf8_unicode_ci'))
    city = db.Column(db.String(255, 'utf8_unicode_ci'))
    province = db.Column(db.String(255, 'utf8_unicode_ci'))
    postalcode = db.Column(db.String(255, 'utf8_unicode_ci'))
    country = db.Column(db.String(255, 'utf8_unicode_ci'))
    contactName = db.Column(db.String(255, 'utf8_unicode_ci'))
    phoneNumber = db.Column(db.String(255, 'utf8_unicode_ci'))
    email = db.Column(db.String(255, 'utf8_unicode_ci'))
    pharmID = db.Column(db.ForeignKey('PharmCompany.pharmID'), index=True)

    PharmCompany = db.relationship('PharmCompany', primaryjoin='Client.pharmID == PharmCompany.pharmID', backref='clients')



class Contract(db.Model):
    __tablename__ = 'Contract'

    contractID = db.Column(db.Integer, primary_key=True)
    employeeID = db.Column(db.ForeignKey('Employee.employeeID'), index=True)
    employeeNameSignedContract = db.Column(db.String(255, 'utf8_unicode_ci'))
    dateOfSignedContract = db.Column(db.Date)
    expectedDeliveryDayProduct = db.Column(db.Date)
    clientID = db.Column(db.ForeignKey('Client.clientID'), index=True)
    pharmID = db.Column(db.ForeignKey('PharmCompany.pharmID'), index=True)

    Client = db.relationship('Client', primaryjoin='Contract.clientID == Client.clientID', backref='contracts')
    Employee = db.relationship('Employee', primaryjoin='Contract.employeeID == Employee.employeeID', backref='contracts')
    PharmCompany = db.relationship('PharmCompany', primaryjoin='Contract.pharmID == PharmCompany.pharmID', backref='contracts')



class Employee(db.Model):
    __tablename__ = 'Employee'
    __table_args__ = (
        db.CheckConstraint('((`SSN` >= 0) and (`SSN` <= 999999999))'),
    )

    employeeID = db.Column(db.Integer, primary_key=True)
    firstName = db.Column(db.String(255, 'utf8_unicode_ci'))
    lastName = db.Column(db.String(255, 'utf8_unicode_ci'))
    dateOfBirth = db.Column(db.Date)
    SSN = db.Column(db.Integer)
    phoneNumber = db.Column(db.Numeric(10, 0))
    address = db.Column(db.String(255, 'utf8_unicode_ci'))
    city = db.Column(db.String(255, 'utf8_unicode_ci'))
    province = db.Column(db.String(255, 'utf8_unicode_ci'))
    postalCode = db.Column(db.String(255, 'utf8_unicode_ci'))
    country = db.Column(db.String(255, 'utf8_unicode_ci'))
    citizenship = db.Column(db.String(255, 'utf8_unicode_ci'))
    email = db.Column(db.String(255, 'utf8_unicode_ci'))
    position = db.Column(db.String(255, 'utf8_unicode_ci'))
    salary = db.Column(db.Integer)
    startDate = db.Column(db.Date)
    lastDate = db.Column(db.Date)
    facilityID = db.Column(db.ForeignKey('Facility.facilityID'), index=True)
    headOfficeID = db.Column(db.ForeignKey('HeadOffice.headOfficeID'), index=True)

    Facility = db.relationship('Facility', primaryjoin='Employee.facilityID == Facility.facilityID', backref='employees')
    HeadOffice = db.relationship('HeadOffice', primaryjoin='Employee.headOfficeID == HeadOffice.headOfficeID', backref='employees')



class Facility(db.Model):
    __tablename__ = 'Facility'

    facilityID = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(255, 'utf8_unicode_ci'))
    address = db.Column(db.String(255, 'utf8_unicode_ci'))
    city = db.Column(db.String(255, 'utf8_unicode_ci'))
    province = db.Column(db.String(255, 'utf8_unicode_ci'))
    postalCode = db.Column(db.String(6, 'utf8_unicode_ci'))
    country = db.Column(db.String(255, 'utf8_unicode_ci'))
    phoneNumber = db.Column(db.String(255, 'utf8_unicode_ci'))
    pharmID = db.Column(db.ForeignKey('PharmCompany.pharmID'), index=True)

    PharmCompany = db.relationship('PharmCompany', primaryjoin='Facility.pharmID == PharmCompany.pharmID', backref='facilities')



class HeadOffice(db.Model):
    __tablename__ = 'HeadOffice'

    headOfficeID = db.Column(db.Integer, primary_key=True)
    webSite = db.Column(db.String(255, 'utf8_unicode_ci'))
    publicEmail = db.Column(db.String(255, 'utf8_unicode_ci'))
    ceoID = db.Column(db.ForeignKey('Ceo.ceoID'), unique=True)
    facilityID = db.Column(db.ForeignKey('Facility.facilityID'), index=True)
    clientEmail = db.Column(db.String(255, 'utf8_unicode_ci'))

    Ceo = db.relationship('Ceo', primaryjoin='HeadOffice.ceoID == Ceo.ceoID', backref='head_offices')
    Facility = db.relationship('Facility', primaryjoin='HeadOffice.facilityID == Facility.facilityID', backref='head_offices')



class HistoryOfEmployment(db.Model):
    __tablename__ = 'HistoryOfEmployment'

    hoeID = db.Column(db.Integer, primary_key=True)
    employeeID = db.Column(db.ForeignKey('Employee.employeeID'), index=True)
    taskID = db.Column(db.ForeignKey('Task.taskID'), index=True)

    Employee = db.relationship('Employee', primaryjoin='HistoryOfEmployment.employeeID == Employee.employeeID', backref='history_of_employments')
    Task = db.relationship('Task', primaryjoin='HistoryOfEmployment.taskID == Task.taskID', backref='history_of_employments')



class ManufacturingFacility(db.Model):
    __tablename__ = 'ManufacturingFacility'

    manufacturingFacilityID = db.Column(db.Integer, primary_key=True)
    maxProductionCapacity = db.Column(db.Integer)
    facilityID = db.Column(db.ForeignKey('Facility.facilityID'), index=True)

    Facility = db.relationship('Facility', primaryjoin='ManufacturingFacility.facilityID == Facility.facilityID', backref='manufacturing_facilities')



class PharmCompany(db.Model):
    __tablename__ = 'PharmCompany'

    pharmID = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(255, 'utf8_unicode_ci'))



class Product(db.Model):
    __tablename__ = 'Product'
    __table_args__ = (
        db.CheckConstraint("((`status` = _utf8mb3'Available') or (`status` = _utf8mb3'Not Available'))"),
    )

    productID = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(255, 'utf8_unicode_ci'))
    description = db.Column(db.String(255, 'utf8_unicode_ci'))
    volume = db.Column(db.Float)
    weight = db.Column(db.Float)
    defaultPrice = db.Column(db.Float)
    status = db.Column(db.String(255, 'utf8_unicode_ci'))
    purchaseID = db.Column(db.ForeignKey('Purchase.purchaseID'), index=True)
    UPC = db.Column(db.Integer, unique=True)

    Purchase = db.relationship('Purchase', primaryjoin='Product.purchaseID == Purchase.purchaseID', backref='products')



class Project(db.Model):
    __tablename__ = 'Project'

    projectID = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(255, 'utf8_unicode_ci'))
    startDate = db.Column(db.Date)
    endDate = db.Column(db.Date)
    teamID = db.Column(db.ForeignKey('ResearchTeam.teamID'), index=True)
    researchCenterID = db.Column(db.ForeignKey('ResearchCenter.researchCenterID'), index=True)

    ResearchCenter = db.relationship('ResearchCenter', primaryjoin='Project.researchCenterID == ResearchCenter.researchCenterID', backref='projects')
    ResearchTeam = db.relationship('ResearchTeam', primaryjoin='Project.teamID == ResearchTeam.teamID', backref='projects')



class Purchase(db.Model):
    __tablename__ = 'Purchase'

    purchaseID = db.Column(db.Integer, primary_key=True)
    productPurchased = db.Column(db.String(255, 'utf8_unicode_ci'))
    productQuantity = db.Column(db.Integer)
    productPrice = db.Column(db.Float)
    clientID = db.Column(db.ForeignKey('Client.clientID'), index=True)

    Client = db.relationship('Client', primaryjoin='Purchase.clientID == Client.clientID', backref='purchases')



class ResearchCenter(db.Model):
    __tablename__ = 'ResearchCenter'

    researchersID = db.Column(db.Integer)
    facilityID = db.Column(db.ForeignKey('Facility.facilityID'), index=True)
    researchCenterID = db.Column(db.Integer, primary_key=True)

    Facility = db.relationship('Facility', primaryjoin='ResearchCenter.facilityID == Facility.facilityID', backref='research_centers')



class ResearchTeam(db.Model):
    __tablename__ = 'ResearchTeam'

    teamID = db.Column(db.Integer, primary_key=True)
    teamName = db.Column(db.String(255, 'utf8_unicode_ci'))
    teamLeader = db.Column(db.String(255, 'utf8_unicode_ci'))
    researchCenterID = db.Column(db.ForeignKey('ResearchCenter.researchCenterID'), index=True)

    ResearchCenter = db.relationship('ResearchCenter', primaryjoin='ResearchTeam.researchCenterID == ResearchCenter.researchCenterID', backref='research_teams')



class Researcher(db.Model):
    __tablename__ = 'Researcher'

    researcherID = db.Column(db.Integer, primary_key=True)
    firstName = db.Column(db.String(255, 'utf8_unicode_ci'))
    lastName = db.Column(db.String(255, 'utf8_unicode_ci'))
    startDate = db.Column(db.Date)
    EndDate = db.Column(db.Date)
    totalHoursWorking = db.Column(db.Integer)
    teamID = db.Column(db.ForeignKey('ResearchTeam.teamID'), index=True)
    projectID = db.Column(db.ForeignKey('Project.projectID'), index=True)
    researchCenterID = db.Column(db.ForeignKey('ResearchCenter.researchCenterID'), index=True)

    Project = db.relationship('Project', primaryjoin='Researcher.projectID == Project.projectID', backref='researchers')
    ResearchCenter = db.relationship('ResearchCenter', primaryjoin='Researcher.researchCenterID == ResearchCenter.researchCenterID', backref='researchers')
    ResearchTeam = db.relationship('ResearchTeam', primaryjoin='Researcher.teamID == ResearchTeam.teamID', backref='researchers')



class Task(db.Model):
    __tablename__ = 'Task'

    taskID = db.Column(db.Integer, primary_key=True)
    employeeID = db.Column(db.ForeignKey('Employee.employeeID'), index=True)
    task = db.Column(db.String(255, 'utf8_unicode_ci'))
    facilityID = db.Column(db.ForeignKey('Facility.facilityID'), index=True)

    Employee = db.relationship('Employee', primaryjoin='Task.employeeID == Employee.employeeID', backref='tasks')
    Facility = db.relationship('Facility', primaryjoin='Task.facilityID == Facility.facilityID', backref='tasks')



class Warehouse(db.Model):
    __tablename__ = 'Warehouse'

    warehouseID = db.Column(db.Integer, primary_key=True)
    capacity = db.Column(db.Integer)
    facilityID = db.Column(db.ForeignKey('Facility.facilityID'), index=True)

    Facility = db.relationship('Facility', primaryjoin='Warehouse.facilityID == Facility.facilityID', backref='warehouses')

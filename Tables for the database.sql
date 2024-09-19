-- Creating the Database for HIMS - Hospital Internal Management System 



USE Hospital_MIS; 

-- Creating the Tables for the Management System 

CREATE TABLE AccessRights
(
	AccessRightID bigint AUTO_INCREMENT NOT NULL,
	UserID bigint NOT NULL,
	FunctionalityID bigint NOT NULL,
	Status bit NULL,
	AddedBy int NULL,
	AddedDateTime datetime NULL,
	UpdatedBy bigint NULL,
	UpdatedDateTime datetime NULL,
	PRIMARY KEY CLUSTERED 
	(AccessRightID ASC) 
) ;

CREATE TABLE Advance 
(
	AdvanceId bigint AUTO_INCREMENT NOT NULL,
	PatientId bigint NOT NULL,
	AdvAmount numeric (18, 2) NULL,
	Used numeric(18, 2) NULL,
	Refund numeric (18, 2) NULL,
	Balance numeric(18, 2) NULL,
	Status bit NULL,
	AddedBy int NULL,
	AddedDateTime datetime NULL,
	UpdatedBy bigint NULL,
	UpdatedDateTime datetime NULL,
	PRIMARY KEY CLUSTERED 
	(AdvanceId ASC) 
);

CREATE TABLE Admission
(
	AdmissionId bigint AUTO_INCREMENT NOT NULL,
	PatientCategoryID int NOT NULL,
	PatientId bigint NOT NULL,
	UnitId int NOT NULL,
	DoctorId bigint NOT NULL,
	AdmissionDate datetime NOT NULL,
	IPDNumber bigint NOT NULL,
	RelativeName nvarchar(200) NULL,
	RelationId int NULL,
	BedId int NOT NULL,
	CompanyId int NOT NULL,
	IsMLC bit NULL,
	Status bit NULL,
	AddedBy int NULL,
	AddedDateTime datetime NULL,
	UpdatedBy bigint NULL,
	UpdatedDateTime datetime NULL,
	CONSTRAINT PK__Admissio__C97EEC427DFE4C43 PRIMARY KEY CLUSTERED 
	(AdmissionId ASC) 
) ;

CREATE TABLE ApplicationFunctionality
(
	FunctionalityID bigint AUTO_INCREMENT NOT NULL,
	Name nvarchar(50) NOT NULL,
	Level int NOT NULL,
	Status bit NULL,
	AddedBy int NULL,
	AddedDateTime datetime NULL,
	UpdatedBy bigint NULL,
	UpdatedDateTime datetime NULL,
	PRIMARY KEY CLUSTERED 
	(FunctionalityID ASC) 
) ; 

CREATE TABLE Bed
(
	BedId INT AUTO_INCREMENT NOT NULL,
	Name nvarchar(50) NOT NULL,
	WardId int NULL,
	RoomId int NULL,
	Status bit NULL,
	AddedBy int NULL,
	AddedDateTime datetime NULL,
	UpdatedBy bigint NULL,
	UpdatedDateTime datetime NULL,
	CONSTRAINT PK__BedId__A8A7104054C04A45 PRIMARY KEY CLUSTERED 
	(BedId ASC) 
) ;

CREATE TABLE Bill
(
	BillId bigint AUTO_INCREMENT NOT NULL,
	BillDateTime datetime NULL,
	VisitId bigint NULL,
	AdmissionId bigint NULL,
	TotalAmount numeric(18, 2) NULL,
	AdvanceAmount numeric(18, 2) NULL,
	Concession numeric(18, 2) NULL,
	FinalBillAmount numeric(18, 2) NULL,
	Status bit NULL,
	AddedBy int NULL,
	AddedDateTime datetime NULL,
	UpdatedBy bigint NULL,
	UpdatedDateTime datetime NULL,
 
	CONSTRAINT PK__Bill__11F2FC6A9060F41C PRIMARY KEY CLUSTERED 
	(BillId ASC) 
) ;

CREATE TABLE Charge
(
	ChargeId bigint AUTO_INCREMENT NOT NULL,
	VisitId bigint NULL,
	AdmissionId bigint NULL,
	ServiceId bigint NOT NULL,
	Rate numeric(18, 2) NOT NULL,
	Quantity int NOT NULL,
	Amount numeric(18, 2) NOT NULL,
	Concession numeric(18, 2) NULL,
	Status bit NULL,
	AddedBy int NULL,
	AddedDateTime datetime NULL,
	UpdatedBy bigint NULL,
	UpdatedDateTime datetime NULL,
	CONSTRAINT PK__Charge__17FC361B131A7AE4 
    PRIMARY KEY CLUSTERED 
	(ChargeId ASC) 
) ; 

CREATE TABLE City
(
	CityID int AUTO_INCREMENT NOT NULL,
	Name nvarchar(50) NOT NULL,
	StateID int NOT NULL,
	Status bit NULL,
	AddedBy int NULL,
	AddedDateTime datetime NULL,
	UpdatedBy bigint NULL,
	UpdatedDateTime datetime NULL,
 CONSTRAINT PK__City__F2D21A96E551186A PRIMARY KEY CLUSTERED 
(CityID ASC) 
) ; 

CREATE TABLE Country
(
	CountryID int AUTO_INCREMENT NOT NULL,
	Name nvarchar(50) NOT NULL,
	NationalityID int NULL,
	Status bit NULL,
	AddedBy int NULL,
	AddedDateTime datetime NULL,
	UpdatedBy bigint NULL,
	UpdatedDateTime datetime NULL,
	CONSTRAINT PK__Country__10D160BF12515864 PRIMARY KEY CLUSTERED 
(CountryID ASC) 
) ; 

CREATE TABLE Department
(
	DepartmentID int AUTO_INCREMENT NOT NULL,
	Name nvarchar(50) NOT NULL,
	IsClinical bit NOT NULL,
	Status bit NULL,
	AddedBy int NULL,
	AddedDateTime datetime NULL,
	UpdatedBy bigint NULL,
	UpdatedDateTime datetime NULL,
	CONSTRAINT PK__Departme__BF50FAFB2901D316 PRIMARY KEY CLUSTERED 
(DepartmentID ASC) 
) ;

CREATE TABLE Discharge
(
	DischargeId bigint AUTO_INCREMENT NOT NULL,
	AdmissionId bigint NOT NULL,
	DoctorId bigint NOT NULL,
	DischargeDate datetime NOT NULL,
	DischargeNotes nvarchar(2000) NULL,
	FileAttachedPath nvarchar(500) NULL,
	Status bit NULL,
	AddedBy int NULL,
	AddedDateTime datetime NULL,
	UpdatedBy bigint NULL,
	UpdatedDateTime datetime NULL,
	CONSTRAINT PK__Discharg__CBC0800799D57BD3 PRIMARY KEY CLUSTERED 
	(DischargeId ASC) 
) ; 

CREATE TABLE Doctor
(
	DoctorID bigint AUTO_INCREMENT NOT NULL,
	DepartmentID int NOT NULL,
	FirstName nvarchar(150) NOT NULL,
	MiddleName nvarchar(150) NULL,
	LastName nvarchar(150) NOT NULL,
	Qualification nvarchar(150) NULL,
	GenderID int NULL,
	DateOfBirth date NULL,
	ContactNo1 nvarchar(15) NULL,
	ContactNo2 nvarchar(15) NULL,
	Email nvarchar(100) NULL,
	AddressLine1 nvarchar(150) NULL,
	AddressLine2 nvarchar(150) NULL,
	Pincode nvarchar(10) NULL,
	CityID int NULL,
	Status bit NULL,
	AddedBy int NULL,
	AddedDateTime datetime NULL,
	UpdatedBy bigint NULL,
	UpdatedDateTime datetime NULL,
	CONSTRAINT PK__Doctor__2DC00EDF448A8A51 PRIMARY KEY CLUSTERED 
(DoctorID ASC) 
) ; 

CREATE TABLE Gender
(
	GenderID int AUTO_INCREMENT NOT NULL,
	Name nvarchar(50) NOT NULL,
	Status bit NULL,
	AddedBy int NULL,
	AddedDateTime datetime NULL,
	UpdatedBy bigint NULL,
	UpdatedDateTime datetime NULL,
	CONSTRAINT PK__Gender__4E24E81738FADBDD PRIMARY KEY CLUSTERED 
(GenderID ASC) 
) ;

CREATE TABLE InsuranceCompany
(
	CompanyId int AUTO_INCREMENT NOT NULL,
	Name nvarchar(50) NOT NULL,
	Status bit NULL,
	AddedBy int NULL,
	AddedDateTime datetime NULL,
	UpdatedBy bigint NULL,
	UpdatedDateTime datetime NULL,
	PRIMARY KEY CLUSTERED 
(CompanyId ASC) 
) ; 

CREATE TABLE Nationality
(
	NationalityID int AUTO_INCREMENT NOT NULL,
	Name nvarchar(50) NOT NULL,
	Status bit NULL,
	AddedBy int NULL,
	AddedDateTime datetime NULL,
	UpdatedBy int NULL,
	UpdatedDateTime datetime NULL,
	CONSTRAINT PK__National__F628E7A4F44C1021 PRIMARY KEY CLUSTERED 
(NationalityID ASC) 
) ;

CREATE TABLE Patient
(
	PatientID bigint AUTO_INCREMENT NOT NULL,
	FirstName nvarchar(150) NOT NULL,
	MiddleName nvarchar(150) NULL,
	LastName nvarchar(150) NOT NULL,
	GenderID int NOT NULL,
	DateOfBirth date NULL,
	ContactNo1 nvarchar(15) NULL,
	ContactNo2 nvarchar(15) NULL,
	Email nvarchar(100) NULL,
	AddressLine1 nvarchar(150) NULL,
	AddressLine2 nvarchar(150) NULL,
	Pincode nvarchar(10) NULL,
	CityID int NULL,
	Status bit NULL,
	AddedBy int NULL,
	AddedDateTime datetime NULL,
	UpdatedBy bigint NULL,
	UpdatedDateTime datetime NULL,
	PRIMARY KEY CLUSTERED 
	(PatientID ASC) 
) ; 

CREATE TABLE PatientCategory
(
	PatientCategoryID int AUTO_INCREMENT NOT NULL,
	Name nvarchar(50) NOT NULL,
	Status bit NULL,
	AddedBy int NULL,
	AddedDateTime datetime NULL,
	UpdatedBy bigint NULL,
	UpdatedDateTime datetime NULL,
	CONSTRAINT PK__PatientC__F659E81CA9686ED9 PRIMARY KEY CLUSTERED 
	(PatientCategoryID ASC) 
) ;

CREATE TABLE Relation
(
	RelationID int AUTO_INCREMENT NOT NULL,
	Name nvarchar(50) NOT NULL,
	Status bit NULL,
	AddedBy int NULL,
	AddedDateTime datetime NULL,
	UpdatedBy bigint NULL,
	UpdatedDateTime datetime NULL,
	CONSTRAINT PK__Relation__E2DA1695492E1EFE PRIMARY KEY CLUSTERED 
	(RelationID ASC) 
) ; 

CREATE TABLE Room
(
	RoomId int AUTO_INCREMENT NOT NULL,
	Name nvarchar(50) NOT NULL,
	WardID int NOT NULL,
	Status bit NULL,
	AddedBy int NULL,
	AddedDateTime datetime NULL,
	UpdatedBy bigint NULL,
	UpdatedDateTime datetime NULL,
	CONSTRAINT PK__Room__32863939FACFA302 PRIMARY KEY CLUSTERED 
	(RoomId ASC) 
) ;
 
CREATE TABLE Service
(
	ServiceId bigint AUTO_INCREMENT NOT NULL,
	Name nvarchar(200) NULL,
	ServiceCategoryId int NOT NULL,
	Rate numeric(18, 2) NOT NULL,
	ServiceTypeId int NOT NULL,
	CompanyId int NULL,
	Status bit NULL,
	AddedBy int NULL,
	AddedDateTime datetime NULL,
	UpdatedBy bigint NULL,
	UpdatedDateTime datetime NULL,
	CONSTRAINT PK__Service__C51BB00A08435475 PRIMARY KEY CLUSTERED 
	(ServiceId ASC) 
) ;

CREATE TABLE ServiceCategory
(
	ServiceCategoryId int AUTO_INCREMENT NOT NULL,
	Name nvarchar(50) NOT NULL,
	Status bit NULL,
	AddedBy int NULL,
	AddedDateTime datetime NULL,
	UpdatedBy bigint NULL,
	UpdatedDateTime datetime NULL,
	CONSTRAINT PK__ServiceC__E4CC7EAA0B2769CC PRIMARY KEY CLUSTERED 
	(ServiceCategoryId ASC) 
) ;

CREATE TABLE ServiceType
(
	ServiceTypeID int AUTO_INCREMENT NOT NULL,
	Name nvarchar(50) NULL,
	Status bit NULL,
	AddedBy int NULL,
	AddedDateTime datetime NULL,
	UpdatedBy bigint NULL,
	UpdatedDateTime datetime NULL,
	PRIMARY KEY CLUSTERED 
	(ServiceTypeID ASC) 
) ; 

CREATE TABLE Staff(
	StaffID bigint AUTO_INCREMENT NOT NULL,
	DepartmentID int NOT NULL,
	FirstName nvarchar(150) NOT NULL,
	MiddleName nvarchar(150) NULL,
	LastName nvarchar(150) NOT NULL,
	GenderID int NOT NULL,
	DateOfBirth date NULL,
	ContactNo1 nvarchar(15) NULL,
	ContactNo2 nvarchar(15) NULL,
	Email nvarchar(100) NULL,
	AddressLine1 nvarchar(150) NULL,
	AddressLine2 nvarchar(150) NULL,
	Pincode nvarchar(10) NULL,
	CityID int NULL,
	Status bit NULL,
	AddedBy int NULL,
	AddedDateTime datetime NULL,
	UpdatedBy bigint NULL,
	UpdatedDateTime datetime NULL,
	CONSTRAINT PK__Staff__96D4AAF72C6A8DDE PRIMARY KEY CLUSTERED 
	(StaffID ASC) 
) ; 

CREATE TABLE State(
	StateID int AUTO_INCREMENT NOT NULL,
	Name nvarchar(50) NOT NULL,
	CountryID int NULL,
	Status bit NULL,
	AddedBy int NULL,
	AddedDateTime datetime NULL,
	UpdatedBy bigint NULL,
	UpdatedDateTime datetime NULL,
	CONSTRAINT PK__State__C3BA3B5A33A88EFB PRIMARY KEY CLUSTERED 
	(StateID ASC) 
) ; 

CREATE TABLE Unit
(
	UnitID int AUTO_INCREMENT NOT NULL,
	Name nvarchar(50) NOT NULL,
	Status bit NULL,
	AddedBy int NULL,
	AddedDateTime datetime NULL,
	UpdatedBy bigint NULL,
	UpdatedDateTime datetime NULL,
	CONSTRAINT PK__Unit__44F5EC95BCB1E006 PRIMARY KEY CLUSTERED 
	(UnitID ASC) 
) ;

CREATE TABLE User
(
	UserID bigint AUTO_INCREMENT NOT NULL,
	StaffID bigint NOT NULL,
	Status bit NULL,
	AddedBy int NULL,
	AddedDateTime datetime NULL,
	UpdatedBy bigint NULL,
	UpdatedDateTime datetime NULL,
	CONSTRAINT PK__User__1788CCACE974F580 PRIMARY KEY CLUSTERED 
	(UserID ASC) 
) ; 

CREATE TABLE Visit
(
	VisitId bigint AUTO_INCREMENT NOT NULL,
	PatientCategoryID int NOT NULL,
	PatientId bigint NOT NULL,
	DoctorID bigint NOT NULL,
	UnitId int NOT NULL,
	VisitDate datetime NOT NULL,
	OPDNumber bigint NOT NULL,
	Status bit NULL,
	AddedBy int NULL,
	AddedDateTime datetime NULL,
	UpdatedBy bigint NULL,
	UpdatedDateTime datetime NULL,
	CONSTRAINT PK__Visit__4D3AA1DE33E909FD PRIMARY KEY CLUSTERED 
(VisitId ASC) 
) ; 

CREATE TABLE Ward
(
	WardID int AUTO_INCREMENT NOT NULL,
	Name nvarchar(50) NOT NULL,
	UnitId int NULL,
	Status bit NULL,
	AddedBy int NULL,
	AddedDateTime datetime NULL,
	UpdatedBy bigint NULL,
	UpdatedDateTime datetime NULL,
	CONSTRAINT PK__Ward__C6BD9BEA33313C46 PRIMARY KEY CLUSTERED 
	(WardID ASC) 
) ; 

CREATE TABLE Prescription
(
	PrescriptionId bigint AUTO_INCREMENT NOT NULL PRIMARY KEY,
	VisitId bigint NOT NULL,
	Path Varchar(500),
	Status bit NULL DEFAULT (1),
	AddedBy int NULL,
	AddedDateTime datetime NULL,
	UpdatedBy bigint NULL,
	UpdatedDateTime datetime NULL
) ;

ALTER TABLE Prescription 
ADD CONSTRAINT FK_Prescription_Visit FOREIGN KEY (VisitId)
REFERENCES Visit (VisitId) ; 

CREATE TABLE ClinicalNote
(
	ClinicalNoteId bigint AUTO_INCREMENT NOT NULL PRIMARY KEY,
	AdmissionId bigint NOT NULL,
	Path Varchar(500),
	Status bit NULL DEFAULT(1),
	AddedBy int NULL,
	AddedDateTime datetime NULL ,
	UpdatedBy bigint NULL,
	UpdatedDateTime datetime NULL
) ; 

-- Adding all the constraits required 

ALTER TABLE ClinicalNote 
ADD CONSTRAINT FK_ClinicalNote_Admission FOREIGN KEY(AdmissionId)
REFERENCES Admission (AdmissionId) ; 

ALTER TABLE AccessRights
MODIFY COLUMN AddedDateTime DATETIME DEFAULT NOW();

ALTER TABLE AccessRights
MODIFY COLUMN UpdatedDateTime DATETIME DEFAULT NOW();

ALTER TABLE Admission
MODIFY COLUMN AdmissionDate DATETIME DEFAULT NOW();

ALTER TABLE Admission
MODIFY COLUMN UpdatedDateTime DATETIME DEFAULT NOW();

ALTER TABLE Admission
MODIFY COLUMN AddedDateTime DATETIME DEFAULT NOW();

ALTER TABLE Admission
MODIFY COLUMN Status INT DEFAULT 1;

ALTER TABLE Advance
MODIFY COLUMN UpdatedDateTime DATETIME DEFAULT NOW();

ALTER TABLE Advance
MODIFY COLUMN AddedDateTime DATETIME DEFAULT NOW();

ALTER TABLE Advance
MODIFY COLUMN Status INT DEFAULT 1;

ALTER TABLE ApplicationFunctionality
MODIFY COLUMN UpdatedDateTime DATETIME DEFAULT NOW();

ALTER TABLE ApplicationFunctionality
MODIFY COLUMN AddedDateTime DATETIME DEFAULT NOW();

ALTER TABLE ApplicationFunctionality
MODIFY COLUMN Status INT DEFAULT 1;

ALTER TABLE Bed
MODIFY COLUMN UpdatedDateTime DATETIME DEFAULT NOW();

ALTER TABLE Bed
MODIFY COLUMN AddedDateTime DATETIME DEFAULT NOW();

ALTER TABLE Bed
MODIFY COLUMN Status INT DEFAULT 1;

ALTER TABLE Bill
MODIFY COLUMN UpdatedDateTime DATETIME DEFAULT NOW();

ALTER TABLE Bill
MODIFY COLUMN BillDateTime DATETIME DEFAULT NOW();

ALTER TABLE Bill
MODIFY COLUMN AddedDateTime DATETIME DEFAULT NOW();

ALTER TABLE Bill
MODIFY COLUMN Status INT DEFAULT 1;

ALTER TABLE Charge
MODIFY COLUMN UpdatedDateTime DATETIME DEFAULT NOW();

ALTER TABLE Charge
MODIFY COLUMN AddedDateTime DATETIME DEFAULT NOW();

ALTER TABLE Charge
MODIFY COLUMN Status INT DEFAULT 1;

ALTER TABLE City
MODIFY COLUMN UpdatedDateTime DATETIME DEFAULT NOW();

ALTER TABLE City
MODIFY COLUMN AddedDateTime DATETIME DEFAULT NOW();

ALTER TABLE City
MODIFY COLUMN Status INT DEFAULT 1;

ALTER TABLE Country
MODIFY COLUMN UpdatedDateTime DATETIME DEFAULT NOW();

ALTER TABLE Country
MODIFY COLUMN AddedDateTime DATETIME DEFAULT NOW();

ALTER TABLE Country
MODIFY COLUMN Status INT DEFAULT 1;

ALTER TABLE Department
MODIFY COLUMN UpdatedDateTime DATETIME DEFAULT NOW();

ALTER TABLE Department
MODIFY COLUMN AddedDateTime DATETIME DEFAULT NOW();

ALTER TABLE Department
MODIFY COLUMN Status INT DEFAULT 1;

ALTER TABLE Discharge
MODIFY COLUMN DischargeDate DATETIME DEFAULT NOW();

ALTER TABLE Discharge
MODIFY COLUMN UpdatedDateTime DATETIME DEFAULT NOW();

ALTER TABLE Discharge
MODIFY COLUMN AddedDateTime DATETIME DEFAULT NOW();

ALTER TABLE Discharge
MODIFY COLUMN Status INT DEFAULT 1;

ALTER TABLE Doctor
MODIFY COLUMN UpdatedDateTime DATETIME DEFAULT NOW();

ALTER TABLE Doctor
MODIFY COLUMN AddedDateTime DATETIME DEFAULT NOW();

ALTER TABLE Doctor
MODIFY COLUMN Status INT DEFAULT 1;

ALTER TABLE Gender
MODIFY COLUMN UpdatedDateTime DATETIME DEFAULT NOW(),
MODIFY COLUMN AddedDateTime DATETIME DEFAULT NOW(),
MODIFY COLUMN Status INT DEFAULT 1;

ALTER TABLE InsuranceCompany
MODIFY COLUMN UpdatedDateTime DATETIME DEFAULT NOW(),
MODIFY COLUMN AddedDateTime DATETIME DEFAULT NOW(),
MODIFY COLUMN Status INT DEFAULT 1;

ALTER TABLE Nationality
MODIFY COLUMN UpdatedDateTime DATETIME DEFAULT NOW(),
MODIFY COLUMN AddedDateTime DATETIME DEFAULT NOW(),
MODIFY COLUMN Status INT DEFAULT 1;

ALTER TABLE Patient
MODIFY COLUMN UpdatedDateTime DATETIME DEFAULT NOW(),
MODIFY COLUMN AddedDateTime DATETIME DEFAULT NOW(),
MODIFY COLUMN Status INT DEFAULT 1;

ALTER TABLE PatientCategory
MODIFY COLUMN UpdatedDateTime DATETIME DEFAULT NOW(),
MODIFY COLUMN AddedDateTime DATETIME DEFAULT NOW(),
MODIFY COLUMN Status INT DEFAULT 1;

ALTER TABLE Relation
MODIFY COLUMN UpdatedDateTime DATETIME DEFAULT NOW(),
MODIFY COLUMN AddedDateTime DATETIME DEFAULT NOW(),
MODIFY COLUMN Status INT DEFAULT 1;

ALTER TABLE Room
MODIFY COLUMN UpdatedDateTime DATETIME DEFAULT NOW(),
MODIFY COLUMN AddedDateTime DATETIME DEFAULT NOW(),
MODIFY COLUMN Status INT DEFAULT 1;

ALTER TABLE service
MODIFY COLUMN UpdatedDateTime DATETIME DEFAULT NOW(),
MODIFY COLUMN AddedDateTime DATETIME DEFAULT NOW(),
MODIFY COLUMN Status INT DEFAULT 1;

ALTER TABLE ServiceCategory
MODIFY COLUMN UpdatedDateTime DATETIME DEFAULT NOW(),
MODIFY COLUMN AddedDateTime DATETIME DEFAULT NOW(),
MODIFY COLUMN Status INT DEFAULT 1;

ALTER TABLE ServiceType
MODIFY COLUMN UpdatedDateTime DATETIME DEFAULT NOW(),
MODIFY COLUMN AddedDateTime DATETIME DEFAULT NOW(),
MODIFY COLUMN Status INT DEFAULT 1;

ALTER TABLE Staff
MODIFY COLUMN UpdatedDateTime DATETIME DEFAULT NOW(),
MODIFY COLUMN AddedDateTime DATETIME DEFAULT NOW(),
MODIFY COLUMN Status INT DEFAULT 1;

ALTER TABLE Unit
MODIFY COLUMN UpdatedDateTime DATETIME DEFAULT NOW(),
MODIFY COLUMN AddedDateTime DATETIME DEFAULT NOW(),
MODIFY COLUMN Status INT DEFAULT 1;

ALTER TABLE State
MODIFY COLUMN UpdatedDateTime DATETIME DEFAULT NOW(),
MODIFY COLUMN AddedDateTime DATETIME DEFAULT NOW(),
MODIFY COLUMN Status INT DEFAULT 1;

ALTER TABLE User
MODIFY COLUMN UpdatedDateTime DATETIME DEFAULT NOW(),
MODIFY COLUMN AddedDateTime DATETIME DEFAULT NOW(),
MODIFY COLUMN Status INT DEFAULT 1;

ALTER TABLE Visit
MODIFY COLUMN UpdatedDateTime DATETIME DEFAULT NOW(),
MODIFY COLUMN AddedDateTime DATETIME DEFAULT NOW(),
MODIFY COLUMN Status INT DEFAULT 1;

ALTER TABLE Ward
MODIFY COLUMN UpdatedDateTime DATETIME DEFAULT NOW(),
MODIFY COLUMN AddedDateTime DATETIME DEFAULT NOW(),
MODIFY COLUMN Status INT DEFAULT 1;

ALTER TABLE AccessRights
ADD CONSTRAINT FK_AccessRights_ApplicationFunctionality
FOREIGN KEY (FunctionalityID) 
REFERENCES ApplicationFunctionality (FunctionalityID);

ALTER TABLE Admission  ADD CONSTRAINT FK_Admission_BedId FOREIGN KEY(BedId)
REFERENCES Bed(BedId); 

ALTER TABLE Admission ADD  CONSTRAINT FK_Admission_Doctor FOREIGN KEY(DoctorId)
REFERENCES Doctor(DoctorID); 

ALTER TABLE Admission ADD CONSTRAINT FK_Admission_InsuranceCompany FOREIGN KEY(CompanyId)
REFERENCES InsuranceCompany(CompanyId); 

ALTER TABLE Admission ADD  CONSTRAINT FK_Admission_Patient FOREIGN KEY(PatientId)
REFERENCES Patient(PatientID);

ALTER TABLE Admission ADD  CONSTRAINT FK_Admission_PatientCategory FOREIGN KEY(PatientCategoryID)
REFERENCES PatientCategory(PatientCategoryID); 

ALTER TABLE Admission ADD  CONSTRAINT FK_Admission_Relation FOREIGN KEY(RelationId)
REFERENCES Relation(RelationID); 

ALTER TABLE Admission ADD CONSTRAINT FK_Admission_Unit FOREIGN KEY(UnitId)
REFERENCES Unit(UnitID); 

ALTER TABLE Advance  ADD  CONSTRAINT FK_Advance_Patient FOREIGN KEY(PatientId)
REFERENCES Patient(PatientID);

ALTER TABLE Bed ADD CONSTRAINT FK_BedId_Room FOREIGN KEY(RoomId)
REFERENCES Room(RoomId);

ALTER TABLE Bill ADD CONSTRAINT FK_Bill_Admission1 FOREIGN KEY(AdmissionId)
REFERENCES Admission(AdmissionId); 

ALTER TABLE Bill ADD CONSTRAINT FK_Bill_Visit FOREIGN KEY(VisitId)
REFERENCES Visit(VisitId);

ALTER TABLE Charge ADD CONSTRAINT FK_Charge_Admission FOREIGN KEY(AdmissionId)
REFERENCES Admission(AdmissionId);

ALTER TABLE Charge ADD CONSTRAINT FK_Charge_Service FOREIGN KEY(ServiceId)
REFERENCES Service(ServiceId);

ALTER TABLE Charge ADD CONSTRAINT FK_Charge_Visit FOREIGN KEY(VisitId)
REFERENCES Visit(VisitId);

ALTER TABLE City ADD  CONSTRAINT FK_City_State FOREIGN KEY(StateID)
REFERENCES State(StateID); 

ALTER TABLE Country ADD CONSTRAINT FK_Country_Nationality FOREIGN KEY(NationalityID)
REFERENCES Nationality(NationalityID); 

ALTER TABLE Discharge ADD CONSTRAINT FK_Discharge_Admission FOREIGN KEY(AdmissionId)
REFERENCES Admission(AdmissionId);

ALTER TABLE Discharge  ADD  CONSTRAINT FK_Discharge_Doctor FOREIGN KEY(DoctorId)
REFERENCES Doctor(DoctorID);

-- Adding a foreign key constraint between Doctor and City tables
ALTER TABLE Doctor
ADD CONSTRAINT FK_Doctor_City
FOREIGN KEY (CityID) REFERENCES City (CityID);

-- Adding a foreign key constraint between Doctor and Department tables
ALTER TABLE Doctor
ADD CONSTRAINT FK_Doctor_Department
FOREIGN KEY (DepartmentID) REFERENCES Department (DepartmentID);

-- Adding a foreign key constraint between Doctor and Gender tables
ALTER TABLE Doctor
ADD CONSTRAINT FK_Doctor_Gender
FOREIGN KEY (GenderID) REFERENCES Gender (GenderID);

-- Adding a foreign key constraint between Patient and City tables
ALTER TABLE Patient
ADD CONSTRAINT FK_Patient_City
FOREIGN KEY (CityID) REFERENCES City (CityID);

-- Adding a foreign key constraint between Patient and Gender tables
ALTER TABLE Patient
ADD CONSTRAINT FK_Patient_Gender
FOREIGN KEY (GenderID) REFERENCES Gender (GenderID);

-- Adding a foreign key constraint between Room and Ward tables
ALTER TABLE Room
ADD CONSTRAINT FK_Room_Ward
FOREIGN KEY (WardID) REFERENCES Ward (WardID);

-- Adding a foreign key constraint between Service and InsuranceCompany tables
ALTER TABLE Service
ADD CONSTRAINT FK_Service_InsuranceCompany
FOREIGN KEY (CompanyId) REFERENCES InsuranceCompany (CompanyId);

-- Adding a foreign key constraint between Service and ServiceCategory tables
ALTER TABLE Service ADD CONSTRAINT FK_Service_ServiceCategory
FOREIGN KEY (ServiceCategoryId) REFERENCES ServiceCategory (ServiceCategoryId);

ALTER TABLE Staff ADD  CONSTRAINT FK_Staff_City FOREIGN KEY(CityID)
REFERENCES City(CityID);

ALTER TABLE Staff ADD  CONSTRAINT FK_Staff_Department FOREIGN KEY(DepartmentID)
REFERENCES Department(DepartmentID); 

ALTER TABLE Staff ADD  CONSTRAINT FK_Staff_Gender FOREIGN KEY(GenderID)
REFERENCES Gender(GenderID);

ALTER TABLE State ADD  CONSTRAINT FK_State_Country FOREIGN KEY(CountryID)
REFERENCES Country(CountryID); 

ALTER TABLE User ADD  CONSTRAINT FK_User_Staff FOREIGN KEY(StaffID)
REFERENCES Staff(StaffID) ; 

ALTER TABLE Visit ADD  CONSTRAINT FK_Visit_Doctor FOREIGN KEY(DoctorID)
REFERENCES Doctor (DoctorID);

ALTER TABLE Visit ADD  CONSTRAINT FK_Visit_Patient FOREIGN KEY(PatientId)
REFERENCES Patient(PatientID);

ALTER TABLE Visit ADD  CONSTRAINT FK_Visit_PatientCategory FOREIGN KEY(PatientCategoryID)
REFERENCES PatientCategory(PatientCategoryID);

ALTER TABLE Visit ADD  CONSTRAINT FK_Visit_Unit FOREIGN KEY(UnitId)
REFERENCES Unit(UnitID);

Create View View_Patient AS
SELECT 
	PatientID, 
	FirstName, 
    MiddleName, 
    LastName, 
    g.Name As Gender, 
    DateOfBirth, 
    ContactNo1, 
    ContactNo2, 
    Email, 
    AddressLine1, 
    AddressLine2, 
    Pincode,
	C.Name As City
FROM 
	Patient P
	Inner Join Gender g
	On P.GenderID=g.GenderID
	Inner Join City C
	On P.CityID=C.CityID;

Create View View_Doctor AS
SELECT 
	DoctorID, 
    FirstName,
	MiddleName,
	LastName,
	Qualification,
	dp.Name AS Department,
	g.Name As Gender,
	DateOfBirth,
	ContactNo1,
	ContactNo2,
	Email,
	AddressLine1,
	AddressLine2,
	Pincode,
	C.Name As City
FROM 
	Doctor d
	Inner Join Gender g
	On d.GenderID=g.GenderID
	Inner Join City C
	On d.CityID=C.CityID
	Inner Join Department dp
	On d.DepartmentID=dp.DepartmentID;

Create View View_Staff AS
SELECT
	StaffID,
    FirstName,
	MiddleName,
	LastName,
	dp.Name AS Department,
	g.Name As Gender,
	DateOfBirth,
	ContactNo1,
	ContactNo2,
	Email,
	AddressLine1,
	AddressLine2,
	Pincode,
	C.Name As City
FROM 
	Staff s
	Inner Join Gender g
	On s.GenderID=g.GenderID
	Inner Join City C
	On s.CityID=C.CityID
	Inner Join Department dp
	On s.DepartmentID=dp.DepartmentID ; 

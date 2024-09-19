USE Hospital_MIS; 

Insert Into PatientCategory(PatientCategoryID,Name,AddedBy,UpdatedBy) 
Values 
	(1,'Self',1,1),
	(2,'Company',1,1),
	(3,'Staff',1,1),
	(4,'StaffDependent',1,1);

Insert Into Department(DepartmentID,Name,isClinical,AddedBy,UpdatedBy) 
Values 
	(1,'Cardiology',1,1,1),
	(2,'Gynaecology',1,1,1),
	(3,'Medicine',1,1,1),
	(4,'Nephrology',1,1,1),
	(5,'Ophthalmology',1,1,1),
	(6,'Orthopedic',1,1,1),
	(7,'Paediatrics',1,1,1),
	(8,'Physiotherapy',1,1,1),
	(9,'Neurology',1,1,1),
	(10,'Surgery',1,1,1),
	(11,'Dental',1,1,1),
	(12,'ENT',1,1,1),
	(13,'Administration',0,1,1),
	(14,'Reception',0,1,1),
	(15,'Billing',0,1,1),
	(16,'Store',0,1,1),
	(17,'Account',0,1,1),
	(18,'Maintainance',0,1,1),
	(19,'Bio-Medical',0,1,1),
	(20,'Computer(IT)',0,1,1),
	(21,'Pathology',0,1,1),
	(22,'Radiology',0,1,1),
	(23,'Nursing',0,1,1),
	(24,'Pharmacy',0,1,1);

Insert Into Gender(GenderID,Name,AddedBy,UpdatedBy) Values (1,'Male',1,1);
Insert Into Gender(GenderID,Name,AddedBy,UpdatedBy) Values (2,'Female',1,1);

Insert Into InsuranceCompany(CompanyID,Name,AddedBy,UpdatedBy) 
Values 
	(1,'Star Health',1,1),
	(2,'Vidal Healthcare',1,1),
	(3,'Aditya Birla',1,1),
	(4,'HDFC Ergo',1,1),
	(5,'ICICI Lombard',1,1),
	(6,'The oriental Insurance company',1,1),
	(7,'Care Health Insurance',1,1);


Insert Into Nationality(NationalityID,Name,AddedBy,UpdatedBy) Values (1,'Indian',1,1);

Insert Into Relation(RelationID,Name,AddedBy,UpdatedBy) Values (1,'Self',1,1);
Insert Into Relation(RelationID,Name,AddedBy,UpdatedBy) Values (2,'Spouse',1,1);
Insert Into Relation(RelationID,Name,AddedBy,UpdatedBy) Values (3,'Child',1,1);
Insert Into Relation(RelationID,Name,AddedBy,UpdatedBy) Values (4,'Friend',1,1);
Insert Into Relation(RelationID,Name,AddedBy,UpdatedBy) Values (5,'Father',1,1);
Insert Into Relation(RelationID,Name,AddedBy,UpdatedBy) Values (6,'Mother',1,1);
Insert Into Relation(RelationID,Name,AddedBy,UpdatedBy) Values (7,'Son',1,1);
Insert Into Relation(RelationID,Name,AddedBy,UpdatedBy) Values (8,'Brother',1,1);
Insert Into Relation(RelationID,Name,AddedBy,UpdatedBy) Values (9,'Sister',1,1);
Insert Into Relation(RelationID,Name,AddedBy,UpdatedBy) Values (10,'Daughter',1,1);
Insert Into Relation(RelationID,Name,AddedBy,UpdatedBy) Values (11,'Sister In Law',1,1);
Insert Into Relation(RelationID,Name,AddedBy,UpdatedBy) Values (12,'Brother In Law',1,1);
Insert Into Relation(RelationID,Name,AddedBy,UpdatedBy) Values (13,'Grand Father',1,1);
Insert Into Relation(RelationID,Name,AddedBy,UpdatedBy) Values (14,'Grand Mother',1,1);


Insert Into ServiceCategory(ServiceCategoryId,Name,AddedBy,UpdatedBy) Values (1,'Cardiology',1,1);
Insert Into ServiceCategory(ServiceCategoryId,Name,AddedBy,UpdatedBy) Values (2,'Gynaecology',1,1);
Insert Into ServiceCategory(ServiceCategoryId,Name,AddedBy,UpdatedBy) Values (3,'Medicine',1,1);
Insert Into ServiceCategory(ServiceCategoryId,Name,AddedBy,UpdatedBy) Values (4,'Nephrology',1,1);
Insert Into ServiceCategory(ServiceCategoryId,Name,AddedBy,UpdatedBy) Values (5,'Ophthalmology',1,1);
Insert Into ServiceCategory(ServiceCategoryId,Name,AddedBy,UpdatedBy) Values (6,'Orthopedic',1,1);
Insert Into ServiceCategory(ServiceCategoryId,Name,AddedBy,UpdatedBy) Values (7,'Paediatrics',1,1);
Insert Into ServiceCategory(ServiceCategoryId,Name,AddedBy,UpdatedBy) Values (8,'Physiotherapy',1,1);
Insert Into ServiceCategory(ServiceCategoryId,Name,AddedBy,UpdatedBy) Values (9,'Neurology',1,1);
Insert Into ServiceCategory(ServiceCategoryId,Name,AddedBy,UpdatedBy) Values (10,'Surgery',1,1);
Insert Into ServiceCategory(ServiceCategoryId,Name,AddedBy,UpdatedBy) Values (11,'Dental',1,1);
Insert Into ServiceCategory(ServiceCategoryId,Name,AddedBy,UpdatedBy) Values (12,'ENT',1,1);
Insert Into ServiceCategory(ServiceCategoryId,Name,AddedBy,UpdatedBy) Values (13,'Pathology',1,1);
Insert Into ServiceCategory(ServiceCategoryId,Name,AddedBy,UpdatedBy) Values (14,'Radiology',1,1);
Insert Into ServiceCategory(ServiceCategoryId,Name,AddedBy,UpdatedBy) Values (15,'Nursing',1,1);

Insert Into Unit(UnitID,Name,AddedBy,UpdatedBy) Values (1,'Unit 1',1,1);
Insert Into Unit(UnitID,Name,AddedBy,UpdatedBy) Values (2,'Unit 2',1,1);
Insert Into Unit(UnitID,Name,AddedBy,UpdatedBy) Values (3,'Unit 3',1,1);
Insert Into Unit(UnitID,Name,AddedBy,UpdatedBy) Values (4,'Unit 4',1,1);
Insert Into Unit(UnitID,Name,AddedBy,UpdatedBy) Values (5,'Unit 5',1,1);

Insert Into Ward(WardID,Name,UnitId,AddedBy,UpdatedBy) Values (1,'General Ward',1,1,1);
Insert Into Ward(WardID,Name,UnitId,AddedBy,UpdatedBy) Values (2,'Male Ward',1,1,1);
Insert Into Ward(WardID,Name,UnitId,AddedBy,UpdatedBy) Values (3,'Female Ward',1,1,1);
Insert Into Ward(WardID,Name,UnitId,AddedBy,UpdatedBy) Values (4,'pediatric ward',1,1,1);
Insert Into Ward(WardID,Name,UnitId,AddedBy,UpdatedBy) Values (5,'Special Ward',1,1,1);
Insert Into Ward(WardID,Name,UnitId,AddedBy,UpdatedBy) Values (6,'Semi Special ward',1,1,1);
Insert Into Ward(WardID,Name,UnitId,AddedBy,UpdatedBy) Values (7,'Geneal Ward II',1,1,1);

Insert Into Room(RoomId,Name,Wardid,AddedBy,UpdatedBy) Values (1,'Room 1',5,1,1);
Insert Into Room(RoomId,Name,Wardid,AddedBy,UpdatedBy) Values (2,'Room 2',5,1,1);
Insert Into Room(RoomId,Name,Wardid,AddedBy,UpdatedBy) Values (3,'Room 3',5,1,1);
Insert Into Room(RoomId,Name,Wardid,AddedBy,UpdatedBy) Values (4,'Room 4',5,1,1);
Insert Into Room(RoomId,Name,Wardid,AddedBy,UpdatedBy) Values (5,'Room 5',5,1,1);
Insert Into Room(RoomId,Name,Wardid,AddedBy,UpdatedBy) Values (6,'Room 6',5,1,1);
Insert Into Room(RoomId,Name,Wardid,AddedBy,UpdatedBy) Values (7,'Room 7',5,1,1);
Insert Into Room(RoomId,Name,Wardid,AddedBy,UpdatedBy) Values (8,'Room 8',6,1,1);
Insert Into Room(RoomId,Name,Wardid,AddedBy,UpdatedBy) Values (9,'Room 9',6,1,1);
Insert Into Room(RoomId,Name,Wardid,AddedBy,UpdatedBy) Values (10,'Room 10',6,1,1);
Insert Into Room(RoomId,Name,Wardid,AddedBy,UpdatedBy) Values (11,'Room 11',7,1,1);
Insert Into Room(RoomId,Name,Wardid,AddedBy,UpdatedBy) Values (12,'Room 12',7,1,1);
Insert Into Room(RoomId,Name,Wardid,AddedBy,UpdatedBy) Values (13,'Room 13',7,1,1);

Insert Into Country(CountryID,Name,NationalityId,AddedBy,UpdatedBy) Values (1,'India',1,1,1);

Insert Into State(Name,StateID,AddedBy,UpdatedBy) Values ('maharashtra',1,1,1);

Insert Into City(Name,CityID,StateID,AddedBy,UpdatedBy) Values ('Pune',1,1,1,1);
Insert Into City(Name,CityID,StateID,AddedBy,UpdatedBy) Values ('Nagpur',2,1,1,1);
Insert Into City(Name,CityID,StateID,AddedBy,UpdatedBy) Values ('Mumbai',3,1,1,1);
Insert Into City(Name,CityID,StateID,AddedBy,UpdatedBy) Values ('Nasik',4,1,1,1);
Insert Into City(Name,CityID,StateID,AddedBy,UpdatedBy) Values ('Aurangabad',5,1,1,1);

Insert Into ServiceType(ServiceTypeID,Name,AddedBy,UpdatedBy) Values (1,'OPD',1,1);
Insert Into ServiceType(ServiceTypeID,Name,AddedBy,UpdatedBy) Values (2,'IPD-General',1,1);
Insert Into ServiceType(ServiceTypeID,Name,AddedBy,UpdatedBy) Values (3,'IPD-Special',1,1);

-- Bed Input 

DELIMITER $$

CREATE PROCEDURE insert_beds()
BEGIN
    DECLARE i INT DEFAULT 1;

    -- First loop: Insert into Bed for WardId = 1
    WHILE i <= 20 DO
        INSERT INTO Bed(Name, WardId, RoomId, AddedBy, UpdatedBy)
        VALUES (CONCAT('Bed-', i), 1, NULL, 1, 1);
        SET i = i + 1;
    END WHILE;

    -- Reset counter for next loop
    SET i = 1;

    -- Second loop: Insert into Bed for WardId = 2
    WHILE i <= 20 DO
        INSERT INTO Bed(Name, WardId, RoomId, AddedBy, UpdatedBy)
        VALUES (CONCAT('Bed-', i), 2, NULL, 1, 1);
        SET i = i + 1;
    END WHILE;

    -- Reset counter for next loop
    SET i = 1;

    -- Third loop: Insert into Bed for RoomId = 1, WardId = NULL
    WHILE i <= 5 DO
        INSERT INTO Bed(Name, WardId, RoomId, AddedBy, UpdatedBy)
        VALUES (CONCAT('Bed-', i), NULL, 1, 1, 1);
        SET i = i + 1;
    END WHILE;

    -- Reset counter for next loop
    SET i = 1;

    -- Fourth loop: Insert into Bed for RoomId = 2, WardId = NULL
    WHILE i <= 5 DO
        INSERT INTO Bed(Name, WardId, RoomId, AddedBy, UpdatedBy)
        VALUES (CONCAT('Bed-', i), NULL, 2, 1, 1);
        SET i = i + 1;
    END WHILE;

END$$

DELIMITER ;

CALL insert_beds;

-- Staff Data 

DELIMITER $$

CREATE PROCEDURE insert_staff_for_dept()
BEGIN
    -- Declare variables
    DECLARE MinDeptID INT;
    DECLARE MaxDeptID INT;
    DECLARE i INT;

    -- Initialize variables
    SET MinDeptID = (SELECT MIN(DepartmentId) FROM Department WHERE IsClinical = 0);
    SET MaxDeptID = (SELECT MAX(DepartmentId) FROM Department WHERE IsClinical = 0);

    -- Outer loop
    WHILE MinDeptID <= MaxDeptID DO
        SET i = 1;

        -- Inner loop: Insert 10 rows for each department
        WHILE i <= 10 DO
            INSERT INTO Staff (
                DepartmentID,
                FirstName,
                MiddleName,
                LastName,
                GenderID,
                DateOfBirth,
                ContactNo1,
                ContactNo2,
                Email,
                AddressLine1,
                AddressLine2,
                Pincode,
                CityID,
                AddedBy,
                UpdatedBy
            )
            VALUES (
                MinDeptID,
                CONCAT('SFname-', MinDeptID, '-', i),
                CONCAT('SMname-', MinDeptID, '-', i),
                CONCAT('SLname-', MinDeptID, '-', i),
                (SELECT GenderID FROM Gender ORDER BY RAND() LIMIT 1),
                CURDATE() - INTERVAL FLOOR(RAND() * (245 - 10) + 10) DAY,
                '1234567890',
                '1234567890',
                CONCAT('SFname', MinDeptID, '-', i, '@gmail.com'),
                'Address Line 1',
                'Address Line 2',
                '123456',
                (SELECT CityId FROM City ORDER BY RAND() LIMIT 1),
                1,
                1
            );

            -- Increment inner counter
            SET i = i + 1;
        END WHILE;

        -- Increment outer counter
        SET MinDeptID = MinDeptID + 1;
    END WHILE;

END $$

DELIMITER ;
  
  CALL insert_staff_for_dept;
  
 -- Doctor Data Insert
 
DELIMITER $$

CREATE PROCEDURE Doctor_Data_Insert()
BEGIN
    -- Declare variables
    DECLARE MinDeptID INT;
    DECLARE MaxDeptID INT;
    DECLARE i INT;
    
    -- Assign values to the declared variables
    SET MinDeptID = (SELECT MIN(DepartmentId) FROM Department WHERE IsClinical = 1);
    SET MaxDeptID = (SELECT MAX(DepartmentId) FROM Department WHERE IsClinical = 1);

    -- Loop over departments
    WHILE MinDeptID <= MaxDeptID DO
        SET i = 1;
    
        WHILE i <= 3 DO -- looping 3 doctors in each 
        
            -- Insert a doctor for each department
            INSERT INTO Doctor
                       (DepartmentID, FirstName, MiddleName, LastName, Qualification, GenderID, DateOfBirth, ContactNo1, 
                        ContactNo2, Email, AddressLine1, AddressLine2, Pincode, CityID, AddedBy, UpdatedBy)
            VALUES 
                       (MinDeptID,
                       CONCAT('Dr.DFname-', MinDeptID, '-', i),
                       CONCAT('DMname-', MinDeptID, '-', i),
                       CONCAT('DLname-', MinDeptID, '-', i),
                       'MBBS, MD',
                       (SELECT GenderID FROM Gender ORDER BY RAND() LIMIT 1),
                       CURDATE() - INTERVAL FLOOR(RAND() * (245-10) + 10) DAY,
                       '1234567890',
                       '1234567890',
                       CONCAT('DFname', MinDeptID, i, '@gmail.com'),
                       'Address Line 1',
                       'Address Line 2',
                       '123456',
                       (SELECT CityId FROM City ORDER BY RAND() LIMIT 1),
                       1,
                       1);

            -- Increment inner loop variable
            SET i = i + 1;
        END WHILE;

        -- Increment department loop variable
        SET MinDeptID = MinDeptID + 1;
    END WHILE;

END $$

DELIMITER ;

CALL Doctor_Data_Insert;

-- Service OPD
-- Print 'Service Data Insert'

-- Create a temporary table
CREATE TEMPORARY TABLE Temp (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    ServiceName VARCHAR(200) NOT NULL
);

-- Insert values into the temporary table
INSERT INTO Temp (ServiceName)
VALUES 
    ('Consulatation'),
    ('Follow-up Consulatation'),
    ('Procedure'),
    ('Operation Charges'),
    ('Anesthesist Charges'),
    ('OT Charges');

-- Create a stored procedure to perform the operation
DELIMITER $$

CREATE PROCEDURE insert_services()
BEGIN
    -- Declare variables
    DECLARE i INT;
    DECLARE ServiceName VARCHAR(200);
    DECLARE MinDeptID INT;
    DECLARE MaxDeptID INT;
    DECLARE temp_min_id INT;
    DECLARE temp_max_id INT;
    
    -- Assign the minimum and maximum ID values from the Temp table
    SELECT MIN(ID), MAX(ID) INTO temp_min_id, temp_max_id FROM Temp;

    -- Set the initial value for the loop
    SET i = temp_min_id;

    -- Main loop to iterate over Temp table
    WHILE i <= temp_max_id DO
        -- Get the ServiceName for the current row
        SELECT ServiceName INTO ServiceName FROM Temp WHERE ID = i;

        -- Get the range of ServiceCategoryId excluding specific categories
        SELECT MIN(ServiceCategoryId), MAX(ServiceCategoryId)
        INTO MinDeptID, MaxDeptID
        FROM ServiceCategory 
        WHERE Name NOT IN ('Pathology', 'Radiology', 'Nursing');

        -- Internal loop to iterate over ServiceCategoryId
        WHILE MinDeptID <= MaxDeptID DO
            -- Insert data into the Service table
            INSERT INTO Service (Name, ServiceCategoryId, Rate, ServiceTypeId, CompanyId, AddedBy, UpdatedBy)
            VALUES (ServiceName, MinDeptID, 200, 1, NULL, 1, 1);
            
            -- Increment the ServiceCategoryId
            SET MinDeptID = MinDeptID + 1;
        END WHILE;

        -- Increment the Temp table ID
        SET i = i + 1;
    END WHILE;
    
END$$

DELIMITER ;

-- Call the stored procedure to execute the insertions
CALL insert_services();

-- Service IPD 
  
Truncate Table temp;

-- Create the Temp table (if it doesn't already exist)
CREATE TEMPORARY TABLE Temp (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    ServiceName VARCHAR(200)
);

-- Insert values into the Temp table
INSERT INTO Temp (ServiceName)
VALUES 
    ('Bed Charges'),
    ('Nursing Charges'),
    ('IPD Visit Charges'),
    ('Operation Charges'),
    ('Anesthesist Charges'),
    ('OT Charges'),
    ('O2 Charges'),
    ('Procedure');


-- Create the stored procedure for IPD General
DELIMITER $$

CREATE PROCEDURE insert_services_IPDGeneral()
BEGIN
    -- Declare variables
    DECLARE i INT;
    DECLARE ServiceName VARCHAR(200);
    DECLARE MinDeptID INT;
    DECLARE MaxDeptID INT;
    DECLARE temp_min_id INT;
    DECLARE temp_max_id INT;
    
    -- Assign the minimum and maximum ID values from the Temp table
    SELECT MIN(ID), MAX(ID) INTO temp_min_id, temp_max_id FROM Temp;

    -- Set the initial value for the loop
    SET i = temp_min_id;

    -- Main loop to iterate over the Temp table
    WHILE i <= temp_max_id DO
        -- Get the ServiceName for the current row
        SELECT ServiceName INTO ServiceName FROM Temp WHERE ID = i;

        -- Get the range of ServiceCategoryId excluding specific categories
        SELECT MIN(ServiceCategoryId), MAX(ServiceCategoryId)
        INTO MinDeptID, MaxDeptID
        FROM ServiceCategory 
        WHERE Name NOT IN ('Pathology', 'Radiology', 'Nursing');

        -- Internal loop to iterate over ServiceCategoryId
        WHILE MinDeptID <= MaxDeptID DO
            -- Insert into Service for ServiceTypeId = 2 (IPD General)
            INSERT INTO Service (Name, ServiceCategoryId, Rate, ServiceTypeId, CompanyId, AddedBy, UpdatedBy)
            VALUES (ServiceName, MinDeptID, 400, 2, NULL, 1, 1);

            -- Increment the ServiceCategoryId
            SET MinDeptID = MinDeptID + 1;
        END WHILE;

        -- Increment the Temp table ID
        SET i = i + 1;
    END WHILE;

END$$

DELIMITER ;

-- Call the stored procedure to insert values from the Temp table into the Service table
CALL insert_services_IPDGeneral();
select * from service;
--------------------------------------------
-- Create the stored procedure
DELIMITER $$

CREATE PROCEDURE insert_services_IPDSpecial()
BEGIN
    -- Declare variables
    DECLARE i INT;
    DECLARE ServiceName VARCHAR(200);
    DECLARE MinDeptID INT;
    DECLARE MaxDeptID INT;
    DECLARE temp_min_id INT;
    DECLARE temp_max_id INT;
    
    -- Assign the minimum and maximum ID values from the Temp table
    SELECT MIN(ID), MAX(ID) INTO temp_min_id, temp_max_id FROM Temp;

    -- Set the initial value for the loop
    SET i = temp_min_id;

    -- Main loop to iterate over the Temp table
    WHILE i <= temp_max_id DO
        -- Get the ServiceName for the current row
        SELECT ServiceName INTO ServiceName FROM Temp WHERE ID = i;

        -- Get the range of ServiceCategoryId excluding specific categories
        SELECT MIN(ServiceCategoryId), MAX(ServiceCategoryId)
        INTO MinDeptID, MaxDeptID
        FROM ServiceCategory 
        WHERE Name NOT IN ('Pathology', 'Radiology', 'Nursing');

        -- Internal loop to iterate over ServiceCategoryId
        WHILE MinDeptID <= MaxDeptID DO
            -- Insert into Service for ServiceTypeId = 3 (IPD Special)
            INSERT INTO Service (Name, ServiceCategoryId, Rate, ServiceTypeId, CompanyId, AddedBy, UpdatedBy)
            VALUES (ServiceName, MinDeptID, 600, 3, NULL, 1, 1);

            -- Increment the ServiceCategoryId
            SET MinDeptID = MinDeptID + 1;
        END WHILE;

        -- Increment the Temp table ID
        SET i = i + 1;
    END WHILE;

END$$

DELIMITER ;

CALL insert_services_IPDSpecial;

-- Service Pathology Test

Truncate Table temp;

-- Insert values into the Temp table
INSERT INTO Temp (ServiceName)
VALUES 
    ('SGOT (AST)'),
    ('SGPT (ALT)'),
    ('ALBUMIN'),
    ('WIDAL'),
    ('BILLIRUBIN TOTAL'),
    ('BILLIRUBIN DIRECT'),
    ('BLOOD GROUP'),
    ('PERIPHERAL SMEAR'),
    ('RETICULOCYTE COUNT'),
    ('TOTAL WBC COUNT'),
    ('CBC'),
    ('ZINC (SERUM / URINE)'),
    ('VITAMIN D 25 HYDROXY'),
    ('VITAMIN A'),
    ('UROBILINOGEN (URINE)'),
    ('BILIRUBIN (URINE)');

-- Create the stored procedure
DELIMITER $$

CREATE PROCEDURE insert_pathology_services()
BEGIN
    -- Declare variables
    DECLARE i INT;
    DECLARE ServiceName VARCHAR(200);
    DECLARE ServiceCategoryId INT;
    DECLARE temp_min_id INT;
    DECLARE temp_max_id INT;
    
    -- Assign the minimum and maximum ID values from the Temp table
    SELECT MIN(ID), MAX(ID) INTO temp_min_id, temp_max_id FROM Temp;

    -- Set the initial value for the loop
    SET i = temp_min_id;

    -- Main loop to iterate over the Temp table
    WHILE i <= temp_max_id DO
        -- Get the ServiceName for the current row
        SELECT ServiceName INTO ServiceName FROM Temp WHERE ID = i;

        -- Get the ServiceCategoryId for 'Pathology'
        SELECT ServiceCategoryId INTO ServiceCategoryId FROM ServiceCategory WHERE Name = 'Pathology';

        -- Insert into Service table for ServiceTypeId = 1 (OPD)
        INSERT INTO Service (Name, ServiceCategoryId, Rate, ServiceTypeId, CompanyId, AddedBy, UpdatedBy)
        VALUES (ServiceName, ServiceCategoryId, 300, 1, NULL, 1, 1);

        -- Insert into Service table for ServiceTypeId = 2 (IPD General)
        INSERT INTO Service (Name, ServiceCategoryId, Rate, ServiceTypeId, CompanyId, AddedBy, UpdatedBy)
        VALUES (ServiceName, ServiceCategoryId, 400, 2, NULL, 1, 1);

        -- Insert into Service table for ServiceTypeId = 3 (IPD Special)
        INSERT INTO Service (Name, ServiceCategoryId, Rate, ServiceTypeId, CompanyId, AddedBy, UpdatedBy)
        VALUES (ServiceName, ServiceCategoryId, 500, 3, NULL, 1, 1);

        -- Increment the Temp table ID
        SET i = i + 1;
    END WHILE;

END$$

DELIMITER ;

-- Call the stored procedure to insert the values from Temp into the Service table
CALL insert_pathology_services();

-- Service Radiology Test
 
Truncate Table temp; 

-- Insert values into the Temp table
INSERT INTO Temp (ServiceName)
VALUES 
    ('X-RAY'),
    ('CT Scan'),
    ('Sonography');

select * from service; 

-- Create the stored procedure
DELIMITER $$

CREATE PROCEDURE insert_radiology_services()
BEGIN
    -- Declare variables
    DECLARE i INT;
    DECLARE ServiceName VARCHAR(200);
    DECLARE ServiceCategoryId INT;
    DECLARE temp_min_id INT;
    DECLARE temp_max_id INT;
    
    -- Assign the minimum and maximum ID values from the Temp table
    SELECT MIN(ID), MAX(ID) INTO temp_min_id, temp_max_id FROM Temp;

    -- Set the initial value for the loop
    SET i = temp_min_id;

    -- Main loop to iterate over the Temp table
    WHILE i <= temp_max_id DO
        -- Get the ServiceName for the current row
        SELECT ServiceName INTO ServiceName FROM Temp WHERE ID = i;

        -- Get the ServiceCategoryId for 'Radiology'
        SELECT ServiceCategoryId INTO ServiceCategoryId FROM ServiceCategory WHERE Name = 'Radiology';

        -- Insert into Service table for ServiceTypeId = 1 (OPD)
        INSERT INTO Service (Name, ServiceCategoryId, Rate, ServiceTypeId, CompanyId, AddedBy, UpdatedBy)
        VALUES (ServiceName, ServiceCategoryId, 300, 1, NULL, 1, 1);

        -- Insert into Service table for ServiceTypeId = 2 (IPD General)
        INSERT INTO Service (Name, ServiceCategoryId, Rate, ServiceTypeId, CompanyId, AddedBy, UpdatedBy)
        VALUES (ServiceName, ServiceCategoryId, 400, 2, NULL, 1, 1);

        -- Insert into Service table for ServiceTypeId = 3 (IPD Special)
        INSERT INTO Service (Name, ServiceCategoryId, Rate, ServiceTypeId, CompanyId, AddedBy, UpdatedBy)
        VALUES (ServiceName, ServiceCategoryId, 500, 3, NULL, 1, 1);

        -- Increment the Temp table ID
        SET i = i + 1;
    END WHILE;

END$$

DELIMITER ;

-- Call the stored procedure to insert the values from Temp into the Service table
CALL insert_radiology_services();

 
-- ApplicationFunctionality

Insert Into ApplicationFunctionality(Name,Level,AddedBy,UpdatedBy) Values ('Masters',0,1,1);
Insert Into ApplicationFunctionality(Name,Level,AddedBy,UpdatedBy) Values ('IPD Billing',0,1,1);
Insert Into ApplicationFunctionality(Name,Level,AddedBy,UpdatedBy) Values ('OPD Billing',0,1,1);
Insert Into ApplicationFunctionality(Name,Level,AddedBy,UpdatedBy) Values ('Pathology',0,1,1);
Insert Into ApplicationFunctionality(Name,Level,AddedBy,UpdatedBy) Values ('Radiology',0,1,1);
Insert Into ApplicationFunctionality(Name,Level,AddedBy,UpdatedBy) Values ('Administartion',0,1,1);

-- USER
Insert Into User(StaffID,AddedBy,UpdatedBy) Values (1,1,1);
Insert Into User(StaffID,AddedBy,UpdatedBy) Values (21,1,1);
Insert Into User(StaffID,AddedBy,UpdatedBy) Values (22,1,1);

-- Admin User

Insert Into AccessRights(UserID,FunctionalityID,AddedBy,UpdatedBy) Values (1,1,1,1);
Insert Into AccessRights(UserID,FunctionalityID,AddedBy,UpdatedBy) Values (1,2,1,1);
Insert Into AccessRights(UserID,FunctionalityID,AddedBy,UpdatedBy) Values (1,3,1,1);
Insert Into AccessRights(UserID,FunctionalityID,AddedBy,UpdatedBy) Values (1,4,1,1);
Insert Into AccessRights(UserID,FunctionalityID,AddedBy,UpdatedBy) Values (1,5,1,1);
Insert Into AccessRights(UserID,FunctionalityID,AddedBy,UpdatedBy) Values (1,6,1,1);

-- Billing User

Insert Into AccessRights(UserID,FunctionalityID,AddedBy,UpdatedBy) Values (2,2,1,1);
Insert Into AccessRights(UserID,FunctionalityID,AddedBy,UpdatedBy) Values (2,3,1,1);
Insert Into AccessRights(UserID,FunctionalityID,AddedBy,UpdatedBy) Values (3,2,1,1);
Insert Into AccessRights(UserID,FunctionalityID,AddedBy,UpdatedBy) Values (3,3,1,1);

----------------------------------- work from here ------------------------------------------------------------------
-- Patient

-- 'Patient Data Insert'

-- Create a stored procedure for inserting data
DELIMITER $$

CREATE PROCEDURE InsertPatient()
BEGIN
    -- Declare variables
    DECLARE i INT DEFAULT 1;
    DECLARE GenderID INT;
    DECLARE CityID INT;
    DECLARE RandomDate DATE;

    -- Loop to insert data
    WHILE i <= 200 DO

        -- Calculate a random date
        SET RandomDate = CURDATE() - INTERVAL (FLOOR(RAND() * (245 - 10) + 10)) DAY;

        -- Insert into the Patient table
        INSERT INTO Patient(FirstName, MiddleName, LastName, GenderID, DateOfBirth, ContactNo1, ContactNo2, Email, AddressLine1, AddressLine2, Pincode, CityID, AddedBy, UpdatedBy)
        VALUES
            (
                CONCAT('PFname_', i),
                CONCAT('PMname_', i),
                CONCAT('PLname_', i),
                (ROUND(RAND()) + 1),
                RandomDate,
                '1234567890',
                '1234567890',
                CONCAT('PFname', i, '@gmail.com'),
                'Address Line 1',
                'Address Line 2',
                '123456',
                (FLOOR(1 + RAND() * 5)),
                1,
                1
            );

        -- Increment the loop counter
        SET i = i + 1;
    END WHILE;
END$$

DELIMITER ;

-- Call the stored procedure to execute the insertion
CALL InsertPatient();

select * from Patient;

-- Visit
-- Print 'Visit Data Insert'

DELIMITER $$

CREATE PROCEDURE Visit_Data()
BEGIN
    -- Declare the variable
    DECLARE i INT DEFAULT 1;

    -- Start the loop
    WHILE i >= 5000 DO

        -- Insert into the Visit table
        INSERT INTO Visit
           (PatientCategoryID
           ,PatientId
           ,DoctorID
           ,UnitId
           ,VisitDate
           ,OPDNumber         
           ,AddedBy          
           ,UpdatedBy)
        VALUES
           ((SELECT PatientCategoryId FROM PatientCategory ORDER BY RAND() LIMIT 1)
           ,(SELECT PatientId FROM Patient ORDER BY RAND() LIMIT 1)
           ,(SELECT DoctorID FROM Doctor ORDER BY RAND() LIMIT 1)
           ,(SELECT UnitId FROM Unit ORDER BY RAND() LIMIT 1)
           ,NOW() - INTERVAL FLOOR(10 + (RAND() * (245 - 10))) DAY
           ,i
           ,1
           ,1);

        -- Increment the counter
        SET i = i + 1;

    END WHILE;
END$$

DELIMITER ;

Call Visit_Data;
 
 -- OPD First Record Per Visit

DELIMITER $$
CREATE PROCEDURE OPDVisit()

BEGIN
    -- Declare the variables
    DECLARE MinVisitId INT DEFAULT (SELECT MIN(VisitId) FROM Visit);
    DECLARE MaxVisitId INT DEFAULT (SELECT MAX(VisitId) FROM Visit);

    -- Start the loop
    WHILE MinVisitId <= MaxVisitId DO

        -- Insert into the Charge table
        INSERT INTO Charge
           (VisitId
           ,AdmissionId
           ,ServiceId
           ,Rate
           ,Amount
           ,Quantity
           ,AddedBy
           ,UpdatedBy)
        VALUES
           (MinVisitId
           ,NULL
           ,(SELECT ServiceId FROM Service WHERE ServiceTypeId = 1 ORDER BY RAND() LIMIT 1)
           ,0
           ,0
           ,1
           ,1
           ,1);

        -- Increment the MinVisitId
        SET MinVisitId = MinVisitId + 1;

    END WHILE;
END$$

DELIMITER ; 

CALL OPDVisit; 

-- Second record for Visit --2/3 Services for some visit

DELIMITER $$
CREATE PROCEDURE otherVisit()

BEGIN
    -- Declare the variable
    DECLARE i INT DEFAULT 1;

    -- Start the loop
    WHILE i >= 1500 DO

        -- Insert into the Charge table
        INSERT INTO Charge
           (VisitId
           ,AdmissionId
           ,ServiceId
           ,Rate
           ,Amount
           ,Quantity
           ,AddedBy
           ,UpdatedBy)
        VALUES
           ((SELECT VisitId FROM Visit ORDER BY RAND() LIMIT 1)
           ,NULL
           ,(SELECT ServiceId FROM Service WHERE ServiceTypeId = 1 ORDER BY RAND() LIMIT 1)
           ,0
           ,0
           ,1
           ,1
           ,1);

        -- Increment the counter
        SET i = i + 1;

    END WHILE;
END$$

DELIMITER ; 

CALL otherVisit;
 
UPDATE Charge C
JOIN Service S ON C.ServiceId = S.ServiceId
SET C.Rate = S.Rate;

Update Charge Set Amount=Rate*Quantity;

-- 10% conession applied
Update Charge Set Concession=(Amount*10)/100;

select * from charge; 
-- OPD Bill 

INSERT INTO Bill
	(VisitId
	,AdmissionId
	,TotalAmount
	,Concession
	,AddedBy          
	,UpdatedBy)
SELECT 
    VisitId,
    NULL AS AdmissionId,  -- Directly use NULL for AdmissionId
    SUM(Amount) AS TotalAmount,
    SUM(Concession) AS Concession,
    1 AS AddedBy,
    1 AS UpdatedBy
FROM Charge
GROUP BY VisitId;

-- 10% conession applied

Update Bill Set Concession=(TotalAmount*10)/100;
Update Bill Set FinalBillAmount=TotalAmount-Concession;

-- Admission

DELIMITER $$

CREATE procedure Admissions()

BEGIN
    -- Declare the variable
    DECLARE i INT DEFAULT 1;

    -- Start the loop
    WHILE i >= 10000 DO

        -- Insert into the Admission table
        INSERT INTO Admission
           (PatientCategoryID
           ,PatientId
           ,UnitId
           ,DoctorID
           ,AdmissionDate
           ,IPDNumber
           ,RelativeName
           ,RelationId
           ,BedId
           ,CompanyId
           ,IsMLC
           ,AddedBy
           ,UpdatedBy)
        VALUES
           ((SELECT PatientCategoryId FROM PatientCategory ORDER BY RAND() LIMIT 1)
           ,(SELECT PatientId FROM Patient ORDER BY RAND() LIMIT 1)
           ,(SELECT UnitId FROM Unit ORDER BY RAND() LIMIT 1)
           ,(SELECT DoctorID FROM Doctor ORDER BY RAND() LIMIT 1)
           ,NOW() - INTERVAL FLOOR(10 + (RAND() * (245 - 10))) DAY
           ,i
           ,CONCAT('R Name-', i)
           ,(SELECT RelationID FROM Relation ORDER BY RAND() LIMIT 1)
           ,(SELECT BedId FROM Bed ORDER BY RAND() LIMIT 1)
           ,(SELECT CompanyId FROM InsuranceCompany ORDER BY RAND() LIMIT 1)
           ,0
           ,1
           ,1);

        -- Increment the counter
        SET i = i + 1;

    END WHILE;
END$$

DELIMITER ; 

CALL Admissions;

-- IPD -First Record Per Admission
DELIMITER $$
CREATE procedure FirstAdmission()

BEGIN
    -- Declare variables
    DECLARE MinAdmitId INT DEFAULT (SELECT MIN(AdmissionId) FROM Admission);
    DECLARE MaxAdmitId INT DEFAULT (SELECT MAX(AdmissionId) FROM Admission);

    -- Start the loop
    WHILE MinAdmitId <= MaxAdmitId DO

        -- Insert into the Charge table
        INSERT INTO Charge
           (VisitId
           ,AdmissionId
           ,ServiceId
           ,Rate
           ,Amount
           ,Quantity
           ,AddedBy
           ,UpdatedBy)
        VALUES
           (NULL
           ,MinAdmitId
           ,(SELECT ServiceId FROM Service WHERE ServiceTypeId IN (2, 3) ORDER BY RAND() LIMIT 1)
           ,0
           ,0
           ,1
           ,1
           ,1);

        -- Increment the MinAdmitId
        SET MinAdmitId = MinAdmitId + 1;

    END WHILE;
END$$

DELIMITER ; 

CALL FirstAdmission;
 
-- IPD -Second Record Per Admission 

DELIMITER $$

CREATE PROCEDURE SecondAdmission()
BEGIN
    -- Declare the variable
    DECLARE i INT DEFAULT 1;

    -- Start the loop
    WHILE i <= 500 DO

        -- Insert into the Charge table
        INSERT INTO Charge
           (VisitId
           ,AdmissionId
           ,ServiceId
           ,Rate
           ,Amount
           ,Quantity
           ,AddedBy
           ,UpdatedBy)
        VALUES
           (NULL
           ,(SELECT AdmissionId FROM Admission ORDER BY RAND() LIMIT 1)
           ,(SELECT ServiceId FROM Service WHERE ServiceTypeId IN (2, 3) ORDER BY RAND() LIMIT 1)
           ,0
           ,0
           ,1
           ,1
           ,1);

        -- Increment the counter
        SET i = i + 1;

		END WHILE;
    END$$
    
    DELIMITER ; 

CALL SecondAdmission;

    -- Update the Rate in Charge based on the Service table
    
    UPDATE Charge C
    JOIN Service S ON C.ServiceId = S.ServiceId
    SET C.Rate = S.Rate
    WHERE C.VisitId IS NULL;

    -- Update the Amount column by multiplying Rate with Quantity
    UPDATE Charge
    SET Amount = Rate * Quantity
    WHERE VisitId IS NULL;

    -- Update the Concession column as 10% of the Amount
    UPDATE Charge
    SET Concession = (Amount * 10) / 100
    WHERE VisitId IS NULL;

-- Create a stored procedure to insert random AdmissionId values
DELIMITER //

CREATE PROCEDURE InsertRandomAdmissionIds(numRows INT)
BEGIN
    DECLARE i INT DEFAULT 1;
    DECLARE randomId INT;

    WHILE i <= numRows DO
        -- Generate a random number between 1 and 2000
        SET randomId = FLOOR(1 + (RAND() * 2000));

        -- Insert the random number into the Charge table
        INSERT INTO Charge (AdmissionId)
        VALUES (randomId);

        -- Increment the loop counter
        SET i = i + 1;
    END WHILE;
END //

DELIMITER ;

-- Call the procedure to insert, for example, 1000 rows with random AdmissionId values
CALL InsertRandomAdmissionIds(1000);

select * from charge;

INSERT INTO Charge (Visitid)
SELECT VisitId FROM Visit ORDER BY RAND() LIMIT 1;

-- Bill 
-- Insert into Bill table

INSERT INTO Bill
    (VisitId, AdmissionId, TotalAmount, Concession, AddedBy, UpdatedBy)
SELECT 
    NULL AS VisitId,
    AdmissionId,
    SUM(Amount) AS TotalAmount,
    SUM(Concession) AS Concession,
    1 AS AddedBy,
    1 AS UpdatedBy
FROM Charge
WHERE AdmissionId IS NOT NULL
GROUP BY AdmissionId
ORDER BY AdmissionId;

-- Update FinalBillAmount in Bill table
UPDATE Bill
SET FinalBillAmount = TotalAmount - Concession
WHERE VisitId IS NULL;


-- Discharge 

INSERT INTO Discharge
    (AdmissionId, DoctorId, DischargeDate, AddedBy, UpdatedBy)
SELECT 
    AdmissionId,
    DoctorId,
    DATE_ADD(AdmissionDate, INTERVAL FLOOR(RAND() * (10 - 5) + 5) DAY) AS DischargeDate,
    1 AS AddedBy,
    1 AS UpdatedBy
FROM Admission;


INSERT INTO Prescription (VisitId, Path, AddedBy, UpdatedBy)
VALUES (2, '\\\\RecordRoomServer\\Patint\\1\\OPD\\2\\Prescription_1.jpg', 1, 1);

INSERT INTO ClinicalNote (AdmissionId, Path, AddedBy, UpdatedBy)
VALUES (5, '\\\\RecordRoomServer\\Patint\\3\\IPD\\5\\Note_5154_1.jpg', 1, 1);


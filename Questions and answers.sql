  -- Question 1 : Fetch the Information of VisitID and DoctorID of Patient Category ID = 3

SELECT 
    VisitID, DoctorID, PatientCategoryID
FROM
    Visit
WHERE
    patientcategoryID = 3;

-- Question 2 : Check the admissions and there Bed Number and Ward 

SELECT 
    admission.admissionid,
    bed.name AS bed_name,
    ward.name AS Ward_Name
FROM
    admission
        INNER JOIN
    bed ON admission.bedid = bed.bedid
        INNER JOIN
    ward ON bed.wardid = ward.wardid; 

-- Question 3 : Patient Visited to Hospital 

SELECT 
	V.VisitID,
    V.OPDNumber,
    VisitDate,
    P.FirstName AS PatientName,
    D.FirstName AS DoctorName,
    U.Name AS UnitName
FROM
    Visit V
        INNER JOIN
    PatientCategory PC ON V.PatientCategoryID = PC.PatientCategoryID
        INNER JOIN
    Patient P ON V.PatientId = P.PatientID
        INNER JOIN
    Doctor D ON V.DoctorID = D.DoctorID
        INNER JOIN
    Unit U ON V.UnitId = u.UnitID;

-- Question 4 : Patient Admitted in Hospital 

SELECT 
    A.AdmissionDate,
    A.IPDNumber,
    PC.Name AS PatientCategory,
    P.FirstName  AS PatientName,
    D.FirstName AS DoctorName,
    U.Name AS UnitName,
    DS.DischargeDate
FROM
    Admission A
        INNER JOIN
    PatientCategory PC ON A.PatientCategoryID = PC.PatientCategoryID
        INNER JOIN
    Patient P ON A.PatientId = P.PatientID
        INNER JOIN
    Doctor D ON A.DoctorID = D.DoctorID
        INNER JOIN
    Unit U ON A.UnitId = u.UnitID
        INNER JOIN
    Discharge DS ON A.AdmissionId = DS.AdmissionId;

-- Question 5 : Number of Patient visited to Medicine Dept in Sep 2024 

SELECT 
    COUNT(Patientid) AS NumberofPatients
FROM
    Visit V
        INNER JOIN
    Doctor d ON v.DoctorID = D.DoctorID
        LEFT JOIN
    Department dp ON d.DepartmentID = dp.DepartmentID
WHERE
    YEAR(VisitDate) = 2024
        AND MONTH(VisitDate) = 09
        AND dp.Name = 'Medicine';

-- Question 6 : List the Patient who visited as well as Admitted in 'Orthopedic' OR 'Dental' Dept for Year 2024

SELECT 
    V.PatientId, A.PatientId, dp.Name
FROM
    Visit V
        INNER JOIN
    Admission A ON V.PatientId = A.PatientId
        INNER JOIN
    Doctor d ON v.DoctorID = D.DoctorID
        INNER JOIN
    Department dp ON d.DepartmentID = dp.DepartmentID
        INNER JOIN
    Doctor d1 ON A.DoctorID = d1.DoctorID
        INNER JOIN
    Department dp1 ON d1.DepartmentID = dp1.DepartmentID
WHERE
    YEAR(VisitDate) = 2024
        AND dp.Name = 'Orthopedic' OR 'Dental'
        AND YEAR(AdmissionDate) = 2024
        AND dp1.Name = 'Orthopedic' OR 'Dental';

-- Question 7 : Yearwise & Departmentwise visited Patient

SELECT 
    YEAR(VisitDate) AS Year_,
    dp.Name AS Department,
    COUNT(PatientId) AS PatientCount
FROM
    Visit V
        INNER JOIN
    Doctor d ON v.DoctorID = D.DoctorID
        INNER JOIN
    Department dp ON d.DepartmentID = dp.DepartmentID
WHERE
    YEAR(VisitDate) = 2024
GROUP BY YEAR(VisitDate) , dp.Name;


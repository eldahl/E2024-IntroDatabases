IF DB_ID('PetClinic') IS NOT NULL
BEGIN
	DROP DATABASE PetClinic
END

CREATE DATABASE PetClinic
GO

USE PetClinic
GO

CREATE TABLE PetVisits (
    PetID INT,
    PetName VARCHAR(50),
    PetType VARCHAR(50),
    PetAge INT,
    Owner VARCHAR(50),
    VisitDate DATE,
    ProcedureCode INT,
    ProcedureDescription VARCHAR(100)
);
GO;

-- Insert the provided data into the table
INSERT INTO PetVisits (PetID, PetName, PetType, PetAge, Owner, VisitDate, ProcedureCode, ProcedureDescription)
VALUES
(246, 'Rover', 'Dog', 12, 'Sam Cook', '2002-01-13', 01, 'Rabbies Vaccine'),
(246, 'Rover', 'Dog', 12, 'Sam Cook', '2002-03-27', 10, 'Examine and Treat Wound'),
(246, 'Rover', 'Dog', 12, 'Sam Cook', '2002-04-20', 05, 'Heart Worm Test'),
(298, 'Spot', 'Dog', 2, 'Terry Kim', '2002-01-21', 08, 'Tetanus Vaccine'),
(298, 'Spot', 'Dog', 2, 'Terry Kim', '2002-03-10', 05, 'Heart Worm Test'),
(341, 'Morris', 'Cat', 4, 'Sam Cook', '2001-01-23', 01, 'Rabbies Vaccine'),
(341, 'Morris', 'Cat', 4, 'Sam Cook', '2002-01-13', 01, 'Rabbies Vaccine'),
(519, 'Tweedy', 'Bird', 2, 'Terry Kim', '2002-04-30', 20, 'Annual Check Up'),
(519, 'Tweedy', 'Bird', 2, 'Terry Kim', '2002-04-30', 12, 'Eye Wash');

GO;
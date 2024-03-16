CREATE TABLE Donors (
    email VARCHAR(50) PRIMARY KEY, 
    first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
    nationality VARCHAR(50) NOT NULL,
    phone VARCHAR(20) NOT NULL,
	password VARCHAR(50) NOT NULL,
	gender CHAR(1),
	donations_made INT
);

CREATE TABLE Volunteers (
	email VARCHAR(50) PRIMARY KEY, 
    first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
    nationality VARCHAR(50) NOT NULL,
    phone VARCHAR(20) NOT NULL,
	password VARCHAR(50) NOT NULL,
	gender CHAR(1),
	total_contributions INT
);

CREATE TABLE Member (
	email VARCHAR(50) PRIMARY KEY, 
    first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
    nationality VARCHAR(50) NOT NULL,
    phone VARCHAR(20) NOT NULL,
	password VARCHAR(50) NOT NULL,
	gender CHAR(1),
	work_hours INT
);

CREATE TABLE Projects (
    projectID INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    category VARCHAR(9) NOT NULL		--education, health, food, shelter
);

CREATE TABLE Donations (
    projectID INT NOT NULL,
    donor_email VARCHAR(50) NOT NULL,
    amount INT NOT NULL,
    category VARCHAR(9) NOT NULL,
    PRIMARY KEY (projectID, donor_email),
    FOREIGN KEY (projectID) REFERENCES Projects(projectID),
    FOREIGN KEY (donor_email) REFERENCES Donors(email)
);


CREATE TABLE Participation (
    projectID INT NOT NULL,
    volunteer_email VARCHAR(50) NOT NULL,
    amount INT NOT NULL,
    category VARCHAR(9) NOT NULL,
    PRIMARY KEY (projectID, volunteer_email),
    FOREIGN KEY (projectID) REFERENCES Projects(projectID),
    FOREIGN KEY (volunteer_email) REFERENCES Volunteers(email)
);

CREATE TABLE Beneficiaries (
    BeneficiaryID INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    category VARCHAR(9) NOT NULL,	--education, health, food, shelter
);

CREATE TABLE donations_made (
    projectID INT NOT NULL,
    BeneficiaryID INT NOT NULL,
    amount FLOAT NOT NULL,
    PRIMARY KEY (projectID, BeneficiaryID),
    FOREIGN KEY (projectID) REFERENCES Projects(projectID),
	FOREIGN KEY (BeneficiaryID) REFERENCES Beneficiaries(BeneficiaryID)
);



--INSERTIONS
INSERT INTO Projects (projectID, name, category) VALUES
(1, 'Education for All', 'education'), 
(2, 'Health Awareness', 'health'),
(3, 'Feed the Hungry', 'food'),
(4, 'Shelter for the Homeless', 'shelter'),
(5, 'Empowering Women', 'education');

INSERT INTO Beneficiaries (BeneficiaryID, name, category) VALUES 
(1, 'Shaukat Khanum Memorial Cancer Hospital', 'health'),
(2, 'The Citizens Foundation', 'education'),
(3, 'Saylani Welfare International Trust', 'food'),
(4, 'Edhi Foundation', 'shelter'),
(5, 'SOS Children''s Village', 'shelter'),
(6, 'LRBT Eye Hospital', 'health');

--PROCEDURES

CREATE PROCEDURE InsertDonor (
    @donoremail VARCHAR(50),
    @f_name VARCHAR(50),
	@l_name VARCHAR(50),
    @nationality VARCHAR(50),
    @phone CHAR(11),
    @address VARCHAR(100),
    @gender CHAR(1),
    @password VARCHAR(50)
)
AS
BEGIN
    SET NOCOUNT ON;

    -- Check if donor with same ID already exists
    IF EXISTS (SELECT 1 FROM Donors WHERE donorID = @donorID)
    BEGIN
        RAISERROR('Donor with ID %s already exists', 16, 1, @donorID);
        RETURN;
    END

    -- Insert new donor
    INSERT INTO Donors VALUES (@donoremail, @f_name, @l_name, @nationality, @phone, @address, @gender, @password);
    
END

CREATE PROCEDURE InsertVolunteer (
    @v_email VARCHAR(50)NOT NULL, 
    @f_name VARCHAR(50) NOT NULL,
	@l_name VARCHAR(50) NOT NULL,
    @v_nationality VARCHAR(50) NOT NULL,
    @v_phone VARCHAR(20) NOT NULL,
	@v_password VARCHAR(50) NOT NULL,
	@v_gender CHAR(1)
)
AS
BEGIN
    SET NOCOUNT ON;

    -- Check if volunteer with same ID already exists
    IF EXISTS (SELECT 1 FROM Volunteers WHERE email = @v_email)
    BEGIN
        RAISERROR('Volunteer with ID %s already exists', 16, 1, @v_email);
        RETURN;
    END

    -- Insert new volunteer
    INSERT INTO Volunteers VALUES (@volunteerID, @name, @nationality, @phone, @address, @gender, @password);
END

--This will donate the amount to a beneficiary via a project of the particular category
CREATE PROCEDURE donate_to_project(
    @donation_amount FLOAT,
    @donation_category VARCHAR(9)
)
AS
BEGIN
    DECLARE @project_id INT;
    SELECT projectID INTO project_id
    FROM Projects
    WHERE category = @donation_category
    ORDER BY RAND();
    
    DECLARE @beneficiary_id INT;
    SELECT BeneficiaryID INTO beneficiary_id
    FROM Beneficiaries
    WHERE category = @donation_category
    ORDER BY RAND();
    
    INSERT INTO donations_made (projectID, BeneficiaryID, amount)
    VALUES (@project_id, @beneficiary_id, @donation_amount);
END;

--Donations from donor
CREATE PROCEDURE insert_donation(
    @projectID INT,
    @donor_mail VARCHAR(50),
    @amount FLOAT,
    @categ VARCHAR(9)
)
AS
BEGIN
    INSERT INTO Donations (projectID, donor_email, amount, category)
    VALUES (@projectID, @donor_mail, @amount, @categ);
	exec donate_to_project(@amount, @categ)
END


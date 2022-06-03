-- fo help \?
-- list database \l
-- create  database  CREATE DATABASE database_name;
-- list all tables \d


CREATE TABLE products
(
    id INT,
    name VARCHAR(50),
    price INT,
    on_sale boolean
);

ALTER TABLE products ADD COLUMN featured boolean;
ALTER TABLE products DROP COLUMN featured;



CREATE TABLE applicationreport (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    stuid VARCHAR(255) NULL,
    applicantid VARCHAR(255) NULL,
    currentstatus VARCHAR(255) NULL,
    applicationlock VARCHAR(255) NULL,
    academicyear VARCHAR(255) NULL
);

CREATE TABLE applicationdata (
    id BIGSERIAL NOT NULL PRIMARY KEY,
	stuid BIGINT NULL REFERENCES students(id),
	catid BIGINT NULL REFERENCES studentcategory(id),
    stucatname VARCHAR(255) NULL,
    cattype VARCHAR(255) NULL,
    applicationsession VARCHAR(255) NULL,
    fullname VARCHAR(255) NULL,
    dob VARCHAR(255) NULL,
    religion VARCHAR(255) NULL,
    castecat VARCHAR(255) NULL,
    gender VARCHAR(255) NULL,
    contactno VARCHAR(255) NULL,
    email VARCHAR(255) NULL,
    raddress  TEXT NULL,
    district  VARCHAR(255) NULL,
    tehsil  VARCHAR(255) NULL,
    stustate  VARCHAR(255) NULL,
    pincode  VARCHAR(255) NULL,
    residing  VARCHAR(255) NULL,
    Fathername  VARCHAR(255) NULL,
    Fathereducation  VARCHAR(255) NULL,
    Fatheroccupation  VARCHAR(255) NULL,
    Fatherannualincome  VARCHAR(255) NULL,
    mothername  VARCHAR(255) NULL,
    mothereducation  VARCHAR(255) NULL,
    motheroccupation  VARCHAR(255) NULL,
    motherannualincome  VARCHAR(255) NULL,
    brothersisterdetail TEXT NULL,
    rusticatedyesno VARCHAR(255) NULL,
    rusticatedyesdetail TEXT NULL,
    shdfrequestyesno VARCHAR(255) NULL,
    shdfrequestyesdetail TEXT NULL,
    examinationspasseddetail TEXT NULL,
    academicrecorddetail TEXT NULL,
    scholarshipisrequested VARCHAR(255) NULL,
    duration VARCHAR(255) NULL,
    admission VARCHAR(255) NULL,
    completion VARCHAR(255) NULL,
    collegeUniversityname VARCHAR(255) NULL,
    collegeUniversityaddress VARCHAR(255) NULL,
    collegeUniversitytype VARCHAR(255) NULL,
    collegeUniversitystudyingatpresent VARCHAR(255) NULL,
    achievementsscholarshipmedal VARCHAR(255) NULL,
    achievementsmeritcertificate VARCHAR(255) NULL,
    achievementshobbies VARCHAR(255) NULL,
    referencesperson TEXT NULL,
    justification TEXT NULL,
    detailsofbankaccount TEXT NULL,
    familyoccupationname VARCHAR(255) NULL,
    familyoccupationfather VARCHAR(255) NULL,
    familyoccupationmother VARCHAR(255) NULL,
    familyassetsowned TEXT NULL,
    familyagricultureassets TEXT NULL,
    familylivesto TEXT NULL,
    knowscholarship VARCHAR(255) NULL,
    interviewtimeslot VARCHAR(255) NULL,
    interviewcenter VARCHAR(255) NULL,
    stu_reg_date DATE  NULL,
);

UPDATE studentcategory SET stuid = value1, WHERE catid = RETURNING * | output_expression AS output_name;

    catname VARCHAR(255) NULL,
    cattype VARCHAR(255) NULL,
    applicationsession VARCHAR(255) NULL,
ALTER TABLE applicationdata ADD COLUMN contactno2 TEXT NULL;
ALTER TABLE studentcategory ALTER COLUMN appid TYPE BIGINT NULL REFERENCES applicationdata(id);

CREATE TABLE collegereport (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    stuid BIGINT NULL REFERENCES students(id),
    applicantid VARCHAR(255) NULL,
    nameofstudent VARCHAR(255) NULL,
    fathername VARCHAR(255) NULL,
    studentaddress VARCHAR(255) NULL,
    district VARCHAR(255) NULL,
    tehsil VARCHAR(255) NULL,
    pincode VARCHAR(255) NULL,
    phonenumber VARCHAR(255) NULL,
    emailid VARCHAR(255) NULL,
    nameofthecollege VARCHAR(255) NULL,
    addressofthecollege VARCHAR(255) NULL,
    nameoftheuniversity VARCHAR(255) NULL,
    nameoftheprincipal VARCHAR(255) NULL,
    nameoftheprincipalphone VARCHAR(255) NULL,
    nameoftheprincipalemail VARCHAR(255) NULL,
    familyincome VARCHAR(255) NULL,
    receivingfinancialaidyesno VARCHAR(255) NULL,
    receivingfinancialaidorganization VARCHAR(255) NULL,
    receivingfinancialaidacademicyear VARCHAR(255) NULL,
    academicyeardetail TEXT NULL,
    prevoiusyeardetail TEXT NULL,
    tutionfee VARCHAR(255) NULL,
    developmentfee VARCHAR(255) NULL,
    examinationfee VARCHAR(255) NULL,
    otherfee VARCHAR(255) NULL,
    totalfee VARCHAR(255) NULL,
    transportfee VARCHAR(255) NULL,
    refundablefee VARCHAR(255) NULL,
    hostelfee VARCHAR(255) NULL,
    grandfee VARCHAR(255) NULL
);


ALTER TABLE applicationdata 
RENAME COLUMN stucatname 
TO formatname;

CREATE TABLE studentcategory (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    stuid BIGINT NULL REFERENCES students(id),
    categoryname VARCHAR(255) NULL,
    formatname VARCHAR(255) NULL,
    stu_reg_date DATE  NULL,
    update_date DATE  NULL
);

CREATE TABLE finalsubmit (
    id BIGSERIAL NOT NULL PRIMARY KEY,
     lastupdate date CURRENT_TIMESTAMP,
     colleger VARCHAR(255) NULL
);

insert into interviewcenter (centername, centerinchargename,centerinchargephone)VALUES('Chandigarh','centerinchargename','centerinchargephone' );

CREATE TABLE finalsubmit (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    stuid BIGINT NULL REFERENCES students(id),
    catid BIGINT NULL REFERENCES studentcategory(id),
    appid BIGINT NULL REFERENCES applicationdata(id),
    uniqueid VARCHAR(255) NULL,
    collegereportfilename VARCHAR(255) NULL,
    appilicationstatus VARCHAR(255) NULL,
    appilicationstatusmessage VARCHAR(255) NULL,
    entrytime VARCHAR(255) NULL,
    lastupdate DATE  NULL,
    update_date DATE  NULL
);

insert into studentcategory (categoryname)VALUES('abc') RETURNING id;

CREATE TABLE documentupload (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    stuid BIGINT NULL REFERENCES students(id),
    appid BIGINT NULL REFERENCES applicationdata(id),
    documentname VARCHAR(255) NULL,
    docfilename VARCHAR(255) NULL,
    approvestatus VARCHAR(255) NULL,
    stu_reg_date DATE  NULL,
    update_date DATE  NULL
);

CREATE TABLE interviewcenter (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    centername VARCHAR(255) NULL,
    centerinchargename VARCHAR(255) NULL,
    centerinchargephone VARCHAR(255) NULL,
    stu_reg_date TIMESTAMP,
    update_date TIMESTAMP
);






CREATE TABLE business_appoint (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    business_name VARCHAR(50) NOT NULL,
    business_email VARCHAR(50) NOT NULL,
    country VARCHAR(50) NOT NULL,
    city VARCHAR(50) NOT NULL,
    province VARCHAR(50) NOT NULL,
    phonenumber VARCHAR(50) NOT NULL,
    max_appoint BIGINT NOT NULL
);

CREATE TABLE add_services (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    servicename VARCHAR(50) NOT NULL,
    servicecost VARCHAR(50) NOT NULL,
    servicetime VARCHAR(50) NOT NULL,
    business_id BIGINT NOT NULL
);

CREATE TABLE business (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    business_name VARCHAR(50) NOT NULL,
    country VARCHAR(50) NOT NULL,
    city VARCHAR(50) NOT NULL,
    province VARCHAR(50) NOT NULL
);


CREATE TABLE week_time (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    business_id BIGINT NULL REFERENCES business_appoint(id),
    start_time TIME NOT NULL,
    end_time TIME NOT NULL ,
    day_name  VARCHAR(50) 
);

-- Users Table
CREATE TABLE users (
    id BIGSERIAL PRIMARY KEY NOT NULL,
    name VARCHAR(200) NOT NULL,
    email VARCHAR(200) NOT NULL,
    password VARCHAR(200),
    cpassword VARCHAR(200), 
    UNIQUE (email)
);
INSERT INTO users (name, email, password) VALUES ('Jashan','jdeep514@gmail.com', 'Jashan86990');


-- appointmnet table
CREATE TABLE appointment_list (
     id BIGSERIAL PRIMARY KEY NOT NULL,
     business_id BIGINT NOT NULL REFERENCES business_appoint(id),
     m_service VARCHAR(200) NOT NULL,
     appointment_date DATE NOT NULL,
     time_slot VARCHAR(50) NOT NULL  -- changed data type of time_slot to VARCHAR
);


-- holidays table
CREATE TABLE holidays (
    id BIGSERIAL PRIMARY KEY NOT NULL,
    country VARCHAR(200),
    dates JSONB
);

-- custom holidays table
CREATE TABLE custom_holidays (
    id BIGSERIAL PRIMARY KEY NOT NULL,
    business_id BIGINT NOT NULL REFERENCES business_appoint(id),
    dates JSONB
);

UPDATE users SET email = jdeep5141@gmail.com WHERE id = 1;
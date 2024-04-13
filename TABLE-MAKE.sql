create table peoplemove(
	MID varchar(10) PRIMARY KEY,
	NewAddress varchar(50),
	datemove  varchar(10),
	typemove varchar(25),
	Registrar varchar(50),
);
create table Housereg (
	Hcode varchar(11)  PRIMARY KEY,
	Hname varchar(50),
	Hhead varchar(50) not null,
	Hdate date not null,
	Htype varchar(50),
	Hchar varchar(50),
	[Address] varchar(50), 
);
create table subsistence(
	Statuskey varchar(50) PRIMARY KEY,
	[Status] varchar(50),
	RepStatus varchar(50) not null,
	Hcode varchar(11) not null ,
	Detaileddate date,
	details varchar(255),
	FOREIGN KEY (Hcode) REFERENCES Housereg(Hcode),
);
create table base (
	Bkey varchar(5) PRIMARY KEY,
	occupation varchar(50),
	salary int,
	workplace varchar(50),
	debt int,
);
Create  Table Person(
	PID varchar(13) not null PRIMARY KEY,
	[Name] varchar(50) not null , 
	Hcode varchar(11) not null FOREIGN KEY (Hcode) REFERENCES Housereg(Hcode),
	Nationality varchar(5) not null,
	Gender CHAR(1) CHECK (gender in('M','F')),
	Position varchar(15) not null,
	Birthdate date not null,
	Father varchar(13) FOREIGN KEY (Father) REFERENCES Person(PID),
	Mather varchar(13) FOREIGN KEY (Mather) REFERENCES Person(PID),
	StayDate date,
	Statuskey varchar(50) FOREIGN KEY (Statuskey) REFERENCES subsistence(Statuskey),
	MID varchar(10) FOREIGN KEY (MID) REFERENCES peoplemove(MID),
	Bkey varchar(5) FOREIGN KEY (Bkey) REFERENCES base(Bkey),
);


select * from Person;
select * from peoplemove;
select * from Housereg;
select * from subsistence;
select * from base;

drop table base;
drop table Person;
drop table peoplemove;
drop table subsistence;
drop table Housereg;

SELECT 
    p.PID,
    p.Name,
    p.Nationality,
    p.Gender,
    p.Birthdate,
    Address,
    p1.Name AS Father_Name, 
    p2.Name AS Mother_Name 
FROM 
    Person p 
    LEFT JOIN Person p1 ON p.Father = p1.PID 
    LEFT JOIN Person p2 ON p.Mather = p2.PID
    INNER JOIN Housereg ON p.Hcode = Housereg.Hcode;

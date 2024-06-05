Create Database LoginDemoDB
Go
use LoginDemoDB

Create Table Users (
	Email nvarchar(100) PRIMARY KEY,
	[Password] nvarchar(20) NOT NULL,
	PhoneNumber nvarchar(20) NULL,
	BirthDate DATETIME NULL,
	[Status] int NULL,
	[Name] nvarchar(50) NOT NULL
)
Go

Create Table Grades (
Id int IDENTITY(1,1) PRIMARY KEY,
Date nvarchar(10) NOT NULL,
SubjectName nvarchar(20) NOT NULL,
GradeNum int NOT NULL,
StudentMailId nvarchar (100) FOREIGN KEY REFERENCES Users(Email)
)
Go

INSERT INTO dbo.Users VALUES ('galkluger@gmail.com', '1234', '+972506665835','20-may-1976',1,'Tal Simon')
Go

INSERT INTO dbo.Grades VALUES ( '05/06/2024', 'Computer Science',95,'galkluger@gmail.com')
Go
INSERT INTO dbo.Grades VALUES ( '15/05/2024', 'Math',99,'galkluger@gmail.com')
Go

--scaffold-DbContext "Server = (localdb)\MSSQLLocalDB;Initial Catalog=LoginDemoDB;Integrated Security=True;Persist Security Info=False;Pooling=False;Multiple Active Result Sets=False;Encrypt=False;Trust Server Certificate=False;Command Timeout=0" Microsoft.EntityFrameworkCore.SqlServer -OutPutDir Models -Context LoginDemoDbContext -DataAnnotations -force

go
create table Students123
(RollNo varchar(7) primary key
,Name varchar(30)
,WarningCount int
,Department varchar(15)
)
GO
INSERT [dbo].[Students123] ([RollNo], [Name], [WarningCount], [Department]) VALUES (N'1', N'Ali', 0, N'CS')
INSERT [dbo].[Students123] ([RollNo], [Name], [WarningCount], [Department]) VALUES (N'2', N'Bilal', 0, N'CS')
INSERT [dbo].[Students123] ([RollNo], [Name], [WarningCount], [Department]) VALUES (N'3', N'Ayesha', 0, N'CS')
INSERT [dbo].[Students123] ([RollNo], [Name], [WarningCount], [Department]) VALUES (N'4', N'Ahmed', 0, N'CS')
INSERT [dbo].[Students123] ([RollNo], [Name], [WarningCount], [Department]) VALUES (N'5', N'Sara', 0, N'EE')
INSERT [dbo].[Students123] ([RollNo], [Name], [WarningCount], [Department]) VALUES (N'6', N'Salman', 1, N'EE')
INSERT [dbo].[Students123] ([RollNo], [Name], [WarningCount], [Department]) VALUES (N'7', N'Zainab', 2, N'CS')
INSERT [dbo].[Students123] ([RollNo], [Name], [WarningCount], [Department]) VALUES (N'8', N'Danial', 1, N'CS')

go
create table Courses123
(
CourseID int primary key,
CourseName varchar(40),
PrerequiteCourseID int,
CreditHours int
) 
GO
INSERT [dbo].[Courses123] ([CourseID], [CourseName], [PrerequiteCourseID],CreditHours) VALUES (10, N'Database Systems', 20, 3)
INSERT [dbo].[Courses123] ([CourseID], [CourseName], [PrerequiteCourseID],CreditHours) VALUES (20, N'Data Structures', 30,3)
INSERT [dbo].[Courses123] ([CourseID], [CourseName], [PrerequiteCourseID],CreditHours) VALUES (30, N'Programing', NULL,3)
INSERT [dbo].[Courses123] ([CourseID], [CourseName], [PrerequiteCourseID],CreditHours) VALUES (40, N'Basic Electronics', NULL,3)
go

go
Create table Instructors123 
(
InstructorID int Primary key,
Name varchar(30),
Department varchar(7) ,
)
GO
INSERT [dbo].[Instructors123] ([InstructorID], [Name], [Department]) VALUES (100, N'Ishaq Raza', N'CS')
INSERT [dbo].[Instructors123] ([InstructorID], [Name], [Department]) VALUES (200, N'Zareen Alamgir', N'CS')
INSERT [dbo].[Instructors123] ([InstructorID], [Name], [Department]) VALUES (300, N'Saima Zafar', N'EE')
go
Create table Semester123
(
Semester123 varchar(15) Primary key,
[Status] varchar(10),
)
GO
INSERT [dbo].[Semester123] ([Semester123], [Status]) VALUES (N'Fall2016', N'Complete')
INSERT [dbo].[Semester123] ([Semester123], [Status]) VALUES (N'Spring2016', N'Complete')
INSERT [dbo].[Semester123] ([Semester123], [Status]) VALUES (N'Spring2017', N'InProgress')
INSERT [dbo].[Semester123] ([Semester123], [Status]) VALUES (N'Summer2016', N'Cancelled')
go
Create table Courses123_Semester123
(
InstructorID int Foreign key References Instructors123(InstructorID),
CourseID int Foreign key References Courses123(CourseID),
Semester123 varchar(15) Foreign key References Semester123(Semester123), 
Section varchar(1) ,
AvailableSeats int,
Department varchar(2)
)
GO
INSERT [dbo].[Courses123_Semester123] ([InstructorID], [CourseID], [Semester123], [Section], [AvailableSeats], [Department]) VALUES (200, 10, N'Spring2017', N'D', 45, N'CS')
INSERT [dbo].[Courses123_Semester123] ([InstructorID], [CourseID], [Semester123], [Section], [AvailableSeats], [Department]) VALUES (200, 10, N'Spring2017', N'C', 0, N'CS')
INSERT [dbo].[Courses123_Semester123] ([InstructorID], [CourseID], [Semester123], [Section], [AvailableSeats], [Department]) VALUES (100, 10, N'Spring2017', N'A', 6, N'CS')
INSERT [dbo].[Courses123_Semester123] ([InstructorID], [CourseID], [Semester123], [Section], [AvailableSeats], [Department]) VALUES (300, 40, N'Spring2017', N'A', 6, N'CS')
INSERT [dbo].[Courses123_Semester123] ([InstructorID], [CourseID], [Semester123], [Section], [AvailableSeats], [Department]) VALUES (300, 40, N'Spring2016', N'A', 6, N'CS')
INSERT [dbo].[Courses123_Semester123] ([InstructorID], [CourseID], [Semester123], [Section], [AvailableSeats], [Department]) VALUES (200, 10, N'Spring2016', N'A', 0, N'CS')

go



create table Registration123
(
Semester123 varchar(15) Foreign key References Semester123(Semester123),
RollNumber  varchar(7) Foreign key References Students123(RollNo),
CourseID int Foreign key References Courses123(CourseID), 
Section varchar(1),
GPA float
)
INSERT [dbo].[Registration123] ([Semester123], [RollNumber], [CourseID], [Section],GPA) VALUES (N'Fall2016', N'1', 20, N'A', 3.3)
INSERT [dbo].[Registration123] ([Semester123], [RollNumber], [CourseID], [Section],GPA) VALUES (N'Fall2016', N'2', 20, N'B', 4)
INSERT [dbo].[Registration123] ([Semester123], [RollNumber], [CourseID], [Section],GPA) VALUES (N'Spring2016', N'1', 30, N'A', 1.0)
INSERT [dbo].[Registration123] ([Semester123], [RollNumber], [CourseID], [Section],GPA) VALUES (N'Fall2016', N'6', 40, N'D',0.0)
INSERT [dbo].[Registration123] ([Semester123], [RollNumber], [CourseID], [Section],GPA) VALUES (N'Spring2017', N'6', 40, N'D',1)


go

Create table ChallanForm123
(Semester123 varchar(15) Foreign key References Semester123(Semester123),
RollNumber  varchar(7) Foreign key References Students123(RollNo),
TotalDues int,
[Status] varchar(10)
)
GO
INSERT [dbo].[ChallanForm123] ([Semester123], [RollNumber], [TotalDues], [Status]) VALUES (N'Fall2016', N'1', 100000, N'Paid')
INSERT [dbo].[ChallanForm123] ([Semester123], [RollNumber], [TotalDues], [Status]) VALUES (N'Fall2016', N'2', 13333, N'Paid')
INSERT [dbo].[ChallanForm123] ([Semester123], [RollNumber], [TotalDues], [Status]) VALUES (N'Fall2016', N'3', 5000, N'Paid')
INSERT [dbo].[ChallanForm123] ([Semester123], [RollNumber], [TotalDues], [Status]) VALUES (N'Fall2016', N'4', 20000, N'Pending')






   
select * from Students123
select * from Courses123
select * from Instructors123
select * from Registration123
select * from Semester123
select * from Courses123_Semester123
select * from ChallanForm123
---------------------------1-------------------------------------------

create trigger pdeletestudent
on Students123
instead of delete
as 
begin
    print 'You don’t have the permission to delete the student'
end;
---------------------------2-------------------------------------------

create trigger pinsertcourse
on Courses123
instead of insert
as 
begin
    print 'You don’t have the permission to insert a new course'
end;

---------------------------3-------------------------------------------
create table notify(
notificationid varchar(100), 
studentid11 varchar(100),
notificationstring varchar(100)
);

create trigger notifyregistration123
on Registration123
after insert
as
begin 
    declare @studentid varchar(10)
    declare @courseid varchar(10)
    declare @prerequisitepassed bit
    declare @seatsavailable int

    select  @studentid = studentid11, @courseid = courseid
    from inserted

    if @prerequisitepassed = 1 AND @seatsavailable > 0
    begin
        insert into notify (studentid11, notificationstring)
        values (@studentid, 'Your registration123 for course ' + @courseid + ' is successful.')
    end
    else 
    begin
        insert into notify (studentid11, notificationstring)
        values (@studentid, 'Your registration123 for course ' + @courseid + ' is not successful.')
    end
end;

---------------------------4-------------------------------------------
create trigger penrollduefee
on Challanform123 
after insert
as 
begin
    declare @studentid varchar(10)
    declare @feecharges int

    select @studentid = rollnumber, @feecharges = totaldues
    from inserted

    if @feecharges > 20000
    begin
        print 'Student cannot enroll with more than 20,000 fee charges due.'   
    end
end;

---------------------------5-------------------------------------------
create trigger pdeletecourse
on Courses123_Semester123 
instead of delete 
as
begin
    declare @courseid varchar(10)
    declare @availableseats int

    select @courseid = courseid, @availableseats = availableseats
    from deleted

    if @availableseats < 10
    begin
        print 'Not     possible'
    end
    else 
    begin
        delete from Courses123_Semester123
        where courseid = @courseid
        print 'Successfully deleted'
    end
end;

---------------------------6-------------------------------------------
create trigger pinstructors123modification
on Instructors123
instead of insert, update, delete
as
begin
    print 'You don’t have the permission to modify or drop the instructors123 table.'
end;

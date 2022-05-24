USE [Homework_class01]


CREATE TABLE [Student](
	[Id][int] IDENTITY(1,1)NOT NULL,
	[FirstName][nvarchar](100)NOT NULL,
	[LastName][nvarchar](100)NOT NULL,
	[DateOfBirth][date]NOT NULL,
	[EnrolledDate][date]NULL,
	[Gender][nvarchar](100)NULL,
	[NationalIDNumber][int]NOT NULL,
	[StudentCardNumber][int]NOT NULL,
	CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED([Id] ASC)
)

CREATE TABLE [Teacher](
	[Id][int] IDENTITY(1,1)NOT NULL,
	[FirstName][nvarchar](100)NOT NULL,
	[LastName][nvarchar](100)NOT NULL,
	[DateOfBirth][date]NOT NULL,
	[AcademicRank][nvarchar](100)NOT NULL,
	[HireDate][date]NOT NULL,
	CONSTRAINT [PK_Teacher] PRIMARY KEY CLUSTERED([Id] ASC)
)

CREATE TABLE [Grade](
	[Id][int] IDENTITY(1,1)NOT NULL,
	[StudentId][int]NOT NULL,
	[CourseId][int]NOT NULL,
	[TeacherId][int]NOT NULL,
	[Grade][int]NOT NULL,
	[Comment][nvarchar](1000)NULL,
	[CreatedDate][date]NOT NULL,
	CONSTRAINT [PK_Grade] PRIMARY KEY CLUSTERED([Id] ASC)
)

CREATE TABLE [Course](
	[Id][int] IDENTITY(1,1)NOT NULL,
	[Name][nvarchar](100)NOT NULL,
	[Credit][int]NOT NULL,
	[AcademicYear][int]NOT NULL,
	[Semester][int]NOT NULL,
	CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED([Id] ASC)
)

CREATE TABLE [GradeDetails](
	[Id][int] IDENTITY(1,1)NOT NULL,
	[GradeId][int]NOT NULL,
	[AchievemntTypeId][int]NOT NULL,
	[AchievemntPoints][int]NOT NULL,
	[AchievementMaxPoints][int]NOT NULL,
	[AchievementDate][date]NOT NULL,
	CONSTRAINT [PK_GradeDetails] PRIMARY KEY CLUSTERED([Id] ASC)
)

CREATE TABLE [AchievementType](
	[Id][int] IDENTITY(1,1)NOT NULL,
	[Name][nvarchar](100)NOT NULL,
	[Description][nvarchar](1000)NOT NULL,
	[ParticipationDate][date]NOT NULL,
	CONSTRAINT [PK_AchievementType] PRIMARY KEY CLUSTERED([Id] ASC)
)
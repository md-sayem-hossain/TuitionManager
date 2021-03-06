USE [master]
GO
/****** Object:  Database [tuitionDB]    Script Date: 4/20/2022 4:00:52 PM ******/
CREATE DATABASE [tuitionDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'tuitionDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\tuitionDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'tuitionDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\tuitionDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [tuitionDB] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [tuitionDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [tuitionDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [tuitionDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [tuitionDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [tuitionDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [tuitionDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [tuitionDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [tuitionDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [tuitionDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [tuitionDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [tuitionDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [tuitionDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [tuitionDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [tuitionDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [tuitionDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [tuitionDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [tuitionDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [tuitionDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [tuitionDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [tuitionDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [tuitionDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [tuitionDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [tuitionDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [tuitionDB] SET RECOVERY FULL 
GO
ALTER DATABASE [tuitionDB] SET  MULTI_USER 
GO
ALTER DATABASE [tuitionDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [tuitionDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [tuitionDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [tuitionDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [tuitionDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [tuitionDB] SET QUERY_STORE = OFF
GO
USE [tuitionDB]
GO
/****** Object:  Table [dbo].[adm_login]    Script Date: 4/20/2022 4:00:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[adm_login](
	[adm_id] [int] IDENTITY(1,1) NOT NULL,
	[adm_username] [varchar](50) NULL,
	[adm_password] [varchar](250) NULL,
	[fullname] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AttendanceTbl]    Script Date: 4/20/2022 4:00:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AttendanceTbl](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[studentName] [varchar](50) NULL,
	[attendate] [date] NULL,
	[attenstatus] [varchar](50) NULL,
	[sub_name] [varchar](50) NULL,
	[class_name] [varchar](50) NULL,
	[otp_num] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClassList]    Script Date: 4/20/2022 4:00:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClassList](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ClassId] [varchar](50) NULL,
	[ClassName] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fee]    Script Date: 4/20/2022 4:00:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fee](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tutorname] [varchar](250) NULL,
	[studentname] [varchar](250) NULL,
	[classname] [varchar](250) NULL,
	[subjectname] [varchar](250) NULL,
	[fee] [int] NULL,
	[statues] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[genAtten]    Script Date: 4/20/2022 4:00:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[genAtten](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[sub_name] [varchar](50) NULL,
	[class_name] [varchar](50) NULL,
	[otp_num] [varchar](50) NULL,
	[atten_file] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[student_reg]    Script Date: 4/20/2022 4:00:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[student_reg](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[icnumber] [int] NOT NULL,
	[fullname] [varchar](50) NULL,
	[dateofbirth] [datetime] NULL,
	[gender] [varchar](50) NULL,
	[contact_no] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[parent_name] [varchar](50) NULL,
	[p_contact_no] [varchar](50) NULL,
	[p_icnumber] [int] NULL,
	[full_address] [varchar](50) NULL,
	[s_username] [varchar](50) NULL,
	[s_status] [varchar](50) NULL,
	[s_pass] [varchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[studenthomework_table]    Script Date: 4/20/2022 4:00:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[studenthomework_table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[homework_id] [int] NULL,
	[homework_name] [varchar](50) NULL,
	[subject_name] [varchar](50) NULL,
	[tutor_name] [varchar](50) NULL,
	[homework_desc] [varchar](250) NULL,
	[homework_file] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[subjectregister]    Script Date: 4/20/2022 4:00:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[subjectregister](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[subjectname] [varchar](50) NULL,
	[classname] [varchar](50) NULL,
	[tutorname] [varchar](50) NULL,
	[studentname] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[subjects]    Script Date: 4/20/2022 4:00:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[subjects](
	[SubjectId] [int] IDENTITY(1,1) NOT NULL,
	[SubjectName] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tutor_reg]    Script Date: 4/20/2022 4:00:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tutor_reg](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[icnumber] [int] NOT NULL,
	[fullname] [varchar](50) NULL,
	[dob] [datetime] NULL,
	[gender] [varchar](50) NULL,
	[contact_no] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[full_address] [varchar](50) NULL,
	[t_username] [varchar](50) NULL,
	[t_pass] [varchar](250) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[adm_login] ON 

INSERT [dbo].[adm_login] ([adm_id], [adm_username], [adm_password], [fullname]) VALUES (1, N'admin', N'T+4Ai6O3CR0kJYxCgXy2jA==', N'admin')
SET IDENTITY_INSERT [dbo].[adm_login] OFF
SET IDENTITY_INSERT [dbo].[AttendanceTbl] ON 

INSERT [dbo].[AttendanceTbl] ([id], [studentName], [attendate], [attenstatus], [sub_name], [class_name], [otp_num]) VALUES (1, N'sayem', CAST(N'2022-04-18' AS Date), N'Success', N'Bangla', N'Class 10', N'kbkbk')
INSERT [dbo].[AttendanceTbl] ([id], [studentName], [attendate], [attenstatus], [sub_name], [class_name], [otp_num]) VALUES (2, N'sayem', CAST(N'2022-04-18' AS Date), N'Success', N'English', N'Class 9', N'sasas')
INSERT [dbo].[AttendanceTbl] ([id], [studentName], [attendate], [attenstatus], [sub_name], [class_name], [otp_num]) VALUES (3, N'sayem', CAST(N'2022-04-18' AS Date), N'Success', N'Math', N'Class 10', N'232')
SET IDENTITY_INSERT [dbo].[AttendanceTbl] OFF
SET IDENTITY_INSERT [dbo].[ClassList] ON 

INSERT [dbo].[ClassList] ([id], [ClassId], [ClassName]) VALUES (1, N'001', N'Class 10')
INSERT [dbo].[ClassList] ([id], [ClassId], [ClassName]) VALUES (2, N'002', N'Class 9')
SET IDENTITY_INSERT [dbo].[ClassList] OFF
SET IDENTITY_INSERT [dbo].[fee] ON 

INSERT [dbo].[fee] ([id], [tutorname], [studentname], [classname], [subjectname], [fee], [statues]) VALUES (1, N'joynal', N'sayem', N'Class 10', N'English', 1000, N'pending')
INSERT [dbo].[fee] ([id], [tutorname], [studentname], [classname], [subjectname], [fee], [statues]) VALUES (2, N'joynal', N'sayem', N'Class 10', N'English', 1000, N'Pending')
INSERT [dbo].[fee] ([id], [tutorname], [studentname], [classname], [subjectname], [fee], [statues]) VALUES (3, N'joynal', N'sayem', N'Class 10', N'G.M', 1000, N'Pending')
INSERT [dbo].[fee] ([id], [tutorname], [studentname], [classname], [subjectname], [fee], [statues]) VALUES (4, N'joynal', N'mahmud', N'Class 9', N'ISLAM', 1000, N'Pending')
INSERT [dbo].[fee] ([id], [tutorname], [studentname], [classname], [subjectname], [fee], [statues]) VALUES (5, N'sabbo', N'sayem', N'Class 9', N'Chemistry', 1000, N'Pending')
INSERT [dbo].[fee] ([id], [tutorname], [studentname], [classname], [subjectname], [fee], [statues]) VALUES (6, N'sabbo', N'mahmud', N'Class 10', N'Math', 1000, N'Pending')
SET IDENTITY_INSERT [dbo].[fee] OFF
SET IDENTITY_INSERT [dbo].[genAtten] ON 

INSERT [dbo].[genAtten] ([id], [sub_name], [class_name], [otp_num], [atten_file]) VALUES (1, N'as', N'as', N'232', N'~/images/''as__as____232''.jpg')
SET IDENTITY_INSERT [dbo].[genAtten] OFF
SET IDENTITY_INSERT [dbo].[student_reg] ON 

INSERT [dbo].[student_reg] ([id], [icnumber], [fullname], [dateofbirth], [gender], [contact_no], [email], [parent_name], [p_contact_no], [p_icnumber], [full_address], [s_username], [s_status], [s_pass]) VALUES (2, 123, N'md sayem', CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'male', N'134560651', N'sayem@mail.com', N'habib', N'6016515661', 123, N'address1', N'sayem', N'Active', N'bfcX++36cvYV3gXb8nuJdw==')
INSERT [dbo].[student_reg] ([id], [icnumber], [fullname], [dateofbirth], [gender], [contact_no], [email], [parent_name], [p_contact_no], [p_icnumber], [full_address], [s_username], [s_status], [s_pass]) VALUES (5, 126, N'mahmud hasan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'mahmud', N'Pending', N'123')
SET IDENTITY_INSERT [dbo].[student_reg] OFF
SET IDENTITY_INSERT [dbo].[studenthomework_table] ON 

INSERT [dbo].[studenthomework_table] ([id], [homework_id], [homework_name], [subject_name], [tutor_name], [homework_desc], [homework_file]) VALUES (1, 1, N'Screenshot', N'Eng', N'Joynal Abedin', N'Screenshot des', N'~/homework_file/Screenshot_1.png')
SET IDENTITY_INSERT [dbo].[studenthomework_table] OFF
SET IDENTITY_INSERT [dbo].[subjectregister] ON 

INSERT [dbo].[subjectregister] ([id], [subjectname], [classname], [tutorname], [studentname]) VALUES (1, N'English', N'Class 9', N'Joynal Abedin', N'sayem')
INSERT [dbo].[subjectregister] ([id], [subjectname], [classname], [tutorname], [studentname]) VALUES (2, N'English', N'Class 10', N'sabbo uddin', N'mahmud')
INSERT [dbo].[subjectregister] ([id], [subjectname], [classname], [tutorname], [studentname]) VALUES (3, N'Chemistry', N'Class 9', N'Joynal Abedin', N'sayem')
INSERT [dbo].[subjectregister] ([id], [subjectname], [classname], [tutorname], [studentname]) VALUES (4, N'Biology', N'Class 10', N'Joynal Abedin', N'mahmud')
INSERT [dbo].[subjectregister] ([id], [subjectname], [classname], [tutorname], [studentname]) VALUES (5, N'G.M', N'Class 10', N'sabbo uddin', N'sayem')
INSERT [dbo].[subjectregister] ([id], [subjectname], [classname], [tutorname], [studentname]) VALUES (6, N'ISLAM', N'Class 9', N'Joynal Abedin', N'sayem')
SET IDENTITY_INSERT [dbo].[subjectregister] OFF
SET IDENTITY_INSERT [dbo].[subjects] ON 

INSERT [dbo].[subjects] ([SubjectId], [SubjectName]) VALUES (1, N'Biology')
INSERT [dbo].[subjects] ([SubjectId], [SubjectName]) VALUES (2, N'English')
INSERT [dbo].[subjects] ([SubjectId], [SubjectName]) VALUES (3, N'Math')
INSERT [dbo].[subjects] ([SubjectId], [SubjectName]) VALUES (4, N'G.M')
INSERT [dbo].[subjects] ([SubjectId], [SubjectName]) VALUES (5, N'Physics')
INSERT [dbo].[subjects] ([SubjectId], [SubjectName]) VALUES (6, N'Chemistry')
INSERT [dbo].[subjects] ([SubjectId], [SubjectName]) VALUES (7, N'ISLAM')
SET IDENTITY_INSERT [dbo].[subjects] OFF
SET IDENTITY_INSERT [dbo].[tutor_reg] ON 

INSERT [dbo].[tutor_reg] ([id], [icnumber], [fullname], [dob], [gender], [contact_no], [email], [full_address], [t_username], [t_pass]) VALUES (1, 123, N'Joynal Abedin', CAST(N'2022-04-07T00:00:00.000' AS DateTime), N'Male', N'324234234324', N'joynal@mail.com', N'Address2', N'joynal', N'bfcX++36cvYV3gXb8nuJdw==')
INSERT [dbo].[tutor_reg] ([id], [icnumber], [fullname], [dob], [gender], [contact_no], [email], [full_address], [t_username], [t_pass]) VALUES (2, 124, N'sabbo uddin', NULL, NULL, NULL, NULL, NULL, N'sabbo', N'bfcX++36cvYV3gXb8nuJdw==')
SET IDENTITY_INSERT [dbo].[tutor_reg] OFF
USE [master]
GO
ALTER DATABASE [tuitionDB] SET  READ_WRITE 
GO

USE [Final_Project]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 7/9/2024 5:02:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[accountID] [bigint] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[roleId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[accountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 7/9/2024 5:02:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[courseID] [varchar](10) NOT NULL,
	[courseName] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[courseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IC]    Script Date: 7/9/2024 5:02:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IC](
	[instructorID] [varchar](10) NOT NULL,
	[courseID] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[instructorID] ASC,
	[courseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Instructor]    Script Date: 7/9/2024 5:02:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Instructor](
	[instructorID] [varchar](10) NOT NULL,
	[instructorName] [nvarchar](50) NULL,
	[instructorEmail] [varchar](50) NULL,
	[instructorPhone] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[instructorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Major]    Script Date: 7/9/2024 5:02:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Major](
	[majorID] [varchar](10) NOT NULL,
	[majorName] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[majorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mark]    Script Date: 7/9/2024 5:02:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mark](
	[markID] [int] NOT NULL,
	[assigment] [real] NULL,
	[pt1] [real] NULL,
	[pt2] [real] NULL,
	[fe] [real] NULL,
	[average] [real] NULL,
	[instructorID] [varchar](10) NULL,
	[studentID] [varchar](10) NULL,
	[courseID] [varchar](10) NULL,
	[semesterId] [varchar](10) NULL,
	[classId] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[markID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 7/9/2024 5:02:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[roleID] [int] IDENTITY(1,1) NOT NULL,
	[roleName] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[roleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Semester]    Script Date: 7/9/2024 5:02:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Semester](
	[semesterID] [varchar](10) NOT NULL,
	[semesterName] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[semesterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 7/9/2024 5:02:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[studentID] [varchar](10) NOT NULL,
	[fullName] [nvarchar](50) NULL,
	[gender] [varchar](10) NULL,
	[dob] [varchar](50) NULL,
	[phone] [int] NULL,
	[email] [varchar](50) NULL,
	[address] [nvarchar](50) NULL,
	[classID] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[studentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentClass]    Script Date: 7/9/2024 5:02:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentClass](
	[classID] [varchar](10) NOT NULL,
	[majorID] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[classID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([accountID], [username], [password], [email], [roleId]) VALUES (4, N'admin', N'123', N'admin@fpt.edu.vn', 1)
INSERT [dbo].[Account] ([accountID], [username], [password], [email], [roleId]) VALUES (9, N'user', N'123', N'user@gmail.com', 2)
INSERT [dbo].[Account] ([accountID], [username], [password], [email], [roleId]) VALUES (12, N'kun', N'241123', N'kun241123@gmail.com', 1)
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
INSERT [dbo].[Course] ([courseID], [courseName]) VALUES (N'DBI202', N'Introduction to Databases')
INSERT [dbo].[Course] ([courseID], [courseName]) VALUES (N'JPD123', N'Elementary Japanese 1-A1.2')
INSERT [dbo].[Course] ([courseID], [courseName]) VALUES (N'PRJ301', N'Java Web Application Development')
GO
INSERT [dbo].[Instructor] ([instructorID], [instructorName], [instructorEmail], [instructorPhone]) VALUES (N'AnhNN59', N'Nguyễn Ngọc Anh', N'AnhNN72@fe.edu.vn', 423456789)
INSERT [dbo].[Instructor] ([instructorID], [instructorName], [instructorEmail], [instructorPhone]) VALUES (N'binhnv2', N'Ngô Văn Bình', N'', 971234568)
INSERT [dbo].[Instructor] ([instructorID], [instructorName], [instructorEmail], [instructorPhone]) VALUES (N'khuongpd', N'Phùng Duy Khương', N'', 981234567)
INSERT [dbo].[Instructor] ([instructorID], [instructorName], [instructorEmail], [instructorPhone]) VALUES (N'sonnt5', N'Ngô Tùng Sơn', N'sonnt69@fe.edu.vn', 97766999)
GO
INSERT [dbo].[Major] ([majorID], [majorName]) VALUES (N'HM', N'Hotel management')
INSERT [dbo].[Major] ([majorID], [majorName]) VALUES (N'IB', N'International business')
INSERT [dbo].[Major] ([majorID], [majorName]) VALUES (N'IOT', N'Internet of things')
INSERT [dbo].[Major] ([majorID], [majorName]) VALUES (N'JL', N'Japanese language')
INSERT [dbo].[Major] ([majorID], [majorName]) VALUES (N'KL', N'Korean language')
INSERT [dbo].[Major] ([majorID], [majorName]) VALUES (N'MC', N'Multimedia communication')
INSERT [dbo].[Major] ([majorID], [majorName]) VALUES (N'SE', N'Software engineer')
GO
INSERT [dbo].[Mark] ([markID], [assigment], [pt1], [pt2], [fe], [average], [instructorID], [studentID], [courseID], [semesterId], [classId]) VALUES (1, 8, 8, 8, 8, 8, N'AnhNN59', N'HE176306', N'JPD123', N'SU24', N'SE1872')
INSERT [dbo].[Mark] ([markID], [assigment], [pt1], [pt2], [fe], [average], [instructorID], [studentID], [courseID], [semesterId], [classId]) VALUES (2, 10, 10, 10, 10, 10, N'binhnv2', N'HE173472', N'DBI202', N'SU23', N'SE1872')
INSERT [dbo].[Mark] ([markID], [assigment], [pt1], [pt2], [fe], [average], [instructorID], [studentID], [courseID], [semesterId], [classId]) VALUES (3, 9, 9, 9, 9, 9, N'sonnt5', N'HE176129', N'PRJ301', N'SU24', N'SE1872')
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([roleID], [roleName]) VALUES (1, N'Admin')
INSERT [dbo].[Role] ([roleID], [roleName]) VALUES (2, N'User')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
INSERT [dbo].[Semester] ([semesterID], [semesterName]) VALUES (N'SU23', N'Summer 2023')
INSERT [dbo].[Semester] ([semesterID], [semesterName]) VALUES (N'SU24', N'Summer2024')
GO
INSERT [dbo].[Student] ([studentID], [fullName], [gender], [dob], [phone], [email], [address], [classID]) VALUES (N'HE173472', N'Hoàng Xuân Nam ', N'Male', N'2003-07-30', 213456789, N'namhxhe173472', N'Thanh Hóa', N'SE1872')
INSERT [dbo].[Student] ([studentID], [fullName], [gender], [dob], [phone], [email], [address], [classID]) VALUES (N'HE176129', N'Đồng Duy Nam', N'Male', N'2003-10-15', 312456789, N'namddhe176129@fpt.edu.vn', N'Tuyên Quang ', N'SE1872')
INSERT [dbo].[Student] ([studentID], [fullName], [gender], [dob], [phone], [email], [address], [classID]) VALUES (N'HE176306', N'Phạm Văn Tiền', N'Male', N'2003-02-27', 123456789, N'tienpvhe176306@fpt.edu.vn', N'Ninh Bình', N'SE1872')
GO
INSERT [dbo].[StudentClass] ([classID], [majorID]) VALUES (N'IOT1761', N'IOT')
INSERT [dbo].[StudentClass] ([classID], [majorID]) VALUES (N'JL1634', N'JL')
INSERT [dbo].[StudentClass] ([classID], [majorID]) VALUES (N'KL1551', N'KL')
INSERT [dbo].[StudentClass] ([classID], [majorID]) VALUES (N'MC1644', N'MC')
INSERT [dbo].[StudentClass] ([classID], [majorID]) VALUES (N'SE1677', N'SE')
INSERT [dbo].[StudentClass] ([classID], [majorID]) VALUES (N'SE1766', N'SE')
INSERT [dbo].[StudentClass] ([classID], [majorID]) VALUES (N'SE1872', N'SE')
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_Role1] FOREIGN KEY([roleId])
REFERENCES [dbo].[Role] ([roleID])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_Role1]
GO
ALTER TABLE [dbo].[IC]  WITH CHECK ADD FOREIGN KEY([courseID])
REFERENCES [dbo].[Course] ([courseID])
GO
ALTER TABLE [dbo].[IC]  WITH CHECK ADD FOREIGN KEY([instructorID])
REFERENCES [dbo].[Instructor] ([instructorID])
GO
ALTER TABLE [dbo].[Mark]  WITH CHECK ADD FOREIGN KEY([classId])
REFERENCES [dbo].[StudentClass] ([classID])
GO
ALTER TABLE [dbo].[Mark]  WITH CHECK ADD FOREIGN KEY([courseID])
REFERENCES [dbo].[Course] ([courseID])
GO
ALTER TABLE [dbo].[Mark]  WITH CHECK ADD FOREIGN KEY([instructorID])
REFERENCES [dbo].[Instructor] ([instructorID])
GO
ALTER TABLE [dbo].[Mark]  WITH CHECK ADD FOREIGN KEY([semesterId])
REFERENCES [dbo].[Semester] ([semesterID])
GO
ALTER TABLE [dbo].[Mark]  WITH CHECK ADD FOREIGN KEY([studentID])
REFERENCES [dbo].[Student] ([studentID])
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD FOREIGN KEY([classID])
REFERENCES [dbo].[StudentClass] ([classID])
GO
ALTER TABLE [dbo].[StudentClass]  WITH CHECK ADD FOREIGN KEY([majorID])
REFERENCES [dbo].[Major] ([majorID])
GO

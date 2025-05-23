USE [LibAtmtnSys]
GO
/****** Object:  Table [dbo].[BorrowedBooks]    Script Date: 5/21/2025 5:15:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BorrowedBooks](
	[BorrowID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[BookID] [int] NULL,
	[BorrowedDate] [date] NULL,
	[DueDate] [date] NULL,
	[ReturnedDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[BorrowID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BorrowedBooks]  WITH CHECK ADD FOREIGN KEY([BookID])
REFERENCES [dbo].[Books] ([BookID])
GO
ALTER TABLE [dbo].[BorrowedBooks]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO

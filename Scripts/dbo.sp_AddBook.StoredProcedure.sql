USE [LibAtmtnSys]
GO
/****** Object:  StoredProcedure [dbo].[sp_AddBook]    Script Date: 5/21/2025 5:36:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_AddBook]
@Title VARCHAR(100), @Category VARCHAR(50), @Author VARCHAR(100),
@ISBN VARCHAR(20), @Publisher VARCHAR(50), @Year INT, @Edition VARCHAR(20)
AS
BEGIN
INSERT INTO Books (Title, Category, Author, ISBN, Publisher, Year, Edition, IsAvailable)
VALUES (@Title, @Category, @Author, @ISBN, @Publisher, @Year, @Edition, 1)
END
GO

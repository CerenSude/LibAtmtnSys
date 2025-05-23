USE [LibAtmtnSys]
GO
/****** Object:  StoredProcedure [dbo].[sp_BorrowBook]    Script Date: 5/21/2025 5:36:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_BorrowBook]
@UserID INT, @BookID INT, @DueDate DATE
AS
BEGIN
INSERT INTO BorrowedBooks (UserID, BookID, BorrowedDate, DueDate)
VALUES (@UserID, @BookID, GETDATE(), @DueDate)
UPDATE Books SET IsAvailable = 0 WHERE BookID = @BookID
END
GO

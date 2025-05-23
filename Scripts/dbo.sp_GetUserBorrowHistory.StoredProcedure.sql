USE [LibAtmtnSys]
GO
/****** Object:  StoredProcedure [dbo].[sp_GetUserBorrowHistory]    Script Date: 5/21/2025 5:36:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetUserBorrowHistory]
@UserID INT
AS
BEGIN
SELECT b.Title, br.BorrowedDate, br.DueDate, br.ReturnedDate
FROM BorrowedBooks br INNER JOIN Books b ON br.BookID = b.BookID
WHERE br.UserID = @UserID
END
GO

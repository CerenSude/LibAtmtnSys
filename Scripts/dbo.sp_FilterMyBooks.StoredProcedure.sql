USE [LibAtmtnSys]
GO
/****** Object:  StoredProcedure [dbo].[sp_FilterMyBooks]    Script Date: 5/21/2025 5:36:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_FilterMyBooks]
@UserID INT, @Category VARCHAR(50), @Language VARCHAR(50), @StartYear INT, @EndYear INT
AS
BEGIN
SELECT b.* FROM BorrowedBooks br
INNER JOIN Books b ON br.BookID = b.BookID
WHERE br.UserID = @UserID AND b.Category = @Category AND b.Language = @Language
AND b.Year BETWEEN @StartYear AND @EndYear AND br.ReturnedDate IS NULL
END
GO

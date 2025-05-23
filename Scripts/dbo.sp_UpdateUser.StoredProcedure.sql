USE [LibAtmtnSys]
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateUser]    Script Date: 5/21/2025 5:36:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_UpdateUser]
@UserID INT, @Name VARCHAR(50), @Surname VARCHAR(50),
@Username VARCHAR(50), @Birthdate DATE, @Role VARCHAR(10)
AS
BEGIN
UPDATE Users SET Name=@Name, Surname=@Surname, Username=@Username,
Birthdate=@Birthdate, Role=@Role WHERE UserID = @UserID
END
GO

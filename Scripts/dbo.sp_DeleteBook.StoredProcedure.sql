USE [LibAtmtnSys]
GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteBook]    Script Date: 5/21/2025 5:36:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_DeleteBook]
@BookID INT
AS
BEGIN
DELETE FROM Books WHERE BookID = @BookID
END
GO

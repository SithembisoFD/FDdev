-- =============================================
-- Author:      christoff
-- Create Date: 17/03/2020
-- Description: This sp wil delete or add the role for the user based on the @DeleteEmployeeRole
-- =============================================
CREATE PROCEDURE [dbo].[sp_AddDeleteEmployeeRole]
(
 @RoleID int,
 @EmployeeID int,
 @DeleteEmployeeRole bit = 0
)
AS
BEGIN
DECLARE @EmployeeRoleID int = ISNULL((SELECT EmployeeRoleID From EmployeeRole WHERE EmployeeID = @EmployeeID AND RoleID = @RoleID),0)
	IF(@DeleteEmployeeRole = 1)
		BEGIN
		DELETE FROM EmployeeRole WHERE EmployeeRoleID = @EmployeeRoleID
		END
	ELSE
		BEGIN
			IF(@EmployeeRoleID <= 0 )
			BEGIN
			INSERT INTO EmployeeRole (EmployeeID,RoleID) VALUES (@EmployeeID,@RoleID)
			END
		END

END

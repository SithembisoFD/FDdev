CREATE PROCEDURE sp_CheckEmployeeRole
(
@EmployeeID int,
@RoleName varchar(50) = '',
@RoleID int = 0
)
AS
BEGIN
DECLARE @ReturnVal bit = 1;
	IF(@RoleName IS NOT NULL)
		BEGIN
			SET @ReturnVal = (SELECT COUNT(*) FROM EmployeeRole AS E INNER JOIN Role AS R ON R.Name = @RoleName AND E.EmployeeID = @EmployeeID)
		END
			IF(@RoleID > 0)
		BEGIN
			SET @ReturnVal = (SELECT COUNT(*) FROM EmployeeRole WHERE EmployeeID = @EmployeeID AND RoleID = @RoleID)
		END
	SELECT @ReturnVal
END

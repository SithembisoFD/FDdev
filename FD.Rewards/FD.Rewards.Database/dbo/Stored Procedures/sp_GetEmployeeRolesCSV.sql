-- =============================================
-- Author:      <Author, , Name>
-- Create Date: <Create Date, , >
-- Description: <Description, , >
-- =============================================
CREATE PROCEDURE sp_GetEmployeeRolesCSV
(
@EmployeeID int
)
AS
BEGIN
DECLARE @listStr VARCHAR(MAX)
SELECT @listStr = COALESCE(@listStr+',' ,'') + R.Name
FROM Role AS R INNER JOIN EmployeeRole AS ER ON R.RoleID = ER.RoleID AND ER.EmployeeID = @EmployeeID
SELECT @listStr as EmployeeRolesCSV
END

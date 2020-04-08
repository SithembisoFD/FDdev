-- =============================================
-- Author:      <Author, , Name>
-- Create Date: <Create Date, , >
-- Description: <Description, , >
-- =============================================
CREATE PROCEDURE GetEmployeeRoles
(
@EmployeeID int
)
AS
BEGIN
SELECT R.RoleID,R.Name,R.DisplayName,E.EmployeeRoleID FROM Role AS R
INNER JOIN EmployeeRole AS E ON E.RoleID = R.RoleID AND E.EmployeeID = @EmployeeID
END

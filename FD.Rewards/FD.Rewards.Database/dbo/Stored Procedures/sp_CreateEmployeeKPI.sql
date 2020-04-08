-- =============================================
-- Author:      Morne Kellerman
-- Create Date: 2020-03-30
-- Description: Creates an Employee KPI Record with the default status
-- =============================================
CREATE PROCEDURE [dbo].[sp_CreateEmployeeKPI]
(
    @Description varchar(max),
	@EmployeeID int,
	@PointMatrixID int,
	@CreatedBy varchar(100)
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

	DECLARE @EmployeeKPIStatusID int = (SELECT TOP 1 EmployeeKPIStatusID FROM EmployeeKPIStatus WHERE StatusDescription = 'PendingEmployeeApproval');

    INSERT INTO EmployeeKPI (Description, EmployeeID, PointMatrixID, CreatedDate, CreatedBy, IsApproved, EmployeeKPIStatusID)
	VALUES (@Description, @EmployeeID, @PointMatrixID, GETDATE(), @CreatedBy, 0, @EmployeeKPIStatusID);

	SELECT @@IDENTITY as CreatedEmployeeKPIID;
END

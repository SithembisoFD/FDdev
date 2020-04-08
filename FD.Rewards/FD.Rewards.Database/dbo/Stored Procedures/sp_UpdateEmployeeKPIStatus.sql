-- =============================================
-- Author:      Morne Kellerman
-- Create Date: 2020-03-30
-- Description: Updates an EmployeeKPI record status
-- =============================================
CREATE PROCEDURE [dbo].[sp_UpdateEmployeeKPIStatus]
(
    @EmployeeKPIID int,
	@EmployeeKPIStatusDescription varchar(50)
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

    DECLARE @EmployeeKPIStatusID int = (SELECT TOP 1 EmployeeKPIStatusID FROM EmployeeKPIStatus WHERE StatusDescription = @EmployeeKPIStatusDescription);

	IF @EmployeeKPIStatusID IS NOT NULL
	BEGIN
		UPDATE EmployeeKPI SET EmployeeKPIStatusID = @EmployeeKPIStatusID WHERE UserKpiID = @EmployeeKPIID;
	END
END

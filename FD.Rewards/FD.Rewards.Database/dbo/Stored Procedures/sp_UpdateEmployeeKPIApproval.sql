-- =============================================
-- Author:      Morne Kellerman
-- Create Date: 2020-03-30
-- Description: Updates an EmployeeKPI record status to approved
-- =============================================
CREATE PROCEDURE [dbo].[sp_UpdateEmployeeKPIApproval]
(
    @EmployeeKPIID int,
	@IsApproved bit
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

    IF @EmployeeKPIID > 0
	BEGIN
		UPDATE EmployeeKPI SET IsApproved = @IsApproved WHERE UserKpiID = @EmployeeKPIID;

		DECLARE @EmployeeKPIStatusDescription varchar(50);

		IF @IsApproved = 1
		BEGIN
			SET @EmployeeKPIStatusDescription = 'InProgress';
		END
		ELSE
		BEGIN
			SET @EmployeeKPIStatusDescription = 'EmployeeRejected';
		END

		exec sp_UpdateEmployeeKPIStatus @EmployeeKPIID, @EmployeeKPIStatusDescription
	END
END

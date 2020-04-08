 CREATE Procedure [dbo].[sp_AwardExplicitEmployeeRewardPoints]
(
@ExplicitRewardPointValue int,
@EmployeeID int
)
AS
BEGIN
DECLARE @EmployeeTotalPoint int =(SELECT [TotalPoints]  FROM [dbo].[EmployeeRewardPoints] WHERE [EmployeeID] = @EmployeeID)
BEGIN
	UPDATE [EmployeeRewardPoints] SET TotalPoints = (@EmployeeTotalPoint + @ExplicitRewardPointValue) WHERE EmployeeID = @EmployeeID		
	SELECT 1;
	END
END

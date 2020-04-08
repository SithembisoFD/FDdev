 create Procedure [dbo].[sp_AwardEmployeeRewardPoints]
(
@PointMatrixID int,
@EmployeeID int
)
AS
BEGIN
DECLARE @RewardPointValue int = (SELECT [RewardPointValue] FROM [dbo].[PointMatrix] Where PointMatrixID = @PointMatrixID)
DECLARE @EmployeeTotalPoint int =(SELECT [TotalPoints]  FROM [dbo].[EmployeeRewardPoints] WHERE [EmployeeID] = @EmployeeID)

BEGIN
	UPDATE [EmployeeRewardPoints] SET TotalPoints = (@EmployeeTotalPoint + @RewardPointValue) WHERE EmployeeID = @EmployeeID		
	SELECT 1;
	END
END

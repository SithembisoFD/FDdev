 CREATE Procedure [dbo].[sp_ClaimEmployeeRewardPoints]
(
@RewardPoints int,
@EmployeeID int
)
as
BEGIN
DECLARE @EmployeeTotalPoint int =(SELECT [TotalPoints]  FROM [dbo].[EmployeeRewardPoints] WHERE [EmployeeID] = @EmployeeID)

IF(@EmployeeTotalPoint > @RewardPoints)
	BEGIN
		UPDATE [EmployeeRewardPoints] SET TotalPoints = (@EmployeeTotalPoint - @RewardPoints) WHERE EmployeeID = @EmployeeID
	END
END



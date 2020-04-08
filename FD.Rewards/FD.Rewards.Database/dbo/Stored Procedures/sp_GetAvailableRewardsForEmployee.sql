-- =============================================
-- Author:      <Author, , Name>
-- Create Date: <Create Date, , >
-- Description: <Description, , >
-- =============================================
CREATE PROCEDURE [dbo].[sp_GetAvailableRewardsForEmployee]
(
    @EmployeeID int
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

    DECLARE @AvailablePoints INT = (SELECT TOP 1 TotalPoints FROM [dbo].[EmployeeRewardPoints] WHERE [EmployeeID] = @EmployeeID)

	SELECT reward.Description as RewardDescription,RewardPointsCost,RewardID, IsDeleted
	FROM dbo.Reward reward 
		WHERE RewardPointsCost < @AvailablePoints
		AND IsDeleted = 0
END

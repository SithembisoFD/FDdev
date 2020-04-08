
-- =============================================
-- Author:      <Author, , Name>
-- Create Date: <Create Date, , >
-- Description: <Description, , >
-- =============================================
CREATE PROCEDURE [dbo].[sp_AddReward]
(
@Description varchar(50),
@CreatedBy varchar(50),
@IsDeleted bit = 0,
@RewardPointsCost int
)
AS
BEGIN
INSERT INTO [dbo].[Reward]
           ([Description]
           ,[CreatedBy]
           ,[IsDeleted]
		   ,[RewardPointsCost])
     VALUES
           (@Description
           ,@CreatedBy
           ,@IsDeleted
		   ,@RewardPointsCost)
END

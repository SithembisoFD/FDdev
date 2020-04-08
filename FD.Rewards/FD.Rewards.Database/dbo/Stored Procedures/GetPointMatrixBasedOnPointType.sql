
CREATE PROCEDURE GetPointMatrixBasedOnPointType
(
@PointType int,
@IsDeleted bit = 0
)
AS
BEGIN
SELECT [PointMatrixID]
      ,[Description]
      ,[IsDeleted]
      ,[PointTypeID]
      ,[PointValue]
      ,[RewardPointValue]
      ,[CreatedBy]
      ,[CreatedDate]
  FROM [dbo].[PointMatrix]
  WHERE PointTypeID = @PointType
  AND IsDeleted = IsDeleted
END

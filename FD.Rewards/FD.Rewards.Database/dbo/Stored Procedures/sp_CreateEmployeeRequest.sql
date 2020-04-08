-- =============================================
-- Author:      Morne Kellerman
-- Create Date: 2020-03-30
-- Description: Creates an Employee Request for points
-- =============================================
CREATE PROCEDURE [dbo].[sp_CreateEmployeeRequest]
(
    @RequestNote nvarchar(50) = null,
	@AttachmentID int = null,
	@CreatedBy nvarchar(200),
	@EmployeeID int,
	@PointMatrixID int
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

	INSERT INTO EmployeeRequest (RequestNote, AttachmentID, CreatedDate, CreatedBy, EmployeeID, PointMatixID)
	VALUES (@RequestNote, @AttachmentID, GETDATE(), @CreatedBy, @EmployeeID, @PointMatrixID);

    SELECT @@IDENTITY as CreatedEmployeeRequestID;
END

-- =============================================
-- Author:      <Author, , Name>
-- Create Date: <Create Date, , >
-- Description: <Description, , >
-- =============================================
CREATE PROCEDURE EmployeeEnrolEvent
(
@EmployeeID int,
@EventID int
)
AS
BEGIN
DECLARE @EmployeeEventID INT = ISNULL((SELECT EmployeeEventID FROM EmployeeEvent WHERE EmployeeID = @EmployeeID AND EventID = @EventID),0)
DECLARE @ReturnVal VARCHAR(50)
IF (@EmployeeEventID > 0) 
	BEGIN
		SET @ReturnVal = 'Already Enrolled'
	END
ELSE
	BEGIN
		
		INSERT INTO EmployeeEvent (EmployeeID,EventID,CreatedDate) VALUES (@EmployeeID,@EventID,GETDATE())
		SET @ReturnVal = 'Enrolled'
		--CHECK IF EVENT IS SOCIAL CLUB EVENT
		DECLARE @EventSocialClubID INT = ISNULL((SELECT SocialClubID FROM SocialClubEvent WHERE EventID = @EventID),0)
		IF(@EventSocialClubID > 0)
			BEGIN
				DECLARE @EmployeeSocialClub INT = ISNULL((SELECT EmployeeID FROM EmployeeSocialClub WHERE EmployeeID = @EmployeeID AND SocialClubID = @EventSocialClubID),0)
				IF(@EmployeeSocialClub <= 0)
					BEGIN				
						INSERT INTO EmployeeSocialClub (EmployeeID,SocialClubID,CreatedDate) VALUES (@EmployeeID,@EventSocialClubID,GETDATE())
						SET @ReturnVal = 'Enrolled and subscribed to Social Club'
					END
			END
	END

SELECT @ReturnVal AS ReturnResult
END

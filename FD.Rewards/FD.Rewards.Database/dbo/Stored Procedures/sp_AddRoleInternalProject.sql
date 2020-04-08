-- =============================================
-- Author:      <Author, , Name>
-- Create Date: <Create Date, , >
-- Description: <Description, , >
-- =============================================
CREATE PROCEDURE sp_AddRoleInternalProject
(
@RoleName varchar(50),
@DisplayName varchar(50),
@IsActive bit = 1
)
AS
BEGIN
INSERT INTO [dbo].[Role]
           ([Name]
           ,[DisplayName]
           ,[IsActive])
     VALUES
           (@RoleName
           ,@DisplayName
           ,@IsActive)
END

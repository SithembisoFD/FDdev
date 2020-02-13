ALTER ROLE [db_owner] ADD MEMBER [christoff@firsttech.digital];


GO
ALTER ROLE [db_owner] ADD MEMBER [usr_fd_internal];


GO
sys.sp_addrolemember @rolename = N'db_owner', @membername = N'usr_fd_internal'
GO
sys.sp_addrolemember @rolename = N'db_owner', @membername = N'christoff@firsttech.digital'
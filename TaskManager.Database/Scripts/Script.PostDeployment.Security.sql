IF NOT EXISTS (SELECT * FROM sys.syslogins WHERE [name] = N'TaskManagerLogin')
BEGIN
	CREATE LOGIN TaskManagerLogin WITH PASSWORD=N'Test1234=' -- Login Sql Server
	--CREATE LOGIN [<domainName>\<login_name>] FROM WINDOWS;
	--CREATE LOGIN [TECHNOFUTURTIC\FORMA1900] FROM WINDOWS; -- Login Windows
END


IF NOT EXISTS (SELECT * FROM sys.sysusers WHERE [name] = N'TaskManagerUser')
BEGIN
	CREATE USER TaskManagerUser FOR LOGIN TaskManagerLogin;
	ALTER ROLE AppUserRole ADD MEMBER TaskManagerUser;
	ALTER ROLE AppUserRoleStagiaire ADD MEMBER TaskManagerUser;
END
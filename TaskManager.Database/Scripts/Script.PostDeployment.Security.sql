
IF NOT EXISTS (SELECT * FROM sys.syslogins WHERE [name] = N'TaskManagerLogin')
BEGIN
	CREATE LOGIN TaskManagerLogin WITH PASSWORD=N'Test1234='
END


IF NOT EXISTS (SELECT * FROM sys.sysusers WHERE [name] = N'TaskManagerUser')
BEGIN
	CREATE USER TaskManagerUser FOR LOGIN TaskManagerLogin;
	ALTER ROLE AppUser ADD MEMBER TaskManagerUser;
END
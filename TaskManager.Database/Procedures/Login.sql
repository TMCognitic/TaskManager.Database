CREATE PROCEDURE [AppUser].[Login]
	@Email NVARCHAR(384),
	@Passwd NVARCHAR(20)
AS
BEGIN
	SELECT Id, Nom, Prenom, Email
	FROM Utilisateur
	WHERE Email = @Email AND Passwd = dbo.CreatePasswd(@Passwd);
END
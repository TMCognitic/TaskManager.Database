CREATE PROCEDURE [AppUserSchema].[Register]
	@Nom NVARCHAR(50),
	@Prenom NVARCHAR(50),
	@Email NVARCHAR(384),
	@Passwd NVARCHAR(20)
AS
BEGIN
	BEGIN TRY
		IF LEN(TRIM(@Nom)) = 0
		BEGIN
			RAISERROR (N'Invalid value in @Nom', 17, 1);
		END

		IF LEN(TRIM(@Prenom)) = 0
		BEGIN
			RAISERROR (N'Invalid value in @Prenom', 17, 1);
		END

		INSERT INTO Utilisateur (Nom, Prenom, Email, Passwd)
		VALUES (@Nom, @Prenom, @Email, dbo.CreatePasswd(@Passwd));
	END TRY
	BEGIN CATCH
		DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
		DECLARE @ErrorSeverity INT = ERROR_SEVERITY();
		DECLARE @ErrorState INT = ERROR_STATE();
		
		RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);
		RETURN
	END CATCH
END
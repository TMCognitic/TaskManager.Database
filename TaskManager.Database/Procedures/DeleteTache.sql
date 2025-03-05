CREATE PROCEDURE [AppUserSchema].[DeleteTache]
	@Id INT,
	@UtilisateurId INT
AS
BEGIN
	DELETE
	FROM Tache
	WHERE [UtilisateurId] = @UtilisateurId AND Id = @Id;
END

CREATE ROLE [AppUserRoleStagiaire]
GO

DENY EXECUTE ON [AppUserSchema].[DeleteTache] TO [AppUserRoleStagiaire]
GO

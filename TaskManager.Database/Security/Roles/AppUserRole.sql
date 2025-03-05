CREATE ROLE [AppUserRole]
GO

GRANT EXECUTE ON Schema::AppUserSchema TO [AppUserRole]
--(REVOKE|GRANT|DENY) <Action> ON <Objet> TO <à qui>
GO

-- REVOKE (Rien n'est défini) -> Pas de droit par défaut
-- GRANT (Autoriser) : L'emporte sur le REVOKE
-- DENY (Refus Explicite) : L'emporte sur le GRANT
.mode columns
.header on
.nullvalue NULL

PRAGMA foreign_keys = ON;

/*Assegura que não existe mais do que um jogador com o mesmo numero na mesma equipa*/


CREATE TRIGGER IF NOT EXISTS ValidarJogador
BEFORE INSERT ON Jogador
FOR EACH ROW
WHEN
    EXISTS(SELECT * FROM Jogador as J 
	WHERE J.idEquipa=NEW.idEquipa AND J.numero=NEW.numero) 
BEGIN 
    SELECT RAISE(ABORT , 'Numeroo de jogador já ocupado');
END;
.mode columns
.header on
.nullvalue NULL

PRAGMA foreign_keys = ON;

/*Assegura que não existem mais de duas equipas com a mesma classificação na mesma jornada*/


CREATE TRIGGER IF NOT EXISTS JornadaLimit
BEFORE INSERT ON JornadaEquipa
FOR EACH ROW
WHEN
    EXISTS(SELECT * FROM JornadaEquipa as J 
	WHERE J.idJornada=NEW.idJORNADA AND (J.idEquipa=NEW.idEquipa OR J.classificacao=NEW.classificacao)) 
BEGIN 
    SELECT RAISE(ABORT , 'Equipa já existe nesta jornada ou classificação já ocupada');
END;
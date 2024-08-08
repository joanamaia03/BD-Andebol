.mode columns
.header on
.nullvalue NULL

PRAGMA foreign_keys = ON;

.print ''
.print 'Classificação e Estado da equipa Sporting na primeira Jornada'
.print ''

CREATE VIEW IF NOT EXISTS SportingJornada1 AS
SELECT JornadaEquipa.idEquipa, Estado.situacao
FROM JornadaEquipa, Estado
WHERE JornadaEquipa.idJornada=1 AND Estado.idJornada=1 AND JornadaEquipa.idEquipa=1 AND Estado.idEquipa=1;

SELECT * 
FROM SportingJornada1;

.print ''
.print 'Tentar mudar a classificaçao da equipa para 7 (implica mudança de estado)'
.print ''

UPDATE JornadaEquipa
SET classificacao = '7º lugar'
WHERE JornadaEquipa.idJornada=1 AND JornadaEquipa.idEquipa=1;

.print ''
.print ''

.print ''
.print 'Classificação e Estado da equipa Sporting na primeira Jornada:'
.print ''

SELECT * 
FROM SportingJornada1;

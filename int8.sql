.mode columns
.header on
.nullvalue NULL

/*Estado de cada equipa em cada jornada*/

SELECT  EQ.nome, J.idJornada, ES.situacao
FROM Estado ES NATURAL JOIN Equipa EQ NATURAL JOIN Jornada J
WHERE ES.idEquipa=EQ.idEquipa AND ES.idJornada=J.idJornada
GROUP BY EQ.nome, J.idJornada
ORDER BY J.idJornada,EQ.nome;






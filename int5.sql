.mode columns
.header on
.nullvalue NULL

/*Máximo de golos por jornada por equipa*/

SELECT max(JE.golos) AS MaxGolos, JE.idJornada, E.nome
FROM JornadaEquipa JE, Equipa E
WHERE JE.idEquipa=E.idEquipa
GROUP BY JE.idJornada,E.nome;


.mode columns
.header on
.nullvalue NULL

/*Número de jogos no mês de Setembro*/

SELECT count(*) AS NumJogos
FROM JornadaEquipa JE NATURAL JOIN Jogo JG NATURAL JOIN Jornada JN
WHERE JE.idJornada=JN.idJornada AND JG.idJornada=JN.idJornada AND JG.dataJogo BETWEEN '2021-01-09' AND '2021-30-09';


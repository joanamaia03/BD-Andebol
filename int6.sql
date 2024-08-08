.mode columns
.header on
.nullvalue NULL

/*Número de jornadas com pelo menos 3 empates*/

SELECT JE.nmrEmpates, count(*) AS NumJornadas
FROM JornadaEquipa JE, Jornada J
WHERE JE.idJornada=J.idJornada AND JE.nmrEmpates>=3
GROUP BY JE.nmrEmpates;

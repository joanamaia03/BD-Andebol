.mode columns
.headers on
.nullvalue NULL

/*Equipas que ficaram nos 3 primeiros lugares da jornada 30*/
SELECT E.nome, JE.classificacao,JE.pontosNaJornada
FROM Equipa E JOIN JornadaEquipa JE JOIN Jornada J 
ON JE.idEquipa=E.idEquipa AND JE.idJornada=J.idJornada
WHERE J.idJornada=30
ORDER BY JE.pontosNaJornada DESC
LIMIT 3;


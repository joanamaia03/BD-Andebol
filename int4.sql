.mode columns
.header on
.nullvalue NULL

/*Listagem das equipas que tiveram mais vitórias do que derrotas*/

SELECT E.nome, sum(JE.nmrVitorias) AS NumVitorias, sum(JE.nmrDerrotas) AS NumDerrotas
FROM Equipa E NATURAL JOIN JornadaEquipa JE
WHERE JE.idEquipa=E.idEquipa AND JE.nmrVitorias>JE.nmrDerrotas
GROUP BY E.nome
ORDER BY NumVitorias, NumDerrotas;

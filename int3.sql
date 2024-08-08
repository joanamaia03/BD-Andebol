.mode columns
.headers on
.nullvalue NULL

/*Qual é o número médio de golos por jogador*/

SELECT ROUND(avg(cond.numGolos),2) AS mediaGolos
FROM (SELECT count(*) AS numGolos FROM Marcador M, Jogador J WHERE M.idJogador=J.idJogador GROUP BY J.nome) AS cond;
.mode columns
.header on
.nullvalue NULL

/*Nomes dos jogadores que marcaram no mesmo jogo que o jogador Rui Batista*/

SELECT J.nome
FROM Jogador J JOIN Marcador M JOIN Jogo JG ON J.idJogador=M.idJogador AND M.idJogo=JG.idJogo
WHERE JG.idJogo = (SELECT idJogo FROM Marcador M2 JOIN Jogador J2 ON M2.idJogador = J2.idJogador WHERE J2.nome = "Rui Baptista");



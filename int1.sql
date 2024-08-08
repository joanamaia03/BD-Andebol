.mode columns
.headers on
.nullvalue NULL

/*Listagem do número de jogadores com a posição Ponta de cada equipa*/

SELECT E.nome, count(*) AS numJogadores
FROM Equipa E, Jogador J
WHERE J.idEquipa=E.idEquipa AND J.posicao="Ponta"
GROUP BY E.nome;

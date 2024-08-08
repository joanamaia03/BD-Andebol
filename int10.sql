.mode columns
.header on
.nullvalue NULL

/*Número de equipas com pelo menos 2 jogadores que marcaram golo na jornada 1*/


SELECT COUNT(*) as NumEquipas
FROM (
  SELECT E.idEquipa, COUNT(M.idJogador) as NumGolos
  FROM Equipa E
  JOIN Jogador J ON J.idEquipa = E.idEquipa
  JOIN Marcador M ON M.idJogador = J.idJogador
  JOIN Jogo JG ON JG.idJogo = M.idJogo
  JOIN Jornada JN ON JN.idJornada = JG.idJornada
  WHERE JN.idJornada = 1
  GROUP BY E.idEquipa
  HAVING NumGolos >= 2
) ;
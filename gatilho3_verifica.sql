.mode columns
.header on
.nullvalue NULL

PRAGMA foreign_keys = ON;

.print ''
.print 'Numero e nome dos jogadores da equipa ABC'
.print ''

CREATE VIEW EquipaABC AS
SELECT Jogador.numero, Jogador.nome
FROM Jogador
WHERE Jogador.idEquipa=14
ORDER BY Jogador.numero;

SELECT * 
FROM EquipaABC;

.print ''
.print 'Tentar acrescentar um jogador com o numero 23'
.print ''

insert into Jogador(nome,dataNasc,posicao,numero,idEquipa) values ('Pedro Barros','2003-08-15','Central',23,14);

.print ''
.print ''

.print ''
.print 'Numero e nome dos jogadores da equipa ABC (Como se pode verificar o jogador não foi adicionado)'
.print ''

SELECT * 
FROM EquipaABC;

.print ''
.print 'Tentar acrescentar um jogador com o numero 22'
.print ''

insert into Jogador(nome,dataNasc,posicao,numero,idEquipa) values ('Pedro Barros','2003-08-15','Central',22,14);

.print ''
.print ''

.print ''
.print 'Numero e nome dos jogadores da equipa ABC (Como se pode verificar o jogador foi adicionado)'
.print ''

SELECT * 
FROM EquipaABC;

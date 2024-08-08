.mode columns
.header on
.nullvalue NULL

PRAGMA foreign_keys = ON;

.print ''
.print 'Equipas e respetivas classificações na jornada 30'
.print ''

CREATE VIEW Jornada30Classificacoes AS
SELECT JornadaEquipa.idEquipa, JornadaEquipa.classificacao
FROM JornadaEquipa
WHERE JornadaEquipa.idJornada=30
ORDER BY JornadaEquipa.pontosNaJornada DESC,JornadaEquipa.golos DESC;

SELECT * 
FROM Jornada30Classificacoes;


.print ''
.print 'Tentar inserir equipa com classificaçao = 7º lugar e nome diferente'
.print ''

insert into JornadaEquipa(idJornada, idEquipa, classificacao, pontosNaJornada, nmrJogos, nmrVitorias, nmrEmpates, nmrDerrotas, golos) values (30,3,'7º lugar',61,30,13,5,12,878);

.print ''
.print ''

.print ''
.print 'Equipas e respetivas classificações na jornada 30 (como se pode verificar, a equipa não foi inserida):'
.print ''

SELECT * 
FROM Jornada30Classificacoes;


.print ''
.print 'Tentar inserir equipa com classificaçao = 8º lugar e nome igual'
.print ''

insert into JornadaEquipa(idJornada, idEquipa, classificacao, pontosNaJornada, nmrJogos, nmrVitorias, nmrEmpates, nmrDerrotas, golos) values (30,4,'8º lugar',61,30,13,5,12,878);

.print ''
.print ''

.print ''
.print 'Equipas e respetivas classificações na jornada 30 (como se pode verificar, a equipa não foi inserida):'
.print ''

SELECT * 
FROM Jornada30Classificacoes;


.print ''
.print 'Tentar inserir equipa com classificaçao = 8º lugar e nome diferente'
.print ''

insert into JornadaEquipa(idJornada, idEquipa, classificacao, pontosNaJornada, nmrJogos, nmrVitorias, nmrEmpates, nmrDerrotas, golos) values (30,3,'8º lugar',61,30,13,5,12,878);

.print ''
.print 'Equipas e respetivas classificações na jornada 30 (como se pode verificar, a equipa foi inserida):'
.print ''

SELECT * 
FROM Jornada30Classificacoes;

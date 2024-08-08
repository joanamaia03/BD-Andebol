PRAGMA foreign_keys = ON;

/*Jornada(idJornada, nomeDaJornada)*/


insert into Jornada(nomeDaJornada) values 
('Jornada 1'),('Jornada 2'),('Jornada 3'),('Jornada 4'),('Jornada 5'),
('Jornada 6'),('Jornada 7'),('Jornada 8'),('Jornada 9'),('Jornada 10'),
('Jornada 11'),('Jornada 12'),('Jornada 13'),('Jornada 14'),('Jornada 15'),
('Jornada 16'),('Jornada 17'),('Jornada 18'),('Jornada 19'),('Jornada 20'),
('Jornada 21'),('Jornada 22'),('Jornada 23'),('Jornada 24'),('Jornada 25'),
('Jornada 26'),('Jornada 27'),('Jornada 28'),('Jornada 29'),('Jornada 30');

SELECT * FROM Jornada;

/*Clube (idClube, nome, morada, anoDeFundacao)*/

insert into Clube(nome, anoDeFundacao) values 
 ('Sporting Clube de Portugal', '1932'),
 ('Futebol Clube do Porto', '1932'),
 ('Futebol Clube de Gaia', '1908'),
 ('Vitoria Futebol Clube', '1910'),
 ('Povoa Andebol Clube', '2003'),
 ('Sport Lisboa e Benfica', '1932'),
 ('Associacaoo Atletica de Aguas Santas', '1962'),
 ('Associacao Desportiva e Academica da Maia - Universidade da Maia', '1990'),
 ('Academico Maritimo Madeira Andebol SAD', '1998'),
 ('Associacao Desportiva Sanjoanense', '1924'),
 ('Clube Desportivo Xico Andebol', '2009'),
 ('Associacao Artistica de Avanca', '1956'),
 ('Clube de Futebol Os Belenenses', '1919'),
 ('Academico Basket Clube', '1933'),
 ('Boa-Hora Futebol Clube', '1918'),
 ('Sporting Clube da Horta', '1923');
 
 SELECT * FROM Clube;

/*Equipa (idEquipa, nome, idClube->Clube)*/

insert into Equipa(nome, idClube) values 
('Sporting',1),('FC Porto',2),('FC Gaia',3),('Vitória FC',4),('Póvoa AC',5),
('Benfica',6),('Aguas Santas',7),('ADA Maia',8),('Madeira SAD',9),
('AD Sanjoanense',10),('Xico Andebol',11),('Artística de Avanca',12),
('Belenenses',13),('ABC',14),('Boa-Hora',15),('SC-Hora', 16);

SELECT * FROM Equipa;

/* Estado (idEquipa->Equipa, idJornada->Jornada, situacao) */

insert into Estado(idEquipa, idJornada, situacao) values
(1,1,'competição europeia'),(2,1,'competição europeia'),(3,1,'competição europeia'),
(4,1,'competição europeia'),(5,1,'competição europeia'),(6,1,'sem situação'),
(7,1,'sem situação'),(8,1,'sem situação'),(9,1,'sem situação'),
(10,1,'sem situação'),(11,1,'sem situação'),(12,1,'sem situação'),
(13,1,'liguilha'),(14,1,'liguilha'),(15,1,'despromoção'),(16,1,'despromoção');

insert into Estado(idEquipa, idJornada, situacao) values
(7,2,'competição europeia'),(1,2,'competição europeia'),(6,2,'competição europeia'),
(2,2,'competição europeia'),(3,2,'competição europeia'),(5,2,'sem situação'),
(10,2,'sem situação'),(4,2,'sem situação'),(8,2,'sem situação'),
(12,2,'sem situação'),(13,2,'sem situação'),(16,2,'sem situação'),
(9,2,'liguilha'),(11,2,'liguilha'),(15,2,'despromoção'),(14,2,'despromoção');


SELECT * FROM Estado;

/* Jogo (idJogo, dataJogo, idJornada->Jornada, resultado) */

insert into Jogo(dataJogo, idJornada, resultado) values 
('2021-18-09',1,'22-30'),('2021-18-09',1,'31-23'),
('2021-18-09',1,'22-29'),('2021-18-09',1,'36-28'),
('2021-18-09',1,'45-26'),('2021-18-09',1,'21-22'),
('2021-19-09',1,'38-25'),('2021-13-10',1,'27-30'),
('2021-24-09',2,'34-23'),('2021-25-09',2,'21-33'),
('2021-25-09',2,'30-27'),('2021-25-09',2,'24-27'),
('2021-25-09',2,'34-31'),('2021-25-09',2,'22-30'),
('2021-26-09',2,'33-22'),('2021-30-11',2,'25-28'),
('2021-06-04',30,'35-26'),('2021-06-04',30,'33-35'),
('2021-06-04',30,'22-27'),('2021-06-04',30,'30-34'),
('2021-06-04',30,'36-26'),('2021-06-04',30,'34-28'),
('2021-06-04',30,'31-32'),('2021-06-04',30,'29-29');

SELECT * FROM Jogo;

/* Visitada (idJogo->Jogo, idEquipa->Equipa) */

insert into Visitada(idJogo, idEquipa) values 
(1,14),(2,7),(3,15),(4,3),(5,1),(6,10),(7,2),(8,12),
(9,6),(10,4),(11,13),(12,11),(13,12),(14,8),(15,2),(16,16);

SELECT * FROM Visitada;

/* Visitante (idJogo->Jogo, idEquipa->Equipa) */

insert into Visitante(idJogo, idEquipa) values 
(1,8),(2,9),(3,4),(4,13),(5,11),(6,5),(7,2),(8,12),
(9,9),(10,1),(11,15),(12,10),(13,14),(14,3),(15,5),(16,7);

SELECT * FROM Visitante;

/* JornadaEquipa (idJornada->Jornada, idEquipa->Equipa, classificacao, pontosNaJornada, nmrJogos, nmrVitoria, nmrEmpate, nmrDerrota, golos) */

insert into JornadaEquipa(idJornada, idEquipa, classificacao, pontosNaJornada, nmrJogos, nmrVitorias, nmrEmpates, nmrDerrotas, golos) values
(1,1,'1º lugar',3,1,1,0,0,45),(1,2,'2º lugar',3,1,1,0,0,38),(1,3,'3º lugar',3,1,1,0,0,36),
(1,4,'4º lugar',3,1,1,0,0,29),(1,5,'5º lugar',3,1,1,0,0,22),(1,6,'6º lugar',3,1,1,0,0,30),
(1,7,'7º lugar',3,1,1,0,0,31),(1,8,'8º lugar',3,1,1,0,0,30),(1,9,'9º lugar',1,1,0,0,1,23),
(1,10,'10º lugar',1,1,0,0,1,21),(1,11,'11º lugar',1,1,0,0,1,26),(1,12,'12º lugar',1,1,0,0,1,27),
(1,13,'13º lugar',1,1,0,0,1,28),(1,14,'14º lugar',1,1,0,0,1,22),(1,15,'15º lugar',1,1,0,0,1,22),
(1,16,'16º lugar',1,1,0,0,1,25),(2,7,'1º lugar',6,2,2,0,0,59),(2,1,'2º lugar',6,2,2,0,0,78),
(2,6,'3º lugar',6,2,2,0,0,64),(2,2,'4º lugar',6,2,2,0,0,71),(2,3,'5º lugar',6,2,2,0,0,66),
(2,5,'6º lugar',4,2,1,0,1,44),(2,10,'7º lugar',4,2,1,0,1,48),(2,4,'8º lugar',4,2,1,0,1,50),
(2,8,'9º lugar',4,2,1,0,1,52),(2,12,'10º lugar',4,2,1,0,1,61),(2,13,'11º lugar',4,2,1,0,1,58),
(2,16,'12º lugar',2,2,0,0,2,50),(2,9,'13º lugar',2,2,0,0,2,46),(2,11,'14º lugar',2,2,0,0,2,50),
(2,15,'15º lugar',2,2,0,0,2,49),(2,14,'16º lugar',2,2,0,0,2,53), (30,2,'1º lugar',88,30,29,0,1,1071),
(30,1,'2º lugar',85,30,27,1,2,1048),(30,6,'3º lugar',83,30,26,1,3,1024), (30,13,'4º lugar',70,30,20,0,10,884),
(30,7,'5º lugar',64,30,17,0,13,814),(30,8,'6º lugar',62,30,15,2,13,829),(30,4,'7º lugar',61,30,13,5,12,814),
/*(30,3,'8º lugar',61,30,13,5,12,878),*/(30,9,'9º lugar',58,30,13,2,15,846),(30,14,'10º lugar',56,30,12,2,16,825),
(30,5,'11º lugar',54,30,11,2,17,795),(30,12,'12º lugar',53,30,10,3,17,822),(30,10,'13º lugar',47,30,7,3,20,762),
(30,16,'14º lugar',45,30,6,3,21,729),(30,11,'15º lugar',38,30,3,2,25,738),(30,15,'16º lugar',35,30,2,1,27,735);

SELECT * FROM JornadaEquipa;

 /* Jogador (idJogador, nome, dataNasc, posicao, numero, idEquipa->Equipa) */
 
insert into Jogador(nome,dataNasc,posicao,numero,idEquipa) values 
('Rui Baptista','2001-10-15','Central',23,14),
('Filipe Morais','2000-04-12','Ponta',4,14),
('Rafael Peixoto','1998-04-15','Ponta',9,14),
('Andre Rei','1993-01-10','Ponta',73,14),
('Jose Paulo Silva','2000-08-20','Pivo',17,14),
('Jose Costa','1984-03-23','Pivo',45,14),
('Rostyslav Polishchuk','1999-02-27','Lateral',48,14), 
('Vinicius Carvalho','1997-03-06','Lateral',3,14),
('Afonso Lima','1997-02-04','Central',8,8),
('Manuel Lima','2000-07-18','Central',21,8),
('Vinicius Fonseca','2000-07-23','Lateral',27,8),
('Goncalo Meireles','1998-12-18','Ponta',57,8),
('Alfredo Torres','2000-10-04','Ponta',21,8),
('Hugo Santos','1992-03-02','Ponta',16,8),
('Miguel Salgado','1997-11-13','Pivo',4,8),
('Andre Sousa','2002-03-03','Central',5,7),
('Miguel Neves','2000-10-31','Lateral',7,7),
('Fabio Teixeira','2000-02-02','Ponta',8,7),
('Ricardo Mourao','2002-03-03','Pivo',13,7),
('Nuno Reis','1998-11-07','Central',24,9),
('Joao Miranda','2001-01-21','Central',37,9),
('Joao Gomes','1996-10-10','Ponta',45,9),
('Pedro Poneda','2001-09-01','Pivo',66,9),
('Joao Gordinho','1999-10-03','Ponta',1,15),
('Jose Cosme','2000-02-14','Ponta',18,15),
('Alexandre Pereira','2001-12-12','Lateral',77,15),
('Joao Gordinho','1998-06-22','Central',13,15),
('Craig McDonald','1999-02-21','Pivo',23,4),
('Alexandre Moura','1999-27-01','Lateral',97,4),
('Nuno Roque','1999-02-21','Lateral',81,4),
('Duarte Pereira','1999-02-21','Ponta',34,4);
 
 SELECT * FROM Jogador;
 
 /* Marcador(idJogador->Jogador, idJogo->Jogo, nmrGolos) */
 
 insert into Marcador(idJogador,idJogo,nmrGolos) values 
(1,1,3),(1,10,17),(2,1,2),(2,10,2),(3,1,1),(3,10,1),(4,1,3),
(5,1,4),(5,10,3),(6,1,5),(6,10,3),(7,1,2),(7,10,3),
(8,1,2),(9,1,2),(10,1,1),(11,1,1),(12,1,4),(13,1,4),
(14,1,1),(15,2,9),(16,2,2),(17,2,3),(18,2,3),(19,2,2),
(20,2,3),(21,2,1),(22,2,8),(23,3,2),(24,3,1),(25,3,1),
(26,3,8),(27,3,1),(28,3,3),(29,3,3),(30,3,1);
	
SELECT *FROM Marcador;


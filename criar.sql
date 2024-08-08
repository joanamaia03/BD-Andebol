PRAGMA foreign_keys=on;
DROP TABLE IF EXISTS Jogo;
DROP TABLE IF EXISTS Jornada;
DROP TABLE IF EXISTS Estado;
DROP TABLE IF EXISTS Equipa;
DROP TABLE IF EXISTS JornadaEquipa;
DROP TABLE IF EXISTS Visitada;
DROP TABLE IF EXISTS Visitante;
DROP TABLE IF EXISTS Marcador;
DROP TABLE IF EXISTS Jogador;
DROP TABLE IF EXISTS Clube;


CREATE TABLE  Jornada(
	idJornada 		INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL CHECK(idJornada<=30),
	nomeDaJornada	VARCHAR(10) NOT NULL  
);

CREATE TABLE Jogo (
	idJogo		INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
	dataJogo	DATE NOT NULL,
	idJornada	INTEGER REFERENCES Jornada NOT NULL,
	resultado	VARCHAR(5) NOT NULL,
	
	CONSTRAINT Jogo_fk FOREIGN KEY (idJornada) REFERENCES Jornada(idJornada)
);
 CREATE TABLE Estado (
	idEquipa	INTEGER REFERENCES Equipa NOT NULL,
	idJornada	INTEGER REFERENCES Jornada NOT NULL,
	situacao	VARCHAR(60),
		
		CONSTRAINT Estado_check CHECK (
 		situacao = 'competição europeia' OR
        situacao = 'despromoção' OR
 	    situacao = 'sem situação' OR
		situacao = 'liguilha'
		),
	CONSTRAINT Estado_pk PRIMARY KEY (idEquipa, idJornada),
	CONSTRAINT Estado_fk FOREIGN KEY (idEquipa) REFERENCES Equipa(idEquipa),
	CONSTRAINT Estado_fk FOREIGN KEY (idJornada) REFERENCES Jornada(idJornada)
);
CREATE TABLE Clube (
	idClube			INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
	nome			VARCHAR(20) NOT NULL,
	anoDeFundacao	INTEGER
);

CREATE TABLE Equipa (
	idEquipa		INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
	nome			VARCHAR(20) NOT NULL,
	idClube			INTEGER REFERENCES Clube NOT NULL,
	
	CONSTRAINT Equipa_fk FOREIGN KEY (idClube) REFERENCES Clube(idClube)
);
 CREATE TABLE JornadaEquipa (
	idJornada			INTEGER REFERENCES Jornada NOT NULL,
	idEquipa			INTEGER REFERENCES Equipa NOT NULL,
	classificacao		VARCHAR(20) NOT NULL,
	pontosNaJornada		INTEGER NOT NULL,
	nmrJogos			INTEGER CHECK(nmrJogos=nmrVitorias + nmrDerrotas + nmrEmpates),
	nmrVitorias			INTEGER CHECK(nmrVitorias>=0), 
	nmrEmpates			INTEGER CHECK(nmrEmpates>=0),
	nmrDerrotas			INTEGER CHECK(nmrDerrotas>=0),
	golos				INTEGER NOT NULL,
	
	CONSTRAINT JornadaEquipa_pk PRIMARY KEY (idEquipa, idJornada),
	CONSTRAINT JornadaEquipa_fk FOREIGN KEY (idEquipa) REFERENCES Equipa(idEquipa),
	CONSTRAINT JornadaEquipa_fk FOREIGN KEY (idJornada) REFERENCES Jornada(idJornada)
);

CREATE TABLE Visitada (
	idJogo		INTEGER REFERENCES Jogo NOT NULL,
	idEquipa	INTEGER REFERENCES Equipa NOT NULL,
	
	CONSTRAINT Visitada_pk PRIMARY KEY (idJogo),
	CONSTRAINT Visitada_fk FOREIGN KEY (idJogo) REFERENCES Jogo(idJogo),
	CONSTRAINT Visitada_fk FOREIGN KEY (idEquipa) REFERENCES Equipa(idEquipa)
);

CREATE TABLE Visitante (
	idJogo		INTEGER REFERENCES Jogo NOT NULL,
	idEquipa	INTEGER REFERENCES Equipa NOT NULL,
	
	CONSTRAINT Visitante_pk PRIMARY KEY (idJogo),
	CONSTRAINT Visitante_fk FOREIGN KEY (idJogo) REFERENCES Jogo(idJogo),
	CONSTRAINT Visitante_fk FOREIGN KEY (idEquipa) REFERENCES Equipa(idEquipa)
);

.

CREATE TABLE Marcador (
	idJogo		INTEGER REFERENCES Jogo NOT NULL,
	idJogador	INTEGER REFERENCES Jogador NOT NULL,
	nmrGolos	INTEGER CHECK(nmrGolos>0),
	
	CONSTRAINT Marcador_pk Primary KEY (idJogo, idJogador),
	CONSTRAINT Marcador_fk FOREIGN KEY (idJogo) REFERENCES Jogo(idJogo),
	CONSTRAINT Marcador_fk FOREIGN KEY (idJogador) REFERENCES Jogador(idJogador)
);

CREATE TABLE Jogador (
	idJogador	INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
	nome		VARCHAR(30) NOT NULL,
	dataNasc	DATE NOT NULL,
	posicao		VARCHAR(20),
	numero		INTEGER NOT NULL,
	idEquipa	INTEGER REFERENCES Equipa NOT NULL,
	
	CONSTRAINT Jogador_fk FOREIGN KEY (idEquipa) REFERENCES Equipa(idEquipa)
);



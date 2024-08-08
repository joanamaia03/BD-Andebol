.mode columns
.header on
.nullvalue NULL



/*Assegura a compatibilidade entre o estado da equipa e a classificação da mesma*/

CREATE TRIGGER IF NOT EXISTS update_estado
BEFORE UPDATE ON JornadaEquipa
FOR EACH ROW
BEGIN
  UPDATE Estado
  SET situacao = (CASE
    WHEN NEW.classificacao = '1º lugar' THEN 'competição europeia'
    WHEN NEW.classificacao = '2º lugar' THEN 'competição europeia'
    WHEN NEW.classificacao = '3º lugar' THEN 'competição europeia'
    WHEN NEW.classificacao = '4º lugar' THEN 'competição europeia'
    WHEN NEW.classificacao = '5º lugar' THEN 'competição europeia'
    WHEN NEW.classificacao = '6º lugar' THEN 'sem situação'
    WHEN NEW.classificacao = '7º lugar' THEN 'sem situação'
    WHEN NEW.classificacao = '8º lugar' THEN 'sem situação'
    WHEN NEW.classificacao = '9º lugar' THEN 'sem situação'
    WHEN NEW.classificacao = '10º lugar' THEN 'sem situação'
    WHEN NEW.classificacao = '11º lugar' THEN 'sem situação'
    WHEN NEW.classificacao = '12º lugar' THEN 'sem situação'
    WHEN NEW.classificacao = '13º lugar' THEN 'liguilha'
    WHEN NEW.classificacao = '14º lugar' THEN 'liguilha'
    WHEN NEW.classificacao = '15º lugar' THEN 'despromoção'
    WHEN NEW.classificacao = '16º lugar' THEN 'despromoção'
  END)
  WHERE idEquipa = NEW.idEquipa AND idJornada = NEW.idJornada;
END;

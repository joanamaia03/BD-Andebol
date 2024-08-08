select * from classificacoes;

select * from atletas where nome like "%e%";

select nome from atletas where ano=10;

select nome from atletas where turma="M";

select nome from atletas order by nome;

select nomeequipa from equipas order by 1 desc;

select count(*) from equipas;

select count(*) from atletas where ano=11 and turma="M";

select avg(classific) from classificacoes;

select classific from classificacoes order by 1 desc limit 1;

select nome from atleta a, classificacoes c 
where a.numconcor=c.numconcor and classific in 
	(select classific from classificacoes order by 1 desc limit 1;

select classific from classificacoes order by 1 limit 1;

select nome from atleta a, classificacoes c 
where a.numconcor=c.numconcor and classific in 
	(select classific from classificacoes order by 1 limit 1;
	
select sum(classific) from classificacoes where numconcor=10;

select sum(classific) from classificacoes c, atletas a
where c.numconcor=a.numconcor group by nome;

select sum(classific), nome from classificacoes c, atletas a
where c.numconcor=a.numconcor group by 2;

select sum(classific), nome, nomeequipa from classificacoes c, atletas a, equipas e
where c.numconcor=a.numconcor and a.numequipa=e.numequipa group by 2;

select sum(classific), nome from classificacoes c, atletas a
where c.numconcor=a.numconcor group by 2 order by sum(classific) desc;
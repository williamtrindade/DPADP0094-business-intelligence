-- 1
SELECT raca.nomeraca raca, criador.nomecriador criador, count(cavalo.codcavalo) cavalo
FROM raca
JOIN cavalo ON cavalo.codraca = raca.codraca
JOIN criador on cavalo.codcriador = criador.codcriador
GROUP BY GROUPING SETS ((raca.nomeraca), (criador.nomecriador), ());

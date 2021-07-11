-- 1
SELECT raca.nomeraca raca, criador.nomecriador criador, count(cavalo.codcavalo) cavalo
FROM raca
JOIN cavalo ON cavalo.codraca = raca.codraca
JOIN criador on cavalo.codcriador = criador.codcriador
GROUP BY GROUPING SETS ((raca.nomeraca), (criador.nomecriador), ());

-- 2
SELECT criador.nomecriador criador, count(cavalo.codcavalo) "qtd cavalo", pais.nomepais pais
FROM criador
JOIN cavalo ON cavalo.codcriador = criador.codcriador
JOIN pais on pais.codpais = criador.codpais
GROUP BY GROUPING SETS ((criador.nomecriador, pais.nomepais), (pais.nomepais), ());

-- 3

-- 1
SELECT atleta.nomat, patrocinador.nompat FROM atleta, patrocinador, atleta_pat 
WHERE atleta_pat.codat = atleta.codat AND atleta_pat.codpat = patrocinador.codpat;

-- 2
SELECT atleta.nomat, estado.nomeuf, patrocinador.nompat FROM atleta, patrocinador, atleta_pat, estado
WHERE atleta_pat.codat = atleta.codat AND atleta_pat.codpat = patrocinador.codpat AND atleta.siglauf = estado.siglauf;

-- 3
SELECT atleta.nomat, COUNT(atleta_pat.codpat) FROM atleta, patrocinador, atleta_pat
WHERE atleta_pat.codat = atleta.codat AND atleta_pat.codpat = patrocinador.codpat
GROUP BY atleta.nomat;

-- 4
SELECT atleta.nomat, SUM(atleta_pat.val_pat) FROM atleta, patrocinador, atleta_pat
WHERE atleta_pat.codat = atleta.codat AND atleta_pat.codpat = patrocinador.codpat
GROUP BY atleta.nomat;

-- 5 
SELECT patrocinador.nompat, COUNT(atleta_pat.codat) FROM patrocinador, atleta_pat
WHERE atleta_pat.codpat = patrocinador.codpat
GROUP BY patrocinador.nompat;

-- 6 
SELECT patrocinador.nompat, SUM(atleta_pat.val_pat) FROM patrocinador, atleta_pat
WHERE atleta_pat.codpat = patrocinador.codpat
GROUP BY patrocinador.nompat;

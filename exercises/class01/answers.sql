-- 1
SELECT atleta.nomat, patrocinador.nompat FROM atleta, patrocinador, atleta_pat 
WHERE atleta_pat.codat = atleta.codat AND atleta_pat.codpat = patrocinador.codpat;

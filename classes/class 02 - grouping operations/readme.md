___
### GROUPING OPERATIONS
> (Grouping Set, cube e Rollup) são operações de agrupamento mais complexas do que as descritas acima são possíveis usando o conceito de conjuntos de agrupamento. Os dados selecionados pelas cláusulas FROM e WHERE são agrupados separadamente por cada conjunto de agrupamento especificado, agregados calculados para cada grupo da mesma forma que para cláusulas GROUP BY simples e, em seguida, os resultados retornados. Por exemplo:

#### Criação da tabela.
```sql
CREATE TABLE VENDA_OVOS_PASCOA(
    LOJA VARCHAR(50),
    MARCA VARCHAR(50),
    PESO INT,
    QTDE_VENDIDA INT,
    PRIMARY KEY(LOJA,MARCA,PESO)
);
```

#### Inserção das informações.
```sql
INSERT INTO VENDA_OVOS_PASCOA VALUES ('INTERNACIONAL','LACTA',500,5);
INSERT INTO VENDA_OVOS_PASCOA VALUES ('INTERNACIONAL','NESTLE',500,7);
INSERT INTO VENDA_OVOS_PASCOA VALUES ('INTERNACIONAL','GAROTO',500,4);
INSERT INTO VENDA_OVOS_PASCOA VALUES ('INTERNACIONAL','LACTA',250,10);
INSERT INTO VENDA_OVOS_PASCOA VALUES ('INTERNACIONAL','NESTLE',250,12);
INSERT INTO VENDA_OVOS_PASCOA VALUES ('INTERNACIONAL','GAROTO',250,8);
INSERT INTO VENDA_OVOS_PASCOA VALUES ('SMALL','LACTA',500,3);
INSERT INTO VENDA_OVOS_PASCOA VALUES ('SMALL','NESTLE',500,6);
INSERT INTO VENDA_OVOS_PASCOA VALUES ('SMALL','GAROTO',500,2);
INSERT INTO VENDA_OVOS_PASCOA VALUES ('SMALL','LACTA',250,6);
INSERT INTO VENDA_OVOS_PASCOA VALUES ('SMALL','NESTLE',250,10);
INSERT INTO VENDA_OVOS_PASCOA VALUES ('SMALL','GAROTO',250,4);
```
___

### GROUPING SETS
> Determina múltiplos conjuntos para agrupamento
#### Group By Grouping Sets
```sql
SELECT loja, marca, peso, sum(qtde_vendida)
from VENDA_OVOS_PASCOA
GROUP BY
GROUPING SETS ((LOJA), (MARCA), (PESO), ());
```

#### Group By Grouping Sets
```sql
SELECT loja, marca, peso, sum(qtde_vendida)
from VENDA_OVOS_PASCOA
GROUP BY GROUPING SETS ((LOJA,MARCA),
(LOJA), (MARCA), (PESO), ());
```

#### Group By Grouping Sets
```sql
SELECT loja, marca, peso, sum(qtde_vendida)
from VENDA_OVOS_PASCOA
GROUP BY GROUPING SETS
((LOJA,MARCA,PESO), (LOJA,MARCA), (LOJA), ());
```
___
### ROLLUP
> Hierarquia

#### Group By Rollup
```sql
SELECT loja, marca, peso, sum(qtde_vendida)
from VENDA_OVOS_PASCOA
GROUP BY ROLLUP (LOJA, MARCA, PESO);
```
___
### CUBE
> Todos os conjuntos possíveis

#### Group By Cube
```sql
SELECT loja, marca, peso, sum(qtde_vendida)
from VENDA_OVOS_PASCOA
GROUP BY CUBE(LOJA, MARCA, PESO);
```

#### Group By Cube
```sql
SELECT loja, marca, peso, sum(qtde_vendida)
from VENDA_OVOS_PASCOA
GROUP BY CUBE((LOJA, MARCA), PESO);
```
____



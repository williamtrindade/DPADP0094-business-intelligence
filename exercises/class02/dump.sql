--
-- PostgreSQL database dump
--

-- Dumped from database version 9.2.3
-- Dumped by pg_dump version 9.2.3
-- Started on 2014-09-17 22:44:53

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- TOC entry 174 (class 3079 OID 11727)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 1964 (class 0 OID 0)
-- Dependencies: 174
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 168 (class 1259 OID 103096)
-- Name: cavalo; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE cavalo (
    codcavalo integer NOT NULL,
    nomecavalo character varying(30) NOT NULL,
    data_nasc date,
    codcriador integer NOT NULL,
    codraca integer NOT NULL,
    valor numeric(14,2)
);


ALTER TABLE public.cavalo OWNER TO postgres;

--
-- TOC entry 169 (class 1259 OID 103099)
-- Name: criador; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE criador (
    codcriador integer NOT NULL,
    nomecriador character varying(40) NOT NULL,
    codpais integer NOT NULL
);


ALTER TABLE public.criador OWNER TO postgres;

--
-- TOC entry 170 (class 1259 OID 103102)
-- Name: disputa; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE disputa (
    codprova integer NOT NULL,
    codcavalo integer NOT NULL,
    colocacao integer,
    ano integer NOT NULL
);


ALTER TABLE public.disputa OWNER TO postgres;

--
-- TOC entry 171 (class 1259 OID 103105)
-- Name: pais; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE pais (
    codpais integer NOT NULL,
    nomepais character varying(20) NOT NULL
);


ALTER TABLE public.pais OWNER TO postgres;

--
-- TOC entry 172 (class 1259 OID 103108)
-- Name: prova; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE prova (
    codprova integer NOT NULL,
    nomprova character varying(50)
);


ALTER TABLE public.prova OWNER TO postgres;

--
-- TOC entry 173 (class 1259 OID 103111)
-- Name: raca; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE raca (
    codraca integer NOT NULL,
    nomeraca character varying(20) NOT NULL
);


ALTER TABLE public.raca OWNER TO postgres;

--
-- TOC entry 1951 (class 0 OID 103096)
-- Dependencies: 168
-- Data for Name: cavalo; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO cavalo VALUES (1, 'Rex', '2008-11-12', 1, 4, 100000.00);
INSERT INTO cavalo VALUES (2, 'vendaval', '2006-11-12', 2, 3, 4000000.00);
INSERT INTO cavalo VALUES (3, 'Rival', '2006-01-01', 3, 2, 47700000.00);
INSERT INTO cavalo VALUES (4, 'Palpite', '2008-01-01', 3, 2, 790000.00);
INSERT INTO cavalo VALUES (5, 'Malandro', '2008-04-14', 3, 2, 80800.00);
INSERT INTO cavalo VALUES (6, 'Cacaquinho', '2009-04-16', 1, 2, 909090.00);
INSERT INTO cavalo VALUES (7, 'Much Better', '2011-09-19', 1, 3, 98090.00);


--
-- TOC entry 1952 (class 0 OID 103099)
-- Dependencies: 169
-- Data for Name: criador; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO criador VALUES (1, 'Juan', 3);
INSERT INTO criador VALUES (2, 'Joao', 1);
INSERT INTO criador VALUES (3, 'Pedro', 1);
INSERT INTO criador VALUES (4, 'Maria', 1);
INSERT INTO criador VALUES (5, 'Paco', 2);


--
-- TOC entry 1953 (class 0 OID 103102)
-- Dependencies: 170
-- Data for Name: disputa; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO disputa VALUES (1, 1, 2, 2001);
INSERT INTO disputa VALUES (1, 3, 1, 2001);
INSERT INTO disputa VALUES (2, 2, 1, 2002);
INSERT INTO disputa VALUES (2, 4, 3, 2002);
INSERT INTO disputa VALUES (2, 7, 2, 2002);
INSERT INTO disputa VALUES (2, 7, 2, 2003);
INSERT INTO disputa VALUES (2, 4, 1, 2003);
INSERT INTO disputa VALUES (2, 2, 3, 2003);


--
-- TOC entry 1954 (class 0 OID 103105)
-- Dependencies: 171
-- Data for Name: pais; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO pais VALUES (1, 'Brasil');
INSERT INTO pais VALUES (2, 'Uruguai');
INSERT INTO pais VALUES (3, 'Argentina');


--
-- TOC entry 1955 (class 0 OID 103108)
-- Dependencies: 172
-- Data for Name: prova; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO prova VALUES (1, 'GP Princesa do Sul');
INSERT INTO prova VALUES (2, 'GP Bento Goncalves');
INSERT INTO prova VALUES (3, 'GP Protetora do turfe');


--
-- TOC entry 1956 (class 0 OID 103111)
-- Dependencies: 173
-- Data for Name: raca; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO raca VALUES (1, 'quarto de milha');
INSERT INTO raca VALUES (2, 'arabe');
INSERT INTO raca VALUES (3, 'andaluz');
INSERT INTO raca VALUES (4, 'mustangue');


--
-- TOC entry 1935 (class 2606 OID 103115)
-- Name: cavalo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY cavalo
    ADD CONSTRAINT cavalo_pkey PRIMARY KEY (codcavalo);


--
-- TOC entry 1937 (class 2606 OID 103117)
-- Name: criador_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY criador
    ADD CONSTRAINT criador_pkey PRIMARY KEY (codcriador);


--
-- TOC entry 1939 (class 2606 OID 103119)
-- Name: disputa_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY disputa
    ADD CONSTRAINT disputa_pkey PRIMARY KEY (ano, codprova, codcavalo);


--
-- TOC entry 1941 (class 2606 OID 103121)
-- Name: pais_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY pais
    ADD CONSTRAINT pais_pkey PRIMARY KEY (codpais);


--
-- TOC entry 1943 (class 2606 OID 103123)
-- Name: prova_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY prova
    ADD CONSTRAINT prova_pkey PRIMARY KEY (codprova);


--
-- TOC entry 1945 (class 2606 OID 103125)
-- Name: raca_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY raca
    ADD CONSTRAINT raca_pkey PRIMARY KEY (codraca);


--
-- TOC entry 1946 (class 2606 OID 103126)
-- Name: cavalo_codcriador_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cavalo
    ADD CONSTRAINT cavalo_codcriador_fkey FOREIGN KEY (codcriador) REFERENCES criador(codcriador);


--
-- TOC entry 1947 (class 2606 OID 103131)
-- Name: cavalo_codraca_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cavalo
    ADD CONSTRAINT cavalo_codraca_fkey FOREIGN KEY (codraca) REFERENCES raca(codraca);


--
-- TOC entry 1948 (class 2606 OID 103136)
-- Name: criador_codpais_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY criador
    ADD CONSTRAINT criador_codpais_fkey FOREIGN KEY (codpais) REFERENCES pais(codpais);


--
-- TOC entry 1949 (class 2606 OID 103141)
-- Name: disputa_codcavalo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY disputa
    ADD CONSTRAINT disputa_codcavalo_fkey FOREIGN KEY (codcavalo) REFERENCES cavalo(codcavalo);


--
-- TOC entry 1950 (class 2606 OID 103146)
-- Name: disputa_codprova_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY disputa
    ADD CONSTRAINT disputa_codprova_fkey FOREIGN KEY (codprova) REFERENCES prova(codprova);


--
-- TOC entry 1963 (class 0 OID 0)
-- Dependencies: 6
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2014-09-17 22:44:54

--
-- PostgreSQL database dump complete
--

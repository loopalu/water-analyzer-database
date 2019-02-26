--
-- DUMP FILE
--
-- Database is ported from MS Access
--------------------------------------------------------------------
-- Created using MS Access to PostgreSQL form http://www.bullzip.com
-- Program Version 5.5.281
--
-- OPTIONS:
--   sourcefilename=C:/Users/Aivar/Desktop/vee-andmebaas.accdb
--   sourceusername=
--   sourcepassword=
--   sourcesystemdatabase=
--   destinationserver=apex.ttu.ee
--   destinationdatabase=vee-andmebaas
--   maintenancedb=postgres
--   dropdatabase=1
--   createtables=1
--   unicode=1
--   autocommit=1
--   transferdefaultvalues=1
--   transferindexes=1
--   transferautonumbers=1
--   transferrecords=1
--   columnlist=1
--   tableprefix=
--   negativeboolean=0
--   ignorelargeblobs=0
--   memotype=
--   datetimetype=
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE IF EXISTS vee-andmebaas;
CREATE DATABASE "vee-andmebaas"
    WITH 
    OWNER = t164416
    ENCODING = 'UTF8'
    LC_COLLATE = 'en_US.UTF-8'
    LC_CTYPE = 'en_US.UTF-8'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;

ALTER DATABASE vee-andmebaas OWNER TO t164416;

-- NOTICE: At this place you need to connect to the new database and run the rest of the statements.

\connect vee-andmebaas

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 4 (class 3079 OID 940320)
-- Name: fuzzystrmatch; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS fuzzystrmatch WITH SCHEMA public;


--
-- TOC entry 3353 (class 0 OID 0)
-- Dependencies: 4
-- Name: EXTENSION fuzzystrmatch; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION fuzzystrmatch IS 'determine similarities and distance between strings';


--
-- TOC entry 3 (class 3079 OID 884276)
-- Name: pgcrypto; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS pgcrypto WITH SCHEMA public;


--
-- TOC entry 3354 (class 0 OID 0)
-- Dependencies: 3
-- Name: EXTENSION pgcrypto; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgcrypto IS 'cryptographic functions';


--
-- TOC entry 2 (class 3079 OID 883817)
-- Name: postgres_fdw; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS postgres_fdw WITH SCHEMA public;


--
-- TOC entry 3355 (class 0 OID 0)
-- Dependencies: 2
-- Name: EXTENSION postgres_fdw; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION postgres_fdw IS 'foreign-data wrapper for remote PostgreSQL servers';

--
-- Table structure for table 'katse'
--

DROP TABLE IF EXISTS katse;

CREATE TABLE katse (
  katse_id SERIAL NOT NULL, 
  kuupaev TIMESTAMP, 
  operaatori_id INTEGER DEFAULT 0, 
  katse_kirjeldus text, 
  sagedus INTEGER DEFAULT 0, 
  pinge INTEGER DEFAULT 0, 
  PRIMARY KEY (katse_id)
);

--
-- Dumping data for table 'katse'
--

INSERT INTO katse (katse_id, kuupaev, operaatori_id, katse_kirjeldus, sagedus, pinge) VALUES (1, '2019-02-07 00:00:00', 1, 'Oli mingi katse.', 105, 2);
INSERT INTO katse (katse_id, kuupaev, operaatori_id, katse_kirjeldus, sagedus, pinge) VALUES (2, '2019-02-26 00:00:00', 1, 'Laks nihu.', 440, 2);
INSERT INTO katse (katse_id, kuupaev, operaatori_id, katse_kirjeldus, sagedus, pinge) VALUES (3, '2019-02-07 00:00:00', 2, 'ops', 440, 5);
INSERT INTO katse (katse_id, kuupaev, operaatori_id, katse_kirjeldus, sagedus, pinge) VALUES (4, '2019-02-01 00:00:00', 3, 'lol', 500, 1);
INSERT INTO katse (katse_id, kuupaev, operaatori_id, katse_kirjeldus, sagedus, pinge) VALUES (5, '2019-02-02 00:00:00', 3, 'lol', 500, 1);
INSERT INTO katse (katse_id, kuupaev, operaatori_id, katse_kirjeldus, sagedus, pinge) VALUES (6, '2019-02-08 00:00:00', 3, 'lol 2', 240, 5);
-- 6 records

SELECT setval('katse_katse_id_seq', MAX(katse_id)) FROM katse;

--
-- Table structure for table 'mootmine'
--

DROP TABLE IF EXISTS mootmine;

CREATE TABLE mootmine (
  mootmise_id SERIAL NOT NULL, 
  katse_id INTEGER DEFAULT 0, 
  mootmise_aeg INTEGER DEFAULT 0, 
  detektori_signaal INTEGER DEFAULT 0, 
  PRIMARY KEY (mootmise_id)
);

--
-- Dumping data for table 'mootmine'
--

INSERT INTO mootmine (mootmise_id, katse_id, mootmise_aeg, detektori_signaal) VALUES (1, 1, 0, 1312313);
INSERT INTO mootmine (mootmise_id, katse_id, mootmise_aeg, detektori_signaal) VALUES (2, 1, 1, 12312313);
INSERT INTO mootmine (mootmise_id, katse_id, mootmise_aeg, detektori_signaal) VALUES (3, 1, 2, 3232);
INSERT INTO mootmine (mootmise_id, katse_id, mootmise_aeg, detektori_signaal) VALUES (4, 1, 3, 444444);
INSERT INTO mootmine (mootmise_id, katse_id, mootmise_aeg, detektori_signaal) VALUES (5, 1, 4, 5555555);
INSERT INTO mootmine (mootmise_id, katse_id, mootmise_aeg, detektori_signaal) VALUES (6, 2, 0, 11111);
INSERT INTO mootmine (mootmise_id, katse_id, mootmise_aeg, detektori_signaal) VALUES (7, 2, 1, 22222);
INSERT INTO mootmine (mootmise_id, katse_id, mootmise_aeg, detektori_signaal) VALUES (8, 2, 2, 123123123);
INSERT INTO mootmine (mootmise_id, katse_id, mootmise_aeg, detektori_signaal) VALUES (9, 2, 3, 1111);
INSERT INTO mootmine (mootmise_id, katse_id, mootmise_aeg, detektori_signaal) VALUES (10, 2, 4, 123);
INSERT INTO mootmine (mootmise_id, katse_id, mootmise_aeg, detektori_signaal) VALUES (11, 3, 0, 1);
INSERT INTO mootmine (mootmise_id, katse_id, mootmise_aeg, detektori_signaal) VALUES (12, 3, 1, 22222);
INSERT INTO mootmine (mootmise_id, katse_id, mootmise_aeg, detektori_signaal) VALUES (13, 3, 2, 123123123);
INSERT INTO mootmine (mootmise_id, katse_id, mootmise_aeg, detektori_signaal) VALUES (14, 3, 3, 22);
INSERT INTO mootmine (mootmise_id, katse_id, mootmise_aeg, detektori_signaal) VALUES (15, 3, 4, 112231);
INSERT INTO mootmine (mootmise_id, katse_id, mootmise_aeg, detektori_signaal) VALUES (16, 4, 0, 11);
INSERT INTO mootmine (mootmise_id, katse_id, mootmise_aeg, detektori_signaal) VALUES (17, 4, 1, 12313);
INSERT INTO mootmine (mootmise_id, katse_id, mootmise_aeg, detektori_signaal) VALUES (18, 4, 2, 23123123);
INSERT INTO mootmine (mootmise_id, katse_id, mootmise_aeg, detektori_signaal) VALUES (19, 5, 0, 123123);
INSERT INTO mootmine (mootmise_id, katse_id, mootmise_aeg, detektori_signaal) VALUES (20, 5, 1, 12);
INSERT INTO mootmine (mootmise_id, katse_id, mootmise_aeg, detektori_signaal) VALUES (21, 6, 0, 999999);
INSERT INTO mootmine (mootmise_id, katse_id, mootmise_aeg, detektori_signaal) VALUES (22, 6, 1, 123123);
INSERT INTO mootmine (mootmise_id, katse_id, mootmise_aeg, detektori_signaal) VALUES (23, 6, 2, 55555);
INSERT INTO mootmine (mootmise_id, katse_id, mootmise_aeg, detektori_signaal) VALUES (24, 6, 3, 2131);
INSERT INTO mootmine (mootmise_id, katse_id, mootmise_aeg, detektori_signaal) VALUES (25, 6, 4, 123114);
INSERT INTO mootmine (mootmise_id, katse_id, mootmise_aeg, detektori_signaal) VALUES (26, 6, 5, 1231);
-- 26 records

SELECT setval('mootmine_mootmise_id_seq', MAX(mootmise_id)) FROM mootmine;

CREATE INDEX mootmine_KatseID ON mootmine (katse_id);

--
-- Table structure for table 'operaatorid'
--

DROP TABLE IF EXISTS operaatorid;

CREATE TABLE operaatorid (
  operaatori_id SERIAL NOT NULL, 
  operaatori_eesnimi VARCHAR(255), 
  operaatori_perekonnamini VARCHAR(255), 
  PRIMARY KEY (operaatori_id)
);

--
-- Dumping data for table 'operaatorid'
--

INSERT INTO operaatorid (operaatori_id, operaatori_eesnimi, operaatori_perekonnamini) VALUES (1, 'Aivar', 'Loopalu');
INSERT INTO operaatorid (operaatori_id, operaatori_eesnimi, operaatori_perekonnamini) VALUES (2, 'Bob', 'Mbob');
INSERT INTO operaatorid (operaatori_id, operaatori_eesnimi, operaatori_perekonnamini) VALUES (3, 'Tere', 'Tere');
-- 3 records

SELECT setval('operaatorid_operaatori_id_seq', MAX(operaatori_id)) FROM operaatorid;

--
-- Table structure for table 'piigid'
--

DROP TABLE IF EXISTS piigid;

CREATE TABLE piigid (
  piigi_id SERIAL NOT NULL, 
  piigi_aeg INTEGER DEFAULT 0, 
  piigi_laius INTEGER DEFAULT 0, 
  piigi_korgus INTEGER DEFAULT 0, 
  piigi_pindala INTEGER DEFAULT 0, 
  PRIMARY KEY (piigi_id)
);

--
-- Dumping data for table 'piigid'
--

-- 0 records

SELECT setval('piigid_piigi_id_seq', MAX(piigi_id)) FROM piigid;


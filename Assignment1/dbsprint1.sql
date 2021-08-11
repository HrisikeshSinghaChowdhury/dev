--
-- PostgreSQL database dump
--

-- Dumped from database version 12.7 (Ubuntu 12.7-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.7 (Ubuntu 12.7-0ubuntu0.20.04.1)

-- Started on 2021-08-04 11:32:20 IST

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 5 (class 2615 OID 16389)
-- Name: schema_emp_QI; Type: SCHEMA; Schema: -; Owner: hrisi
--

CREATE SCHEMA "schema_emp_QI";


ALTER SCHEMA "schema_emp_QI" OWNER TO hrisi;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 206 (class 1259 OID 16422)
-- Name: tb_credential; Type: TABLE; Schema: schema_emp_QI; Owner: hrisi
--

CREATE TABLE "schema_emp_QI".tb_credential (
    id integer NOT NULL,
    username text NOT NULL,
    pass_word text NOT NULL
);


ALTER TABLE "schema_emp_QI".tb_credential OWNER TO hrisi;

--
-- TOC entry 207 (class 1259 OID 16430)
-- Name: tb_credential_id_seq; Type: SEQUENCE; Schema: schema_emp_QI; Owner: hrisi
--

ALTER TABLE "schema_emp_QI".tb_credential ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME "schema_emp_QI".tb_credential_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 203 (class 1259 OID 16390)
-- Name: tb_emp_master; Type: TABLE; Schema: schema_emp_QI; Owner: hrisi
--

CREATE TABLE "schema_emp_QI".tb_emp_master (
    emp_name text NOT NULL,
    emp_address text NOT NULL,
    emp_contact_no text NOT NULL,
    emp_id integer NOT NULL
);


ALTER TABLE "schema_emp_QI".tb_emp_master OWNER TO hrisi;

--
-- TOC entry 204 (class 1259 OID 16398)
-- Name: tb_emp_project; Type: TABLE; Schema: schema_emp_QI; Owner: hrisi
--

CREATE TABLE "schema_emp_QI".tb_emp_project (
    project_id text NOT NULL,
    project_name text,
    updated_date date,
    emp_id integer NOT NULL
);


ALTER TABLE "schema_emp_QI".tb_emp_project OWNER TO hrisi;

--
-- TOC entry 208 (class 1259 OID 16434)
-- Name: tb_emp_project_emp_id_seq; Type: SEQUENCE; Schema: schema_emp_QI; Owner: hrisi
--

ALTER TABLE "schema_emp_QI".tb_emp_project ALTER COLUMN emp_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME "schema_emp_QI".tb_emp_project_emp_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 205 (class 1259 OID 16404)
-- Name: user_table_emp_id_seq; Type: SEQUENCE; Schema: schema_emp_QI; Owner: hrisi
--

ALTER TABLE "schema_emp_QI".tb_emp_master ALTER COLUMN emp_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME "schema_emp_QI".user_table_emp_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 2979 (class 0 OID 16422)
-- Dependencies: 206
-- Data for Name: tb_credential; Type: TABLE DATA; Schema: schema_emp_QI; Owner: hrisi
--

COPY "schema_emp_QI".tb_credential (id, username, pass_word) FROM stdin;
1	hrisi	1234
\.


--
-- TOC entry 2976 (class 0 OID 16390)
-- Dependencies: 203
-- Data for Name: tb_emp_master; Type: TABLE DATA; Schema: schema_emp_QI; Owner: hrisi
--

COPY "schema_emp_QI".tb_emp_master (emp_name, emp_address, emp_contact_no, emp_id) FROM stdin;
hrisikesh singha chowdhury	38/b p.k.guha road	9123099090	1
joydeep mukherjee	38/b p.k.guha road	9123099090	2
\.


--
-- TOC entry 2977 (class 0 OID 16398)
-- Dependencies: 204
-- Data for Name: tb_emp_project; Type: TABLE DATA; Schema: schema_emp_QI; Owner: hrisi
--

COPY "schema_emp_QI".tb_emp_project (project_id, project_name, updated_date, emp_id) FROM stdin;
P101	Project Galaxy	2020-03-02	1
\.


--
-- TOC entry 2987 (class 0 OID 0)
-- Dependencies: 207
-- Name: tb_credential_id_seq; Type: SEQUENCE SET; Schema: schema_emp_QI; Owner: hrisi
--

SELECT pg_catalog.setval('"schema_emp_QI".tb_credential_id_seq', 1, true);


--
-- TOC entry 2988 (class 0 OID 0)
-- Dependencies: 208
-- Name: tb_emp_project_emp_id_seq; Type: SEQUENCE SET; Schema: schema_emp_QI; Owner: hrisi
--

SELECT pg_catalog.setval('"schema_emp_QI".tb_emp_project_emp_id_seq', 1, true);


--
-- TOC entry 2989 (class 0 OID 0)
-- Dependencies: 205
-- Name: user_table_emp_id_seq; Type: SEQUENCE SET; Schema: schema_emp_QI; Owner: hrisi
--

SELECT pg_catalog.setval('"schema_emp_QI".user_table_emp_id_seq', 2, true);


--
-- TOC entry 2849 (class 2606 OID 16429)
-- Name: tb_credential tb_credential_pkey; Type: CONSTRAINT; Schema: schema_emp_QI; Owner: hrisi
--

ALTER TABLE ONLY "schema_emp_QI".tb_credential
    ADD CONSTRAINT tb_credential_pkey PRIMARY KEY (id);


--
-- TOC entry 2847 (class 2606 OID 16443)
-- Name: tb_emp_project tb_emp_project_pkey; Type: CONSTRAINT; Schema: schema_emp_QI; Owner: hrisi
--

ALTER TABLE ONLY "schema_emp_QI".tb_emp_project
    ADD CONSTRAINT tb_emp_project_pkey PRIMARY KEY (project_id, emp_id);


-- Completed on 2021-08-04 11:32:20 IST

--
-- PostgreSQL database dump complete
--


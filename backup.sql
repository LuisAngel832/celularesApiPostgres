--
-- PostgreSQL database dump
--

-- Dumped from database version 16.6 (Ubuntu 16.6-0ubuntu0.24.04.1)
-- Dumped by pg_dump version 16.6 (Ubuntu 16.6-0ubuntu0.24.04.1)

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: SequelizeMeta; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."SequelizeMeta" (
    name character varying(255) NOT NULL
);


ALTER TABLE public."SequelizeMeta" OWNER TO postgres;

--
-- Name: Telefonos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Telefonos" (
    id integer NOT NULL,
    marca character varying(255),
    modelo character varying(255),
    precio integer,
    descripcion text,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public."Telefonos" OWNER TO postgres;

--
-- Name: Telefonos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Telefonos_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Telefonos_id_seq" OWNER TO postgres;

--
-- Name: Telefonos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Telefonos_id_seq" OWNED BY public."Telefonos".id;


--
-- Name: Telefonos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Telefonos" ALTER COLUMN id SET DEFAULT nextval('public."Telefonos_id_seq"'::regclass);


--
-- Data for Name: SequelizeMeta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."SequelizeMeta" (name) FROM stdin;
20250427231112-create-telefono.js
\.


--
-- Data for Name: Telefonos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Telefonos" (id, marca, modelo, precio, descripcion, "createdAt", "updatedAt") FROM stdin;
3	Apple	iPhone 15	1099	Último modelo de Apple	2025-04-28 02:15:27.944+02	2025-04-28 02:15:27.944+02
4	Xiaomi	Mi 13	599	Alta calidad a buen precio	2025-04-28 02:15:27.944+02	2025-04-28 02:15:27.944+02
5	Motorola	Edge 40	499	Motorola Edge 40 edición especial	2025-04-28 02:15:27.944+02	2025-04-28 02:15:27.944+02
6	OnePlus	11R	649	Potencia y diseño premium	2025-04-28 02:15:27.944+02	2025-04-28 02:15:27.944+02
7	Huawei	P60 Pro	899	Fotografía profesional	2025-04-28 02:15:27.944+02	2025-04-28 02:15:27.944+02
8	Google	Pixel 8	799	Experiencia Android pura	2025-04-28 02:15:27.944+02	2025-04-28 02:15:27.944+02
9	Realme	GT Neo 5	399	Rendimiento bestial	2025-04-28 02:15:27.944+02	2025-04-28 02:15:27.944+02
10	Oppo	Find X6	899	Diseño innovador	2025-04-28 02:15:27.944+02	2025-04-28 02:15:27.944+02
11	Vivo	X90 Pro	999	Top en fotografía nocturna	2025-04-28 02:15:27.944+02	2025-04-28 02:15:27.944+02
2	s	s	1	s	2025-04-28 02:15:27.944+02	2025-04-28 02:16:10.813+02
12	s	s	1	s	2025-04-28 02:17:58.635+02	2025-04-28 02:17:58.635+02
13	s	s	1	s	2025-04-28 02:18:50.455+02	2025-04-28 02:18:50.455+02
14	v	v	1	2	2025-04-28 02:19:00.693+02	2025-04-28 02:19:00.693+02
15	v	v	1	2	2025-04-28 02:19:27.248+02	2025-04-28 02:19:27.248+02
16	v	v	1	2	2025-04-28 02:20:01.046+02	2025-04-28 02:20:01.046+02
17	g	g	1	g	2025-04-28 02:20:16.963+02	2025-04-28 02:20:16.963+02
18	g	g	1	g	2025-04-28 02:20:24.517+02	2025-04-28 02:20:24.517+02
19	g	g	1	g	2025-04-28 02:20:47.496+02	2025-04-28 02:20:47.496+02
20	b	v	4	f	2025-04-28 02:20:56.464+02	2025-04-28 02:20:56.464+02
\.


--
-- Name: Telefonos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Telefonos_id_seq"', 20, true);


--
-- Name: SequelizeMeta SequelizeMeta_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SequelizeMeta"
    ADD CONSTRAINT "SequelizeMeta_pkey" PRIMARY KEY (name);


--
-- Name: Telefonos Telefonos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Telefonos"
    ADD CONSTRAINT "Telefonos_pkey" PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--


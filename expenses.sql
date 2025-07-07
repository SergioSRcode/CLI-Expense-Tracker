--
-- PostgreSQL database dump
--

-- Dumped from database version 17.5 (Postgres.app)
-- Dumped by pg_dump version 17.5 (Postgres.app)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- Name: expenses; Type: TABLE; Schema: public; Owner: sergioravera
--

CREATE TABLE public.expenses (
    id integer NOT NULL,
    amount numeric(6,2) NOT NULL,
    memo text NOT NULL,
    created_on date NOT NULL,
    CONSTRAINT expenses_amount_check CHECK ((amount >= 0.01))
);


ALTER TABLE public.expenses OWNER TO sergioravera;

--
-- Name: expenses_id_seq; Type: SEQUENCE; Schema: public; Owner: sergioravera
--

CREATE SEQUENCE public.expenses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.expenses_id_seq OWNER TO sergioravera;

--
-- Name: expenses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sergioravera
--

ALTER SEQUENCE public.expenses_id_seq OWNED BY public.expenses.id;


--
-- Name: expenses id; Type: DEFAULT; Schema: public; Owner: sergioravera
--

ALTER TABLE ONLY public.expenses ALTER COLUMN id SET DEFAULT nextval('public.expenses_id_seq'::regclass);


--
-- Data for Name: expenses; Type: TABLE DATA; Schema: public; Owner: sergioravera
--

COPY public.expenses (id, amount, memo, created_on) FROM stdin;
1	14.56	Pencils	2025-07-06
2	3.29	Coffee	2025-07-06
3	49.99	Text Editor	2025-07-06
4	43.23	Gas for Sergios Car	2025-07-06
9	5.55	Yu-Gi-Oh Cards	2025-07-07
11	13.99	Frutti's ultra good dental sticks	2025-07-07
12	3.29	More Coffee	2025-07-07
\.


--
-- Name: expenses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sergioravera
--

SELECT pg_catalog.setval('public.expenses_id_seq', 13, true);


--
-- Name: expenses expenses_pkey; Type: CONSTRAINT; Schema: public; Owner: sergioravera
--

ALTER TABLE ONLY public.expenses
    ADD CONSTRAINT expenses_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--


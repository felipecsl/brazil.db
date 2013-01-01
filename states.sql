--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: states; Type: TABLE; Schema: public; Owner: root; Tablespace: 
--

CREATE TABLE states (
    id integer NOT NULL,
    name character varying(30) NOT NULL,
    short_name character varying(4),
    country_id integer,
    updated_at timestamp without time zone NOT NULL,
    slug character varying(255) NOT NULL
);


ALTER TABLE public.states OWNER TO root;

--
-- Name: states_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE states_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.states_id_seq OWNER TO root;

--
-- Name: states_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE states_id_seq OWNED BY states.id;


--
-- Name: states_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('states_id_seq', 27, true);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY states ALTER COLUMN id SET DEFAULT nextval('states_id_seq'::regclass);


--
-- Data for Name: states; Type: TABLE DATA; Schema: public; Owner: root
--

COPY states (id, name, short_name, country_id, updated_at, slug) FROM stdin;
6	Paraná	PR	1	2012-12-31 05:47:44.806396	parana
5	MInas Gerais	MG	1	2012-12-31 05:47:53.499401	minas-gerais
4	Rio de Janeiro	RJ	1	2012-12-31 05:48:01.218939	rio-de-janeiro
3	São Paulo	SP	1	2012-12-31 05:48:10.473416	sao-paulo
2	Santa Catarina	SC	1	2012-12-31 05:48:18.021765	santa-catarina
1	Rio Grande do Sul	RS	1	2012-12-31 05:48:25.322805	rio-grande-do-sul
7	Acre	AC	1	2012-12-31 05:53:18.987676	acre
8	Alagoas	AL	1	2012-12-31 05:53:39.746102	alagoas
9	Amazonas	AM	1	2012-12-31 05:53:39.760098	amazonas
10	Amapá	AP	1	2012-12-31 05:53:39.775953	amapa
11	Bahia	BA	1	2012-12-31 05:53:39.796979	bahia
12	Ceará	CE	1	2012-12-31 05:53:39.855954	ceara
13	Distrito Federal	DF	1	2012-12-31 05:53:39.871768	distrito-federal
14	Espírito Santo	ES	1	2012-12-31 05:53:39.884433	espirito-santo
15	Goiás	GO	1	2012-12-31 05:53:39.895183	goias
16	Maranhão	MA	1	2012-12-31 05:53:39.90684	maranhao
17	Mato Grosso do Sul	MS	1	2012-12-31 05:53:39.918298	mato-grosso-do-sul
18	Mato Grosso	MT	1	2012-12-31 05:53:39.929584	mato-grosso
19	Pará	PA	1	2012-12-31 05:53:39.942269	para
20	Paraíba	PB	1	2012-12-31 05:53:39.955466	paraiba
21	Pernambuco	PE	1	2012-12-31 05:53:39.971398	pernambuco
22	Piauí	PI	1	2012-12-31 05:53:39.985102	piaui
23	Rio Grande do Norte	RN	1	2012-12-31 05:53:40.06008	rio-grande-do-norte
24	Rondônia	RO	1	2012-12-31 05:53:40.073381	rondonia
25	Roraima	RR	1	2012-12-31 05:53:40.09622	roraima
26	Sergipe	SE	1	2012-12-31 05:53:40.11248	sergipe
27	Tocantins	TO	1	2012-12-31 05:53:41.243738	tocantins
\.


--
-- Name: states_pkey; Type: CONSTRAINT; Schema: public; Owner: root; Tablespace: 
--

ALTER TABLE ONLY states
    ADD CONSTRAINT states_pkey PRIMARY KEY (id);


--
-- Name: index_states_on_slug; Type: INDEX; Schema: public; Owner: root; Tablespace: 
--

CREATE UNIQUE INDEX index_states_on_slug ON states USING btree (slug);


--
-- PostgreSQL database dump complete
--


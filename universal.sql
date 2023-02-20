--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    height integer,
    name character varying NOT NULL,
    type character varying,
    property character varying,
    neptun_id integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(40),
    visibility boolean,
    years integer NOT NULL,
    property character varying,
    phase character varying
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: neptun; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.neptun (
    neptun_id integer NOT NULL,
    name character varying,
    visibility integer NOT NULL,
    property text
);


ALTER TABLE public.neptun OWNER TO freecodecamp;

--
-- Name: neptun_neptun_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.neptun_neptun_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.neptun_neptun_id_seq OWNER TO freecodecamp;

--
-- Name: neptun_neptun_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.neptun_neptun_id_seq OWNED BY public.neptun.neptun_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(40),
    height integer,
    type character varying,
    property character varying,
    liveable boolean,
    years integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(40),
    height numeric,
    visibility boolean,
    type character varying,
    year integer NOT NULL,
    property character varying
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: neptun neptun_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.neptun ALTER COLUMN neptun_id SET DEFAULT nextval('public.neptun_neptun_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 7, 'jdfnkjn', 'ferrgr', 'erfg', NULL);
INSERT INTO public.galaxy VALUES (2, 2, 'hfbvfuh', 'ndn', 'jjfj', NULL);
INSERT INTO public.galaxy VALUES (3, 20, 'hrhrh', 'jdjrj', 'hfhfh', NULL);
INSERT INTO public.galaxy VALUES (4, 5, 'hdhd', 'nndn', 'mdmdd', NULL);
INSERT INTO public.galaxy VALUES (5, 10, 'hdh', 'hshh', 'mdhjdhj', NULL);
INSERT INTO public.galaxy VALUES (6, 30, 'the', 'hds', 'thesy', NULL);
INSERT INTO public.galaxy VALUES (7, 15, 'ssjn', 'jdjdj', 'jdsj', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (3, 'gdc', true, 2000, 'dcgydc', 'dvygd');
INSERT INTO public.moon VALUES (4, 'gdc', true, 2000, 'dcgy8uc', 'dvygd');
INSERT INTO public.moon VALUES (5, 'dsvyg', false, 2001, 'dcun', 'dsbvyyj');
INSERT INTO public.moon VALUES (6, 'efvt', true, 2002, 'dvtg', 'ffvbn');
INSERT INTO public.moon VALUES (7, 'dvyg', false, 2003, 'dfn', 'dfhv');
INSERT INTO public.moon VALUES (8, 'fbdv', false, 2004, 'gvuh', 'ergfy');
INSERT INTO public.moon VALUES (9, 'rvuh', true, 2005, 'fyug', 'eft');
INSERT INTO public.moon VALUES (10, 'fsdvh', false, 2006, 'dscv', 'dscgh');
INSERT INTO public.moon VALUES (11, 'sdcyv', true, 2007, 'sgh', 'dsfug');
INSERT INTO public.moon VALUES (12, 'ackuh', false, 2007, 'acy', 'scjh');
INSERT INTO public.moon VALUES (13, 'sdfyu', false, 2008, 'dcvj', 'dcuyg');
INSERT INTO public.moon VALUES (14, 'dvhu', false, 2009, 'srg', 'dsvub');
INSERT INTO public.moon VALUES (15, 'dvuy', true, 2010, 'ayu', 'eouh');
INSERT INTO public.moon VALUES (16, 'sefkg', false, 2011, 'cfn', 'dvkbj');
INSERT INTO public.moon VALUES (17, 'svuh', true, 2012, 'lkndvkln', 'dsvb');
INSERT INTO public.moon VALUES (18, 'dvsuh', false, 2012, 'dsfv', 'esfuh');
INSERT INTO public.moon VALUES (19, 'dcback', true, 2013, 'sfk', 'efihhf');
INSERT INTO public.moon VALUES (20, 'efuhu', false, 2014, 'esfkln', 'aefuh');
INSERT INTO public.moon VALUES (21, 'sfueaf', false, 2015, 'dkcvnj', 'dckh');
INSERT INTO public.moon VALUES (22, 'dkcnj', false, 2016, 'clncv', 'acuhio');
INSERT INTO public.moon VALUES (23, 'advuh', true, 2017, 'decfb', 'dcivug');
INSERT INTO public.moon VALUES (24, 'sdchjvdc', false, 2018, 'dvkbu', 'vyesf');
INSERT INTO public.moon VALUES (25, 'svjh', false, 2019, 'vjuad', 'afuguc');
INSERT INTO public.moon VALUES (26, 'sduh', true, 2020, 'cvyg', 'zchbgu');
INSERT INTO public.moon VALUES (27, 'ddchv', false, 2020, 'dvjbukls', 'dgygsk');
INSERT INTO public.moon VALUES (28, 'sdygse', true, 2021, 'sefuh', 'dsvuh');


--
-- Data for Name: neptun; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.neptun VALUES (1, 'name', 2, 'scuh');
INSERT INTO public.neptun VALUES (2, 'scyv', 4, 'cjygulas');
INSERT INTO public.neptun VALUES (3, 'sdvyug', 5, 'dcygc');
INSERT INTO public.neptun VALUES (4, 'scjvs', 8, 'ads');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, 'hyfy', 7, 'they', 'sjdjf', true, 2000);
INSERT INTO public.planet VALUES (3, 'kjdjv', 10, 'hjdbc', 'dhv', true, 2001);
INSERT INTO public.planet VALUES (4, 'dvyb', 3, 'hdb', 'dcbku', true, 2002);
INSERT INTO public.planet VALUES (5, 'cyb', 4, 'efvb', 'efyub', false, 2001);
INSERT INTO public.planet VALUES (6, 'dcb', 5, 'dsvyg', 'cyge', false, 2004);
INSERT INTO public.planet VALUES (7, 'scybg', 6, 'dvv', 'svyb', false, 2003);
INSERT INTO public.planet VALUES (8, 'dvyg', 7, 'dch', 'sdvygb', true, 2005);
INSERT INTO public.planet VALUES (9, 'aeffiy', 7, 'fvgv', 'sviuh', true, 2006);
INSERT INTO public.planet VALUES (10, 'dcvhuea', 8, 'fuh', 'svdyug', false, 2005);
INSERT INTO public.planet VALUES (11, 'rvg', 9, 'svuyg', 'svygu', false, 2010);
INSERT INTO public.planet VALUES (12, 'svuyg', 10, 'sefyug', 'dycfgu', true, 2012);
INSERT INTO public.planet VALUES (13, 'sdvyg', 11, 'edy', 'efuy', false, 1999);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'bdsb', 7, true, 'scghsch', 2000, 'hxbccx');
INSERT INTO public.star VALUES (3, 'bdsb', 90, true, 'scghsch', 2020, 'hyrhrj');
INSERT INTO public.star VALUES (4, 'gshy', 20, true, 'hetetet', 1999, 'nhtyu');
INSERT INTO public.star VALUES (5, 'HRTT', 30, false, 'hteyy', 2000, 'they');
INSERT INTO public.star VALUES (6, 'petter', 30, false, 'man', 2020, 'theyyya');
INSERT INTO public.star VALUES (7, 'temidayo', 18, false, 'boy', 2004, 'fair');
INSERT INTO public.star VALUES (8, 'moyin', 22, true, 'man', 2002, 'dark');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 28, true);


--
-- Name: neptun_neptun_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.neptun_neptun_id_seq', 4, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_property_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_property_key UNIQUE (property);


--
-- Name: neptun neptun_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.neptun
    ADD CONSTRAINT neptun_pkey PRIMARY KEY (neptun_id);


--
-- Name: neptun neptun_property_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.neptun
    ADD CONSTRAINT neptun_property_key UNIQUE (property);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_property_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_property_key UNIQUE (property);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_property_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_property_key UNIQUE (property);


--
-- Name: galaxy galaxy_neptun_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_neptun_id_fkey FOREIGN KEY (neptun_id) REFERENCES public.neptun(neptun_id);


--
-- PostgreSQL database dump complete
--


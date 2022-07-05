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
    name character varying(40) NOT NULL,
    year_found integer NOT NULL,
    growing boolean,
    meta_universe_id integer
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
-- Name: meta_universe; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.meta_universe (
    meta_universe_id integer NOT NULL,
    name character varying(30) NOT NULL,
    year_found integer NOT NULL
);


ALTER TABLE public.meta_universe OWNER TO freecodecamp;

--
-- Name: meta_universe_meta_universe_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.meta_universe_meta_universe_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.meta_universe_meta_universe_id_seq OWNER TO freecodecamp;

--
-- Name: meta_universe_meta_universe_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.meta_universe_meta_universe_id_seq OWNED BY public.meta_universe.meta_universe_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(40) NOT NULL,
    temperature numeric(4,1) NOT NULL,
    water boolean,
    planet_id integer
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
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(40) NOT NULL,
    year_found integer NOT NULL,
    temperature numeric(4,1),
    details text,
    living boolean,
    water boolean,
    star_id integer
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
    name character varying(40) NOT NULL,
    year_found integer NOT NULL,
    temperature numeric(4,1),
    galaxy_id integer
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
-- Name: meta_universe meta_universe_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meta_universe ALTER COLUMN meta_universe_id SET DEFAULT nextval('public.meta_universe_meta_universe_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'Iron man', 2008, false, 1);
INSERT INTO public.galaxy VALUES (2, 'Captain America', 2008, false, 1);
INSERT INTO public.galaxy VALUES (3, 'The Thor', 2009, true, 1);
INSERT INTO public.galaxy VALUES (4, 'Dr Strange', 2015, true, 1);
INSERT INTO public.galaxy VALUES (5, 'Spiderman', 2016, true, 1);
INSERT INTO public.galaxy VALUES (6, 'Hulk', 2008, false, 1);


--
-- Data for Name: meta_universe; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.meta_universe VALUES (1, 'Marvel', 1994);
INSERT INTO public.meta_universe VALUES (2, 'DC', 1990);
INSERT INTO public.meta_universe VALUES (3, 'Modern family', 2010);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 10.0, false, 1);
INSERT INTO public.moon VALUES (2, '0002', 10.0, false, 2);
INSERT INTO public.moon VALUES (3, '0003', 10.0, false, 4);
INSERT INTO public.moon VALUES (4, '0004', 10.0, false, 3);
INSERT INTO public.moon VALUES (5, '0005', 10.0, false, 1);
INSERT INTO public.moon VALUES (7, '0006', 10.0, false, 10);
INSERT INTO public.moon VALUES (8, '0007', 10.0, false, 13);
INSERT INTO public.moon VALUES (10, '0008', 10.0, false, 12);
INSERT INTO public.moon VALUES (11, '0009', 10.0, false, 8);
INSERT INTO public.moon VALUES (12, '0010', 10.0, false, 8);
INSERT INTO public.moon VALUES (13, '0011', 10.0, false, 8);
INSERT INTO public.moon VALUES (14, '0012', 10.0, false, 7);
INSERT INTO public.moon VALUES (15, '0013', 10.0, false, 7);
INSERT INTO public.moon VALUES (17, '0014', 10.0, false, 6);
INSERT INTO public.moon VALUES (18, '0015', 10.0, false, 6);
INSERT INTO public.moon VALUES (19, '0016', 10.0, false, 6);
INSERT INTO public.moon VALUES (20, '0017', 10.0, false, 5);
INSERT INTO public.moon VALUES (21, '0018', 10.0, false, 5);
INSERT INTO public.moon VALUES (22, '0019', 10.0, false, 4);
INSERT INTO public.moon VALUES (23, '0020', 10.0, false, 4);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 1999, 20.0, NULL, true, true, 1);
INSERT INTO public.planet VALUES (2, 'sun', 1998, 90.0, NULL, false, false, 1);
INSERT INTO public.planet VALUES (3, 'Jupiter', 1998, 30.0, NULL, false, false, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 1998, 30.0, NULL, true, true, 1);
INSERT INTO public.planet VALUES (5, 'Pluto', 2020, 40.0, NULL, false, true, 1);
INSERT INTO public.planet VALUES (6, 'Neptune', 2020, 35.0, NULL, false, false, 1);
INSERT INTO public.planet VALUES (7, 'Satune', 2020, 30.0, NULL, false, false, 1);
INSERT INTO public.planet VALUES (8, 'Uranus', 2020, 30.0, NULL, false, false, 1);
INSERT INTO public.planet VALUES (10, 'Venus', 2020, 30.0, NULL, false, false, 1);
INSERT INTO public.planet VALUES (11, 'Mercury', 2020, 30.0, NULL, false, false, 1);
INSERT INTO public.planet VALUES (12, 'super earth', 2050, 30.0, NULL, false, false, 1);
INSERT INTO public.planet VALUES (13, 'seond earth', 2050, 30.0, NULL, true, true, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Tom Holland', 2016, 10.0, 5);
INSERT INTO public.star VALUES (2, 'Chirs', 2008, 11.0, 3);
INSERT INTO public.star VALUES (3, 'Eric', 2008, 15.0, 2);
INSERT INTO public.star VALUES (4, 'Natalie', 2009, 13.0, 3);
INSERT INTO public.star VALUES (5, 'Buberbetch', 2010, 14.0, 5);
INSERT INTO public.star VALUES (6, 'Allen', 2019, 30.0, 2);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: meta_universe_meta_universe_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.meta_universe_meta_universe_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 23, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: meta_universe meta_universe_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meta_universe
    ADD CONSTRAINT meta_universe_name_key UNIQUE (name);


--
-- Name: meta_universe meta_universe_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meta_universe
    ADD CONSTRAINT meta_universe_pkey PRIMARY KEY (meta_universe_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy galaxy_meta_universe_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_meta_universe_id_fkey FOREIGN KEY (meta_universe_id) REFERENCES public.meta_universe(meta_universe_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--


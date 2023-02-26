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
    name character varying NOT NULL,
    zwerggalaxy boolean,
    short_name character varying(5),
    col4 integer,
    col5 integer
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
    name character varying,
    planet_id integer NOT NULL,
    col4 integer,
    col5 integer
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
-- Name: more_information; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.more_information (
    more_information_id integer NOT NULL,
    info1 text NOT NULL,
    info2 text NOT NULL,
    name character varying
);


ALTER TABLE public.more_information OWNER TO freecodecamp;

--
-- Name: more_information_more_information_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.more_information_more_information_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.more_information_more_information_id_seq OWNER TO freecodecamp;

--
-- Name: more_information_more_information_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.more_information_more_information_id_seq OWNED BY public.more_information.more_information_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying,
    distance_from_earth integer,
    age integer,
    diameter_in_km numeric,
    description text,
    has_life boolean,
    is_spherical boolean,
    star_id integer NOT NULL
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
    name character varying,
    galaxy_id integer NOT NULL,
    col5 integer,
    col4 integer
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
-- Name: more_information more_information_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_information ALTER COLUMN more_information_id SET DEFAULT nextval('public.more_information_more_information_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (2, 'Magellansche Wolke', true, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Leo-1', true, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Leo-2', true, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Ursar-Minor', true, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Sextans', true, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (1, 'Milchstarsse', false, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Mond', 1, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'Phobos', 4, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'Deimos', 4, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'Metis', 5, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'Adrastea', 5, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'Amalthea', 5, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'Thebe', 5, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'Europa', 5, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'Io', 5, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'Ganymed', 5, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'Kallisto', 5, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'Thethys', 6, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'Mimas', 6, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'Ariel', 7, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'Umbriel', 7, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'Titania', 7, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'Oberon', 7, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'ERFUNDENs', 9, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'gibtsnich', 9, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'haha', 9, NULL, NULL);


--
-- Data for Name: more_information; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.more_information VALUES (1, 'info1', 'info2', NULL);
INSERT INTO public.more_information VALUES (2, 'info1.2', 'info2.2', NULL);
INSERT INTO public.more_information VALUES (3, 'info1.3', 'info2.3', NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Erde', 0, 123000000, 7200, 'Planet Erde mit 70% Wasser', true, true, 1);
INSERT INTO public.planet VALUES (2, 'Merkur', 57909175, 12300000, 2439, 'am nächsten zur Sonne', false, false, 1);
INSERT INTO public.planet VALUES (3, 'Venus', 10820893, 12300000, 6378, 'heißester PLanet im Sonnensystem', false, false, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 227936640, 12300000, 3397, 'der Mars', false, false, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 778421020, 12300000, 71492, 'Gasriese, größter PLanet im Sonnensystem', false, false, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 1426725400, 12300000, 60267, 'Gasriese mit charakt. Ringen', false, false, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 2870972, 12300000, 25559, 'blabla', false, false, 1);
INSERT INTO public.planet VALUES (8, 'Heliomn', 1426725400, 12300000, 60267, 'Gasriese mit charakt. Ringen', false, false, 1);
INSERT INTO public.planet VALUES (9, 'Urewewfs', 2870972, 12300000, 25559, 'blabla', false, false, 1);
INSERT INTO public.planet VALUES (12, 'Heliom-2n', 1426725400, 12300000, 60267, 'Gasriese mit charakt. Ringen', false, false, 1);
INSERT INTO public.planet VALUES (11, 'Ureefe-2s', 2870972, 12300000, 25559, 'blabla', false, false, 1);
INSERT INTO public.planet VALUES (10, 'Pluto', 1426725400, 12300000, 60267, 'Gasriese mit charakt. Ringen', false, false, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sonne', 1, NULL, NULL);
INSERT INTO public.star VALUES (2, 'Hotty', 1, NULL, NULL);
INSERT INTO public.star VALUES (3, 'kleine Sonne', 1, NULL, NULL);
INSERT INTO public.star VALUES (4, 'Proxima Centauri', 1, NULL, NULL);
INSERT INTO public.star VALUES (5, 'Luhman 16 A', 1, NULL, NULL);
INSERT INTO public.star VALUES (6, 'Ross 128', 1, NULL, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 2, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, true);


--
-- Name: more_information_more_information_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.more_information_more_information_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_col4_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_col4_key UNIQUE (col4);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_short_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_short_name_key UNIQUE (short_name);


--
-- Name: moon moon_col4_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_col4_key UNIQUE (col4);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: more_information more_information_info1_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_information
    ADD CONSTRAINT more_information_info1_key UNIQUE (info1);


--
-- Name: more_information more_information_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_information
    ADD CONSTRAINT more_information_pkey PRIMARY KEY (more_information_id);


--
-- Name: planet nema; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT nema UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_col4_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_col4_key UNIQUE (col4);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


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


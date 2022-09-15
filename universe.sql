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
    name character varying(250) NOT NULL,
    galaxy_types integer NOT NULL,
    age_in_millions_of_years numeric(6,1),
    description text,
    distance_from_earth numeric(16,1)
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
    name character varying(250) NOT NULL,
    description text,
    distance_from_earth numeric(16,1),
    planet_id integer NOT NULL
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
    name character varying(250) NOT NULL,
    planet_types integer NOT NULL,
    has_life boolean,
    distance_from_earth numeric(16,1),
    is_spherical boolean,
    description text,
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
    name character varying(250) NOT NULL,
    description text,
    distance_from_earth numeric(16,1),
    galaxy_id integer NOT NULL
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
-- Name: sun; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.sun (
    sun_id integer NOT NULL,
    name character varying(250) NOT NULL,
    description text,
    distance_from_earth numeric(16,1),
    planet_id integer NOT NULL
);


ALTER TABLE public.sun OWNER TO freecodecamp;

--
-- Name: sun_sun_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.sun_sun_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sun_sun_id_seq OWNER TO freecodecamp;

--
-- Name: sun_sun_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.sun_sun_id_seq OWNED BY public.sun.sun_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


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
-- Name: sun sun_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun ALTER COLUMN sun_id SET DEFAULT nextval('public.sun_sun_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Tiên nữ', 1, 10000.0, 'Thiên hà nằm ở chòm sao tiên nữ', 10000000.0);
INSERT INTO public.galaxy VALUES (3, 'Mắt đen', 1, 10000.0, 'Thiên hà nằm ở chòm sao tiên nữ', 10000000.0);
INSERT INTO public.galaxy VALUES (4, '', 1, 10000.0, 'Thiên hà nằm ở chòm sao tiên nữ', 10000000.0);
INSERT INTO public.galaxy VALUES (5, 'Bode', 1, 10000.0, 'Thiên hà nằm ở chòm sao tiên nữ', 10000000.0);
INSERT INTO public.galaxy VALUES (6, 'Bánh xe', 1, 10000.0, 'Thiên hà nằm ở chòm sao tiên nữ', 10000000.0);
INSERT INTO public.galaxy VALUES (7, 'Cigar', 1, 10000.0, 'Thiên hà nằm ở chòm sao tiên nữ', 10000000.0);
INSERT INTO public.galaxy VALUES (8, 'Cigar 2', 1, 10000.0, 'Thiên hà nằm ở chòm sao tiên nữ', 10000000.0);
INSERT INTO public.galaxy VALUES (9, 'Cigar 3', 1, 10000.0, 'Thiên hà nằm ở chòm sao tiên nữ', 10000000.0);
INSERT INTO public.galaxy VALUES (10, 'Cigar 4', 1, 10000.0, 'Thiên hà nằm ở chòm sao tiên nữ', 10000000.0);
INSERT INTO public.galaxy VALUES (11, 'Cigar 5', 1, 10000.0, 'Thiên hà nằm ở chòm sao tiên nữ', 10000000.0);
INSERT INTO public.galaxy VALUES (12, 'Cigar 6', 1, 10000.0, 'Thiên hà nằm ở chòm sao tiên nữ', 10000000.0);
INSERT INTO public.galaxy VALUES (13, 'Cigar 7', 1, 10000.0, 'Thiên hà nằm ở chòm sao tiên nữ', 10000000.0);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon 1', 'moon ....', 100000.0, 1);
INSERT INTO public.moon VALUES (2, 'moon 2', 'moon ....', 100000.0, 1);
INSERT INTO public.moon VALUES (3, 'moon 3', 'moon ....', 100000.0, 1);
INSERT INTO public.moon VALUES (4, 'moon 4', 'moon ....', 100000.0, 1);
INSERT INTO public.moon VALUES (5, 'moon 5', 'moon ....', 100000.0, 1);
INSERT INTO public.moon VALUES (6, 'moon 6', 'moon ....', 100000.0, 1);
INSERT INTO public.moon VALUES (7, 'moon 7', 'moon ....', 100000.0, 2);
INSERT INTO public.moon VALUES (8, 'moon 8', 'moon ....', 100000.0, 3);
INSERT INTO public.moon VALUES (9, 'moon 9', 'moon ....', 100000.0, 4);
INSERT INTO public.moon VALUES (10, 'moon 10', 'moon ....', 100000.0, 4);
INSERT INTO public.moon VALUES (11, 'moon 11', 'moon ....', 100000.0, 4);
INSERT INTO public.moon VALUES (12, 'moon 12', 'moon ....', 100000.0, 4);
INSERT INTO public.moon VALUES (13, 'moon 13', 'moon ....', 100000.0, 4);
INSERT INTO public.moon VALUES (16, 'moon 14', 'moon ....', 100000.0, 10);
INSERT INTO public.moon VALUES (17, 'moon 15', 'moon ....', 100000.0, 10);
INSERT INTO public.moon VALUES (18, 'moon 16', 'moon ....', 100000.0, 10);
INSERT INTO public.moon VALUES (21, 'moon 17', 'moon ....', 100000.0, 15);
INSERT INTO public.moon VALUES (22, 'moon 18', 'moon ....', 100000.0, 15);
INSERT INTO public.moon VALUES (23, 'moon 19', 'moon ....', 100000.0, 15);
INSERT INTO public.moon VALUES (24, 'moon 20', 'moon ....', 100000.0, 15);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'sao tho', 1, true, 100000.0, true, 'planet ....', 1);
INSERT INTO public.planet VALUES (2, 'sao moc', 1, true, 100000.0, true, 'planet ....', 1);
INSERT INTO public.planet VALUES (3, 'sao kim', 1, true, 100000.0, true, 'planet ....', 2);
INSERT INTO public.planet VALUES (4, 'hanh tinh 1', 1, true, 100000.0, true, 'planet ....', 3);
INSERT INTO public.planet VALUES (6, 'hanh tinh 2', 1, true, 100000.0, true, 'planet ....', 5);
INSERT INTO public.planet VALUES (7, 'hanh tinh 3', 1, true, 100000.0, true, 'planet ....', 6);
INSERT INTO public.planet VALUES (8, 'hanh tinh 4', 1, true, 100000.0, true, 'planet ....', 7);
INSERT INTO public.planet VALUES (10, 'hanh tinh 5', 1, true, 100000.0, true, 'planet ....', 8);
INSERT INTO public.planet VALUES (15, 'hanh tinh 6', 1, true, 100000.0, true, 'planet ....', 5);
INSERT INTO public.planet VALUES (16, 'hanh tinh 7', 1, true, 100000.0, true, 'planet ....', 3);
INSERT INTO public.planet VALUES (18, 'hanh tinh 8', 1, true, 100000.0, true, 'planet ....', 3);
INSERT INTO public.planet VALUES (19, 'hanh tinh 9', 1, true, 100000.0, true, 'planet ....', 3);
INSERT INTO public.planet VALUES (20, 'hanh tinh 10', 1, true, 100000.0, true, 'planet ....', 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Cigar 7', 'Thiên hà nằm ở chòm sao tiên nữ', 10000000.0, 1);
INSERT INTO public.star VALUES (2, 'star 1', 'star ....', 10000000.0, 1);
INSERT INTO public.star VALUES (3, 'star 2', 'star ....', 10000000.0, 3);
INSERT INTO public.star VALUES (5, 'star 3', 'star ....', 10000000.0, 4);
INSERT INTO public.star VALUES (6, 'star 5', 'star ....', 10000000.0, 5);
INSERT INTO public.star VALUES (7, 'star 6', 'star ....', 10000000.0, 6);
INSERT INTO public.star VALUES (8, 'star 7', 'star ....', 10000000.0, 7);


--
-- Data for Name: sun; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.sun VALUES (1, 'sun 1', 'moon ....', 100000.0, 15);
INSERT INTO public.sun VALUES (2, 'sun 2', 'moon ....', 100000.0, 1);
INSERT INTO public.sun VALUES (3, 'sun 3', 'moon ....', 100000.0, 1);
INSERT INTO public.sun VALUES (4, 'sun 4', 'moon ....', 100000.0, 1);
INSERT INTO public.sun VALUES (5, 'sun 5', 'moon ....', 100000.0, 3);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 13, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 24, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 20, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


--
-- Name: sun_sun_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.sun_sun_id_seq', 5, true);


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
-- Name: sun sun_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun
    ADD CONSTRAINT sun_name_key UNIQUE (name);


--
-- Name: sun sun_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun
    ADD CONSTRAINT sun_pkey PRIMARY KEY (sun_id);


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
-- Name: sun sun_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun
    ADD CONSTRAINT sun_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- PostgreSQL database dump complete
--


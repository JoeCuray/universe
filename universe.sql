--
-- PostgreSQL database dump
--

-- Dumped from database version 12.15 (Ubuntu 12.15-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.15 (Ubuntu 12.15-0ubuntu0.20.04.1)

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
-- Name: black_hole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.black_hole (
    black_hole_id integer NOT NULL,
    gravity integer,
    galaxy_id integer NOT NULL,
    wormhole boolean DEFAULT false,
    name character varying(25) NOT NULL
);


ALTER TABLE public.black_hole OWNER TO freecodecamp;

--
-- Name: black_hole_black_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.black_hole_black_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.black_hole_black_id_seq OWNER TO freecodecamp;

--
-- Name: black_hole_black_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.black_hole_black_id_seq OWNED BY public.black_hole.black_hole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(25) NOT NULL,
    speed integer NOT NULL,
    description text,
    galaxyc5 integer
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
    name character varying(25) NOT NULL,
    name_cod character varying(25) NOT NULL,
    has_water boolean DEFAULT false,
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
    name character varying NOT NULL,
    amount_of_people numeric NOT NULL,
    time_travel boolean DEFAULT false,
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
    name character varying(25) NOT NULL,
    radius integer NOT NULL,
    color character varying(25) NOT NULL,
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
-- Name: black_hole black_hole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole ALTER COLUMN black_hole_id SET DEFAULT nextval('public.black_hole_black_id_seq'::regclass);


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
-- Data for Name: black_hole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.black_hole VALUES (1, 1000, 1000, true, 'black1');
INSERT INTO public.black_hole VALUES (2, 2000, 2000, true, 'black2');
INSERT INTO public.black_hole VALUES (3, 3000, 3000, true, 'black3');
INSERT INTO public.black_hole VALUES (4, 4000, 4000, true, 'black4');
INSERT INTO public.black_hole VALUES (5, 5000, 5000, true, 'black5');
INSERT INTO public.black_hole VALUES (6, 6000, 6000, true, 'black6');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'galaxy1', 1000, 'description_galaxy_1', NULL);
INSERT INTO public.galaxy VALUES (2, 'galaxy2', 2000, 'description_galaxy_2', NULL);
INSERT INTO public.galaxy VALUES (3, 'galaxy3', 2000, 'description_galaxy_3', NULL);
INSERT INTO public.galaxy VALUES (4, 'galaxy4', 4000, 'description_galaxy_4', NULL);
INSERT INTO public.galaxy VALUES (5, 'galaxy5', 5000, 'description_galaxy_5', NULL);
INSERT INTO public.galaxy VALUES (6, 'galaxy6', 6000, 'description_galaxy_6', NULL);
INSERT INTO public.galaxy VALUES (7, 'galaxy7', 7000, 'description_galaxy_7', NULL);
INSERT INTO public.galaxy VALUES (8, 'galaxy8', 8000, 'description_galaxy_8', NULL);
INSERT INTO public.galaxy VALUES (9, 'galaxy9', 9000, 'description_galaxy_9', NULL);
INSERT INTO public.galaxy VALUES (10, 'galaxy10', 10000, 'description_galaxy_10', NULL);
INSERT INTO public.galaxy VALUES (11, 'galaxy11', 11000, 'description_galaxy_11', NULL);
INSERT INTO public.galaxy VALUES (12, 'galaxy12', 12000, 'description_galaxy_12', NULL);
INSERT INTO public.galaxy VALUES (13, 'galaxy13', 13000, 'description_galaxy_13', NULL);
INSERT INTO public.galaxy VALUES (14, 'galaxy14', 14000, 'description_galaxy_14', NULL);
INSERT INTO public.galaxy VALUES (15, 'galaxy15', 15000, 'description_galaxy_15', NULL);
INSERT INTO public.galaxy VALUES (16, 'galaxy16', 16000, 'description_galaxy_16', NULL);
INSERT INTO public.galaxy VALUES (17, 'galaxy17', 17000, 'description_galaxy_17', NULL);
INSERT INTO public.galaxy VALUES (18, 'galaxy18', 18000, 'description_galaxy_18', NULL);
INSERT INTO public.galaxy VALUES (19, 'galaxy19', 19000, 'description_galaxy_19', NULL);
INSERT INTO public.galaxy VALUES (20, 'galaxy20', 20000, 'description_galaxy_20', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon1', '001', true, 1);
INSERT INTO public.moon VALUES (2, 'moon2', '002', true, 2);
INSERT INTO public.moon VALUES (3, 'moon3', '003', true, 3);
INSERT INTO public.moon VALUES (4, 'moon4', '004', true, 4);
INSERT INTO public.moon VALUES (5, 'moon5', '005', true, 5);
INSERT INTO public.moon VALUES (6, 'moon6', '006', true, 6);
INSERT INTO public.moon VALUES (8, 'moon7', '007', true, 9);
INSERT INTO public.moon VALUES (10, 'moon7', '010', true, 10);
INSERT INTO public.moon VALUES (11, 'moon7', '011', true, 11);
INSERT INTO public.moon VALUES (12, 'moon7', '012', true, 12);
INSERT INTO public.moon VALUES (13, 'moon7', '013', true, 13);
INSERT INTO public.moon VALUES (14, 'moon7', '014', true, 14);
INSERT INTO public.moon VALUES (15, 'moon7', '015', true, 15);
INSERT INTO public.moon VALUES (16, 'moon7', '016', true, 16);
INSERT INTO public.moon VALUES (17, 'moon7', '017', true, 17);
INSERT INTO public.moon VALUES (18, 'moon7', '018', true, 18);
INSERT INTO public.moon VALUES (19, 'moon7', '019', true, 19);
INSERT INTO public.moon VALUES (20, 'moon7', '020', true, 20);
INSERT INTO public.moon VALUES (21, 'moon7', '021', true, 21);
INSERT INTO public.moon VALUES (22, 'moon7', '022', true, 22);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planet1', 100, true, 1);
INSERT INTO public.planet VALUES (2, 'planet2', 200, true, 2);
INSERT INTO public.planet VALUES (3, 'planet3', 300, false, 3);
INSERT INTO public.planet VALUES (4, 'planet4', 400, false, 4);
INSERT INTO public.planet VALUES (5, 'planet5', 500, true, 5);
INSERT INTO public.planet VALUES (6, 'planet6', 600, true, 6);
INSERT INTO public.planet VALUES (9, 'planet7', 700, true, 7);
INSERT INTO public.planet VALUES (10, 'planet8', 800, true, 8);
INSERT INTO public.planet VALUES (11, 'planet9', 900, true, 9);
INSERT INTO public.planet VALUES (12, 'planet10', 1000, true, 10);
INSERT INTO public.planet VALUES (13, 'planet11', 11000, true, 11);
INSERT INTO public.planet VALUES (14, 'planet12', 12000, true, 12);
INSERT INTO public.planet VALUES (15, 'planet13', 13000, true, 13);
INSERT INTO public.planet VALUES (16, 'planet14', 14000, true, 14);
INSERT INTO public.planet VALUES (17, 'planet15', 15000, true, 15);
INSERT INTO public.planet VALUES (18, 'planet16', 16000, true, 16);
INSERT INTO public.planet VALUES (19, 'planet17', 17000, true, 17);
INSERT INTO public.planet VALUES (20, 'planet18', 18000, true, 18);
INSERT INTO public.planet VALUES (21, 'planet19', 19000, true, 19);
INSERT INTO public.planet VALUES (22, 'planet20', 20000, true, 20);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star1', 100, 'star_color_1', 1);
INSERT INTO public.star VALUES (2, 'star2', 200, 'star_color_2', 2);
INSERT INTO public.star VALUES (3, 'star3', 300, 'star_color_3', 3);
INSERT INTO public.star VALUES (4, 'star4', 400, 'star_color_4', 4);
INSERT INTO public.star VALUES (5, 'star5', 500, 'star_color_5', 5);
INSERT INTO public.star VALUES (6, 'star6', 600, 'star_color_6', 6);
INSERT INTO public.star VALUES (7, 'star7', 700, 'star_color_7', 7);
INSERT INTO public.star VALUES (8, 'star8', 800, 'star_color_8', 8);
INSERT INTO public.star VALUES (9, 'star8', 900, 'star_color_9', 9);
INSERT INTO public.star VALUES (10, 'star8', 1000, 'star_color_10', 10);
INSERT INTO public.star VALUES (11, 'star8', 11000, 'star_color_11', 11);
INSERT INTO public.star VALUES (12, 'star12', 12000, 'star_color_12', 12);
INSERT INTO public.star VALUES (13, 'star13', 13000, 'star_color_13', 13);
INSERT INTO public.star VALUES (14, 'star14', 14000, 'star_color_14', 14);
INSERT INTO public.star VALUES (15, 'star15', 15000, 'star_color_15', 15);
INSERT INTO public.star VALUES (16, 'star16', 16000, 'star_color_16', 16);
INSERT INTO public.star VALUES (17, 'star17', 17000, 'star_color_17', 17);
INSERT INTO public.star VALUES (18, 'star18', 18000, 'star_color_18', 18);
INSERT INTO public.star VALUES (19, 'star19', 19000, 'star_color_19', 19);
INSERT INTO public.star VALUES (20, 'star20', 20000, 'star_color_20', 20);


--
-- Name: black_hole_black_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.black_hole_black_id_seq', 6, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 20, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 22, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 20, true);


--
-- Name: black_hole black_hole_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: black_hole black_hole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_pkey PRIMARY KEY (black_hole_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_galaxyc5_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxyc5_key UNIQUE (galaxyc5);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_cod_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_cod_key UNIQUE (name_cod);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_color_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_color_key UNIQUE (color);


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


--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: constellation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constellation (
    constellation_id integer NOT NULL,
    name character varying(30) NOT NULL,
    month1 integer,
    month2 integer
);


ALTER TABLE public.constellation OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.constellation_constellation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.constellation_constellation_id_seq OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.constellation_constellation_id_seq OWNED BY public.constellation.constellation_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    type character varying(10),
    distance_mill_lightyear numeric,
    description text
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
    name character varying(30) NOT NULL,
    planet_id integer,
    orbital_period_day numeric,
    is_spherical boolean
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
    name character varying(30) NOT NULL,
    planet_types character varying(20),
    mass_r numeric,
    orbital_period_r numeric,
    is_spherical boolean,
    has_life boolean,
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
    name character varying(30) NOT NULL,
    distance_lightyear numeric,
    absolute_magnitude numeric,
    age_in_mill_of_years numeric,
    radius_r numeric,
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
-- Name: constellation constellation_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation ALTER COLUMN constellation_id SET DEFAULT nextval('public.constellation_constellation_id_seq'::regclass);


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
-- Data for Name: constellation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constellation VALUES (1, 'Aries', 3, 4);
INSERT INTO public.constellation VALUES (2, 'Taurus', 4, 5);
INSERT INTO public.constellation VALUES (3, 'Gemini', 5, 6);
INSERT INTO public.constellation VALUES (4, 'Cancer', 6, 7);
INSERT INTO public.constellation VALUES (5, 'Leo', 7, 8);
INSERT INTO public.constellation VALUES (6, 'Virgo', 8, 9);
INSERT INTO public.constellation VALUES (7, 'Libra', 9, 10);
INSERT INTO public.constellation VALUES (8, 'Scorpius', 10, 11);
INSERT INTO public.constellation VALUES (9, 'Sagittarius', 11, 12);
INSERT INTO public.constellation VALUES (10, 'Capricornus', 12, 1);
INSERT INTO public.constellation VALUES (11, 'Aquarius', 1, 2);
INSERT INTO public.constellation VALUES (12, 'Pisces', 2, 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'the Galaxy', 'SBc', NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda Galaxy', 'SAb', 2.5, NULL);
INSERT INTO public.galaxy VALUES (3, 'M81', 'SAab', 12, NULL);
INSERT INTO public.galaxy VALUES (4, 'Cartwheel Galaxy', 'S', 500, NULL);
INSERT INTO public.galaxy VALUES (5, 'Large Magellnic Cloud', 'SBm', 0.163, NULL);
INSERT INTO public.galaxy VALUES (6, 'Small Magellanic Cloud', 'SBm', 0.1907, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 3, 27.322, true);
INSERT INTO public.moon VALUES (2, 'Phobos', 4, 0.319, false);
INSERT INTO public.moon VALUES (3, 'Deimos', 4, 1.262, false);
INSERT INTO public.moon VALUES (4, 'Io', 5, 1.769, true);
INSERT INTO public.moon VALUES (5, 'Europa', 5, 3.551, true);
INSERT INTO public.moon VALUES (6, 'Ganymede', 5, 7.155, true);
INSERT INTO public.moon VALUES (7, 'Callista', 5, 16.689, true);
INSERT INTO public.moon VALUES (8, 'Mimas', 6, 0.942, true);
INSERT INTO public.moon VALUES (9, 'Enceladus', 6, 1.370, true);
INSERT INTO public.moon VALUES (10, 'Tethys', 6, 1.888, true);
INSERT INTO public.moon VALUES (11, 'Dione', 6, 2.737, true);
INSERT INTO public.moon VALUES (12, 'Rhea', 6, 4.518, true);
INSERT INTO public.moon VALUES (13, 'Titan', 6, 15.945, true);
INSERT INTO public.moon VALUES (14, 'Iapetus', 6, 79.331, true);
INSERT INTO public.moon VALUES (15, 'Ariel', 7, 2.521, true);
INSERT INTO public.moon VALUES (16, 'Umbriel', 7, 4.145, true);
INSERT INTO public.moon VALUES (17, 'Titania', 7, 8.706, true);
INSERT INTO public.moon VALUES (18, 'Oberon', 7, 13.464, true);
INSERT INTO public.moon VALUES (19, 'Miranda', 7, 1.414, true);
INSERT INTO public.moon VALUES (20, 'Triton', 8, 5.877, true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'terrestrial', 0.055, 0.24, true, false, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 'terrestrial', 0.815, 0.62, true, false, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 'terrestrial', 1, 1, true, true, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 'terrestrial', 0.107, 1.88, true, false, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'jovian', 317.8, 11.86, true, false, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 'jovian', 95.16, 29.46, true, false, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 'giant_ice', 14.54, 84.02, true, false, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 'giant_ice', 17.15, 164.77, true, false, 1);
INSERT INTO public.planet VALUES (9, 'Pluto', 'dwarf', 0.0021, 247.74, true, false, 1);
INSERT INTO public.planet VALUES (10, 'Haumea', 'dwarf', 0.00067, 282.29, false, false, 1);
INSERT INTO public.planet VALUES (11, 'Makemake', 'dwarf', 0.00067, 305.45, false, false, 1);
INSERT INTO public.planet VALUES (12, 'Eris', 'dwarf', 0.0028, 560.80, true, false, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 0.000016, 4.82, 4600, 1, 1);
INSERT INTO public.star VALUES (2, 'Sirius', 8.6, 1.434, 225, 1.71, 1);
INSERT INTO public.star VALUES (3, 'Canopus', 309, -5.624, NULL, 71, 1);
INSERT INTO public.star VALUES (4, 'Arcturus', 36.7, -0.307, 7100, 25.4, 1);
INSERT INTO public.star VALUES (5, 'Vega', 25.03, 0.604, 350, 2.73, 1);
INSERT INTO public.star VALUES (6, 'Rigel', 700, -6.983, 8, 78.9, 1);
INSERT INTO public.star VALUES (7, 'Betlgeuse', 500, -5.499, 8, 764, 1);
INSERT INTO public.star VALUES (8, 'Altair', 16.72, 2.21, 1200, 1.63, 1);
INSERT INTO public.star VALUES (9, 'Aldebaran', 66.61, -0.692, 6600, 44, 1);


--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constellation_constellation_id_seq', 12, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 9, true);


--
-- Name: constellation constellation_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_name_key UNIQUE (name);


--
-- Name: constellation constellation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_pkey PRIMARY KEY (constellation_id);


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
-- Name: star star_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key1 UNIQUE (name);


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


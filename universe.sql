--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
    name character varying(60) NOT NULL,
    description text,
    age_in_millions_of_years numeric(5,2),
    type character varying(60)
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
    name character varying(60) NOT NULL,
    number_of_craters integer,
    description text,
    distance_from_the_nearest_planet_in_km integer,
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
    name character varying(60) NOT NULL,
    description text,
    has_life boolean,
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
    name character varying(60) NOT NULL,
    description text,
    age_in_millions_of_years numeric(11,6),
    distance_from_earch_of_light_years numeric(11,8),
    is_dead boolean,
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
-- Name: type_of_stars; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.type_of_stars (
    type_of_stars_id integer NOT NULL,
    name character varying(60) NOT NULL,
    description text
);


ALTER TABLE public.type_of_stars OWNER TO freecodecamp;

--
-- Name: type_of_stars_type_of_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.type_of_stars_type_of_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.type_of_stars_type_of_star_id_seq OWNER TO freecodecamp;

--
-- Name: type_of_stars_type_of_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.type_of_stars_type_of_star_id_seq OWNED BY public.type_of_stars.type_of_stars_id;


--
-- Name: types_stars; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.types_stars (
    types_stars_id integer NOT NULL,
    type_of_stars_id integer NOT NULL,
    star_id integer NOT NULL,
    name character varying(60) NOT NULL
);


ALTER TABLE public.types_stars OWNER TO freecodecamp;

--
-- Name: types_stars_types_stars_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.types_stars_types_stars_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.types_stars_types_stars_id_seq OWNER TO freecodecamp;

--
-- Name: types_stars_types_stars_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.types_stars_types_stars_id_seq OWNED BY public.types_stars.types_stars_id;


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
-- Name: type_of_stars type_of_stars_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.type_of_stars ALTER COLUMN type_of_stars_id SET DEFAULT nextval('public.type_of_stars_type_of_star_id_seq'::regclass);


--
-- Name: types_stars types_stars_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.types_stars ALTER COLUMN types_stars_id SET DEFAULT nextval('public.types_stars_types_stars_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Our home galaxy containing the Solar System', 500.50, 'Spiral');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'The nearest major spiral galaxy to the Milky Way', 450.00, 'Spiral');
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'A spiral galaxy in the Local Group', 300.25, 'Spiral');
INSERT INTO public.galaxy VALUES (4, 'Sombrero', 'A spiral galaxy with a prominent central bulge and dust lane', 250.75, 'Spiral');
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', 'A grand-design spiral galaxy located in the constellation Canes Venatici', 120.50, 'Spiral');
INSERT INTO public.galaxy VALUES (6, 'Pinwheel', 'A face-on spiral galaxy located in the constellation Ursa Major', 130.40, 'Spiral');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 300000, 'Earths only natural satellite', 384400, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 1000, 'The larger and closer of the two moons of Mars', 6000, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 500, 'The smaller and outermost moon of Mars', 23460, 4);
INSERT INTO public.moon VALUES (4, 'Io', 400, 'The most volcanically active body in the solar system', 421700, 5);
INSERT INTO public.moon VALUES (5, 'Europa', 100, 'An icy moon with a subsurface global ocean', 671100, 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', 800, 'The largest moon in the Solar System', 1070400, 5);
INSERT INTO public.moon VALUES (7, 'Callisto', 1200, 'A heavily cratered ancient moon of Jupiter', 1882700, 5);
INSERT INTO public.moon VALUES (8, 'Amalthea', 50, 'A red, irregularly shaped inner moon of Jupiter', 181400, 5);
INSERT INTO public.moon VALUES (9, 'Himalia', 30, 'An irregular outer satellite of Jupiter', 11460000, 5);
INSERT INTO public.moon VALUES (10, 'Titan', 150, 'The largest moon of Saturn with a thick atmosphere and liquid methane lakes', 1221870, 6);
INSERT INTO public.moon VALUES (11, 'Enceladus', 200, 'An icy moon with active water-ice geysers at its south pole', 238040, 6);
INSERT INTO public.moon VALUES (12, 'Mimas', 80, 'Known for its giant Herschel crater, resembling the Death Star', 185540, 6);
INSERT INTO public.moon VALUES (13, 'Dione', 300, 'A heavily cratered icy moon of Saturn', 377400, 6);
INSERT INTO public.moon VALUES (14, 'Rhea', 400, 'The second-largest moon of Saturn', 527040, 6);
INSERT INTO public.moon VALUES (15, 'Iapetus', 350, 'Famous for its dramatic two-tone coloration and equatorial ridge', 3560820, 6);
INSERT INTO public.moon VALUES (16, 'Tethys', 250, 'An icy moon featuring a massive trench named Ithaca Chasma', 294660, 6);
INSERT INTO public.moon VALUES (17, 'Titania', 600, 'The largest moon of Uranus with extensive canyon systems', 435910, 7);
INSERT INTO public.moon VALUES (18, 'Oberon', 550, 'The outermost major moon of Uranus with a heavily cratered surface', 583520, 7);
INSERT INTO public.moon VALUES (19, 'Umbriel', 300, 'The dark and heavily cratered inner-major moon of Uranus', 266000, 7);
INSERT INTO public.moon VALUES (20, 'Triton', 170, 'The largest moon of Neptune with retrograde orbit and geysers', 354759, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'The smallest and closest planet to the Sun', false, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 'The second planet from the Sun with a thick toxic atmosphere', false, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 'Our home planet and the only known celestial body to harbor life', true, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 'The fourth planet from the Sun, known as the Red Planet', false, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'The largest planet in the Solar System, a gas giant', false, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 'A gas giant famous for its extensive ring system', false, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 'An ice giant with a unique sideways axial tilt', false, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 'The eighth and farthest recognized planet from the Sun', false, 1);
INSERT INTO public.planet VALUES (9, 'Proxima Centauri b', 'An exoplanet orbiting in the habitable zone of Proxima Centauri', false, 4);
INSERT INTO public.planet VALUES (10, 'Proxima Centauri c', 'A candidate exoplanet in the Proxima Centauri system', false, 4);
INSERT INTO public.planet VALUES (11, 'Vega b', 'An exoplanet candidate orbiting Vega', false, 5);
INSERT INTO public.planet VALUES (12, 'Polaris Ab', 'A planetary companion candidate in the Polaris system', false, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'The star at the center of the Solar System', 4600.000000, 0.00001581, false, 1);
INSERT INTO public.star VALUES (2, 'Sirius', 'The brightest star in the night sky', 242.000000, 8.60000000, false, 1);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 'A red supergiant star in the constellation Orion', 10.000000, 642.50000000, false, 1);
INSERT INTO public.star VALUES (4, 'Proxima Centauri', 'The closest known star to the Sun', 4850.000000, 4.24600000, false, 1);
INSERT INTO public.star VALUES (5, 'Vega', 'A bright star in the constellation Lyra', 455.000000, 25.04000000, false, 1);
INSERT INTO public.star VALUES (6, 'Polaris', 'The current northern pole star', 70.000000, 433.00000000, false, 1);


--
-- Data for Name: type_of_stars; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.type_of_stars VALUES (1, 'Main Sequence', 'Stars that are fusing hydrogen in their cores, like our Sun');
INSERT INTO public.type_of_stars VALUES (2, 'Red Giant', 'A dying star in the last stages of stellar evolution with a large radius and cool surface');
INSERT INTO public.type_of_stars VALUES (3, 'White Dwarf', 'The dense dead core left behind after a low- to intermediate-mass star exhausts its nuclear fuel');
INSERT INTO public.type_of_stars VALUES (4, 'Neutron Star', 'The extremely dense collapsed core of a massive supergiant star');
INSERT INTO public.type_of_stars VALUES (5, 'Supergiant', 'Some of the most massive, luminous, and short-lived stars in the universe');
INSERT INTO public.type_of_stars VALUES (6, 'Brown Dwarf', 'Sub-stellar objects that bridge the gap between planets and lowest-mass stars');


--
-- Data for Name: types_stars; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.types_stars VALUES (7, 1, 1, 'Sun Main Sequence');
INSERT INTO public.types_stars VALUES (8, 1, 2, 'Sirius Main Sequence');
INSERT INTO public.types_stars VALUES (9, 5, 3, 'Betelgeuse Supergiant');
INSERT INTO public.types_stars VALUES (10, 1, 4, 'Proxima Centauri Main Sequence');
INSERT INTO public.types_stars VALUES (11, 1, 5, 'Vega Main Sequence');
INSERT INTO public.types_stars VALUES (12, 5, 6, 'Polaris Supergiant');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


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

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: type_of_stars_type_of_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.type_of_stars_type_of_star_id_seq', 6, true);


--
-- Name: types_stars_types_stars_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.types_stars_types_stars_id_seq', 12, true);


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
-- Name: type_of_stars type_of_stars_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.type_of_stars
    ADD CONSTRAINT type_of_stars_name_key UNIQUE (name);


--
-- Name: type_of_stars type_of_stars_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.type_of_stars
    ADD CONSTRAINT type_of_stars_pkey PRIMARY KEY (type_of_stars_id);


--
-- Name: types_stars types_stars_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.types_stars
    ADD CONSTRAINT types_stars_name_key UNIQUE (name);


--
-- Name: types_stars types_stars_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.types_stars
    ADD CONSTRAINT types_stars_pkey PRIMARY KEY (types_stars_id);


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
-- Name: types_stars types_stars_star_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.types_stars
    ADD CONSTRAINT types_stars_star_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: types_stars types_stars_type_of_stars_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.types_stars
    ADD CONSTRAINT types_stars_type_of_stars_fkey FOREIGN KEY (type_of_stars_id) REFERENCES public.type_of_stars(type_of_stars_id);


--
-- PostgreSQL database dump complete
--


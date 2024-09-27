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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    distance_from_earth numeric,
    age_in_millon_of_years integer,
    description text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    START WITH 2
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    is_spherical boolean,
    distance_from_earth numeric,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    has_life boolean,
    is_spherical boolean,
    planet_types character varying(20),
    description text,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    START WITH 2
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: poblation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.poblation (
    planet_id integer,
    alien_type character varying(20),
    density_po integer,
    description text,
    name character varying NOT NULL,
    poblation_id integer NOT NULL
);


ALTER TABLE public.poblation OWNER TO freecodecamp;

--
-- Name: poblation_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.poblation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.poblation_id_seq OWNER TO freecodecamp;

--
-- Name: poblation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.poblation_id_seq OWNED BY public.poblation.poblation_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    age_in_millon_of_years integer,
    distance_from_earth numeric,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: poblation poblation_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.poblation ALTER COLUMN poblation_id SET DEFAULT nextval('public.poblation_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 21212, 21212, 'ssss');
INSERT INTO public.galaxy VALUES (2, 'Alpha Centauri', 4.37, 4600, 'The closest star system to the Solar System.');
INSERT INTO public.galaxy VALUES (3, 'Betelgeuse', 642.5, 8500, 'A red supergiant star nearing the end of its life.');
INSERT INTO public.galaxy VALUES (4, 'Sirius', 8.6, 200, 'The brightest star in the night sky.');
INSERT INTO public.galaxy VALUES (5, 'Proxima Centauri', 4.24, 4600, 'The closest known star to the Sun.');
INSERT INTO public.galaxy VALUES (6, 'Vega', 25, 455, 'A bright star in the Lyra constellation.');
INSERT INTO public.galaxy VALUES (7, 'Polaris', 323, 7000, 'Also known as the North Star.');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'Earth''s only natural satellite.', true, 384400, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 'Mars'' larger moon, known for its irregular shape.', true, 6000, 2);
INSERT INTO public.moon VALUES (3, 'Deimos', 'Mars'' smaller moon, also irregular in shape.', true, 23000, 2);
INSERT INTO public.moon VALUES (4, 'Io', 'One of Jupiter''s moons, known for its volcanic activity.', true, 421800, 3);
INSERT INTO public.moon VALUES (5, 'Europa', 'Known for its smooth ice surface and potential subsurface ocean.', true, 628300, 3);
INSERT INTO public.moon VALUES (6, 'Ganymede', 'The largest moon in the solar system.', true, 1070400, 3);
INSERT INTO public.moon VALUES (7, 'Callisto', 'Known for its heavily cratered surface.', true, 1883000, 3);
INSERT INTO public.moon VALUES (8, 'Titan', 'Saturn''s largest moon, with a dense atmosphere.', true, 1275000, 4);
INSERT INTO public.moon VALUES (9, 'Rhea', 'The second-largest moon of Saturn, known for its icy surface.', true, 527600, 4);
INSERT INTO public.moon VALUES (10, 'Iapetus', 'Known for its two-tone coloration.', true, 3567000, 4);
INSERT INTO public.moon VALUES (11, 'Umbriel', 'A moon of Uranus, with a dark surface.', true, 2650000, 5);
INSERT INTO public.moon VALUES (12, 'Titania', 'Uranus'' largest moon, known for its large canyons.', true, 4360000, 5);
INSERT INTO public.moon VALUES (13, 'Oberon', 'The second-largest moon of Uranus, has many craters.', true, 5835000, 5);
INSERT INTO public.moon VALUES (14, 'Triton', 'Neptune''s largest moon, known for its retrograde orbit.', true, 3548000, 6);
INSERT INTO public.moon VALUES (15, 'Nereid', 'Known for its eccentric orbit.', true, 5516000, 6);
INSERT INTO public.moon VALUES (16, 'Miranda', 'Known for its unique geological features.', true, 1298000, 5);
INSERT INTO public.moon VALUES (17, 'Mimas', 'Known as the Death Star moon due to its large crater.', true, 1856000, 4);
INSERT INTO public.moon VALUES (18, 'Enceladus', 'Known for its geysers that eject water vapor.', true, 2379500, 4);
INSERT INTO public.moon VALUES (19, 'Charon', 'Pluto''s largest moon, almost half the size of Pluto.', true, 1930000, 7);
INSERT INTO public.moon VALUES (20, 'Kallisto', 'A moon of Jupiter, heavily cratered.', true, 1883000, 3);
INSERT INTO public.moon VALUES (21, 'Lysithea', 'A small moon of Jupiter, known for its irregular shape.', true, 1100000, 3);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', true, true, 'Terrestrial', 'The only known planet with life.', 1);
INSERT INTO public.planet VALUES (2, 'Mars', false, true, 'Terrestrial', 'The red planet, known for its desert landscape.', 1);
INSERT INTO public.planet VALUES (3, 'Venus', false, true, 'Terrestrial', 'The hottest planet in our solar system.', 1);
INSERT INTO public.planet VALUES (4, 'Jupiter', false, true, 'Gas Giant', 'The largest planet in our solar system.', 2);
INSERT INTO public.planet VALUES (5, 'Saturn', false, true, 'Gas Giant', 'Known for its prominent ring system.', 2);
INSERT INTO public.planet VALUES (6, 'Uranus', false, true, 'Ice Giant', 'An ice giant with a unique tilt.', 2);
INSERT INTO public.planet VALUES (7, 'Neptune', false, true, 'Ice Giant', 'The furthest planet from the Sun.', 2);
INSERT INTO public.planet VALUES (8, 'Proxima b', true, true, 'Exoplanet', 'An Earth-sized planet in the habitable zone of Proxima Centauri.', 3);
INSERT INTO public.planet VALUES (9, 'Kepler-452b', true, true, 'Exoplanet', 'Often referred to as Earth’s cousin.', 4);
INSERT INTO public.planet VALUES (10, 'Gliese 581g', true, true, 'Exoplanet', 'A potentially habitable exoplanet.', 5);
INSERT INTO public.planet VALUES (11, 'HD 209458 b', false, true, 'Gas Giant', 'First exoplanet observed transiting its star.', 6);
INSERT INTO public.planet VALUES (12, 'TRAPPIST-1e', true, true, 'Exoplanet', 'One of the seven Earth-sized planets in the TRAPPIST-1 system.', 6);


--
-- Data for Name: poblation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.poblation VALUES (1, 'Bipedal', 120, 'An advanced civilization with technology beyond Earth.', 'Zorak', 1);
INSERT INTO public.poblation VALUES (2, 'Quadrupedal', 300, 'A thriving planet known for its rich resources.', 'Xandar', 2);
INSERT INTO public.poblation VALUES (3, 'Bipedal', 150, 'A planet known for its logical inhabitants.', 'Vulcan', 3);
INSERT INTO public.poblation VALUES (4, 'Humanoid', 500, 'Home of Superman, known for its advanced science.', 'Krypton', 4);
INSERT INTO public.poblation VALUES (5, 'Amphibian', 80, 'A swampy planet known for its dark side force users.', 'Dagobah', 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'The star at the center of our solar system.', 5, 0, 1);
INSERT INTO public.star VALUES (2, 'Sirius', 'The brightest star in the night sky.', 200, 8.6, 2);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 'A red supergiant star in the constellation Orion.', 8500, 642.5, 3);
INSERT INTO public.star VALUES (4, 'Proxima Centauri', 'The closest known star to the Sun.', 4600, 4.24, 4);
INSERT INTO public.star VALUES (5, 'Vega', 'A bright star in the constellation Lyra.', 455, 25, 5);
INSERT INTO public.star VALUES (6, 'Polaris', 'Also known as the North Star.', 7000, 323, 6);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 7, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 21, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 12, true);


--
-- Name: poblation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.poblation_id_seq', 5, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 6, true);


--
-- Name: galaxy galaxy_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_description_key UNIQUE (description);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_description_key UNIQUE (description);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_description_key UNIQUE (description);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: poblation poblation_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.poblation
    ADD CONSTRAINT poblation_description_key UNIQUE (description);


--
-- Name: poblation poblation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.poblation
    ADD CONSTRAINT poblation_pkey PRIMARY KEY (poblation_id);


--
-- Name: star star_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_description_key UNIQUE (description);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id) ON DELETE CASCADE;


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id) ON DELETE CASCADE;


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id) ON DELETE CASCADE;


--
-- Name: poblation planet_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.poblation
    ADD CONSTRAINT planet_fk FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--


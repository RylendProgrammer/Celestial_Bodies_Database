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
-- Name: cluster; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.cluster (
    cluster_id integer NOT NULL,
    name character varying(20) NOT NULL,
    distance integer,
    brightness numeric,
    mass integer,
    discovery text,
    notable boolean,
    solid boolean
);


ALTER TABLE public.cluster OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    galaxy character varying(20) NOT NULL,
    distance integer NOT NULL,
    brightness numeric,
    mass integer,
    discovery text,
    notable boolean,
    solid boolean,
    name character varying(20)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    moon character varying(20) NOT NULL,
    distance integer,
    brightness numeric,
    mass integer,
    discovery text,
    notable boolean,
    solid boolean,
    planet character varying(20),
    name character varying(20)
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet character varying(20) NOT NULL,
    planet_id integer NOT NULL,
    distance integer,
    brightness numeric,
    mass integer,
    discovery text,
    notable boolean,
    solid boolean,
    star character varying(20),
    name character varying(20)
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    star character varying(20) NOT NULL,
    distance integer NOT NULL,
    brightness numeric,
    mass integer,
    discovery text,
    notable boolean,
    solid boolean,
    galaxy character varying(20),
    name character varying(20)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: cluster; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.cluster VALUES (1, 'Cluster', 100, 1000, 100, '180', true, true);
INSERT INTO public.cluster VALUES (2, 'Cluster 2', 100, 1000, 100, '180', true, true);
INSERT INTO public.cluster VALUES (3, 'Cluster 3', 100, 1000, 100, '180', true, true);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 100, 100, 100, '100', true, false, NULL);
INSERT INTO public.galaxy VALUES (2, 'Milky Way 2', 100, 100, 100, '100', true, false, NULL);
INSERT INTO public.galaxy VALUES (3, 'Milky Way 3', 100, 100, 100, '100', true, false, NULL);
INSERT INTO public.galaxy VALUES (4, 'Milky Way 4', 100, 100, 100, '100', true, false, NULL);
INSERT INTO public.galaxy VALUES (5, 'Milky Way 5', 100, 100, 100, '100', true, false, NULL);
INSERT INTO public.galaxy VALUES (6, 'Milky Way 6', 100, 100, 100, '100', true, false, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 100, 5, 1000, '1980', true, true, 'Earth', NULL);
INSERT INTO public.moon VALUES (2, 'Monos', 90, 4, 800, '1910', true, true, 'Mars', NULL);
INSERT INTO public.moon VALUES (3, 'Phobos', 90, 4, 800, '1910', true, true, 'Mars', NULL);
INSERT INTO public.moon VALUES (4, 'Sonos', 90, 4, 800, '1910', true, true, 'Mars', NULL);
INSERT INTO public.moon VALUES (5, 'Tonos', 90, 4, 800, '1910', false, true, 'Earth', NULL);
INSERT INTO public.moon VALUES (6, 'Konos', 90, 4, 800, '1910', false, true, 'Earth', NULL);
INSERT INTO public.moon VALUES (7, 'Zonos', 90, 4, 800, '1910', false, true, 'Earth', NULL);
INSERT INTO public.moon VALUES (8, 'Kato', 90, 4, 800, '1910', false, true, 'Earth', NULL);
INSERT INTO public.moon VALUES (9, 'Tato', 90, 4, 800, '1910', false, true, 'Mars', NULL);
INSERT INTO public.moon VALUES (10, 'Qato', 90, 4, 800, '1910', false, true, 'Mars', NULL);
INSERT INTO public.moon VALUES (11, 'Hato', 90, 4, 800, '1910', false, true, 'Mars', NULL);
INSERT INTO public.moon VALUES (12, 'Xato', 90, 4, 800, '1910', false, true, 'Mars', NULL);
INSERT INTO public.moon VALUES (13, 'Xy', 90, 4, 800, '1910', true, true, 'Earth', NULL);
INSERT INTO public.moon VALUES (14, 'Ky', 90, 4, 800, '1910', true, true, 'Earth', NULL);
INSERT INTO public.moon VALUES (15, 'Py', 90, 4, 800, '1910', true, true, 'Earth', NULL);
INSERT INTO public.moon VALUES (16, 'Yy', 90, 4, 800, '1910', true, true, 'Earth', NULL);
INSERT INTO public.moon VALUES (17, 'Vy', 90, 4, 800, '1910', true, true, 'Earth', NULL);
INSERT INTO public.moon VALUES (18, 'Mun', 90, 4, 800, '1910', true, true, 'Earth', NULL);
INSERT INTO public.moon VALUES (19, 'Karth', 90, 4, 800, '1910', true, true, 'Earth', NULL);
INSERT INTO public.moon VALUES (20, 'Karth', 90, 4, 800, '1910', true, true, 'Earth', NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Earth', 1, 100, 100, 100, '100', true, true, 'Sun', NULL);
INSERT INTO public.planet VALUES ('Mars', 2, 1000, 100, 100, '100', true, true, 'Sun', NULL);
INSERT INTO public.planet VALUES ('Mercury', 3, 100, 100, 100, '100', true, true, 'Sun', NULL);
INSERT INTO public.planet VALUES ('Venus', 4, 100, 100, 100, '100', true, true, 'Sun', NULL);
INSERT INTO public.planet VALUES ('Jupiter', 5, 100, 100, 100, '100', true, true, 'Sun', NULL);
INSERT INTO public.planet VALUES ('Saturn', 6, 100, 100, 100, '100', true, true, 'Sun', NULL);
INSERT INTO public.planet VALUES ('Neptune', 7, 100, 100, 100, '100', true, true, 'Sun', NULL);
INSERT INTO public.planet VALUES ('Uranus', 8, 100, 100, 100, '100', true, true, 'Sun', NULL);
INSERT INTO public.planet VALUES ('Pluto', 9, 100, 100, 100, '100', true, true, 'Sun', NULL);
INSERT INTO public.planet VALUES ('X', 10, 100, 100, 100, '100', true, true, 'Sun', NULL);
INSERT INTO public.planet VALUES ('Y', 11, 100, 100, 100, '100', true, true, 'Sun', NULL);
INSERT INTO public.planet VALUES ('Z', 12, 100, 100, 100, '100', true, true, 'Sun', NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 100, 100, 100, '100', true, false, 'Milky Way', NULL);
INSERT INTO public.star VALUES (2, 'Alpha', 100, 100, 100, '100', true, false, 'Milky Way', NULL);
INSERT INTO public.star VALUES (3, 'Beta', 100, 100, 100, '100', true, false, 'Milky Way', NULL);
INSERT INTO public.star VALUES (4, 'Delta', 100, 100, 100, '100', true, false, 'Milky Way', NULL);
INSERT INTO public.star VALUES (5, 'Echo', 100, 100, 100, '100', true, false, 'Milky Way', NULL);
INSERT INTO public.star VALUES (6, 'Foxtrot', 100, 100, 100, '100', true, false, 'Milky Way', NULL);


--
-- Name: cluster cluster_cluster_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.cluster
    ADD CONSTRAINT cluster_cluster_id_key UNIQUE (cluster_id);


--
-- Name: star constraint_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT constraint_name UNIQUE (star);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: cluster pk_cluster_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.cluster
    ADD CONSTRAINT pk_cluster_id PRIMARY KEY (cluster_id);


--
-- Name: galaxy pk_galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT pk_galaxy_id PRIMARY KEY (galaxy_id);


--
-- Name: moon pk_moon_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT pk_moon_id PRIMARY KEY (moon_id);


--
-- Name: planet pk_planet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT pk_planet_id PRIMARY KEY (planet_id);


--
-- Name: star pk_star_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT pk_star_id PRIMARY KEY (star_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (planet);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: galaxy uq_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT uq_name UNIQUE (galaxy);


--
-- Name: planet uq_planet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT uq_planet_id UNIQUE (planet_id);


--
-- Name: moon moon_planet_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_fkey FOREIGN KEY (planet) REFERENCES public.planet(planet);


--
-- Name: planet plannet_star_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT plannet_star_fkey FOREIGN KEY (star) REFERENCES public.star(star);


--
-- Name: star star_galaxy_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_fkey FOREIGN KEY (galaxy) REFERENCES public.galaxy(galaxy);


--
-- PostgreSQL database dump complete
--


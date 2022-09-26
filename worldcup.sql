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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(20) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (161, 2018, 'Final', 1204, 1205, 4, 2);
INSERT INTO public.games VALUES (162, 2018, 'Third Place', 1206, 1207, 2, 0);
INSERT INTO public.games VALUES (163, 2018, 'Semi-Final', 1205, 1207, 2, 1);
INSERT INTO public.games VALUES (164, 2018, 'Semi-Final', 1204, 1206, 1, 0);
INSERT INTO public.games VALUES (165, 2018, 'Quarter-Final', 1205, 1208, 3, 2);
INSERT INTO public.games VALUES (166, 2018, 'Quarter-Final', 1207, 1209, 2, 0);
INSERT INTO public.games VALUES (167, 2018, 'Quarter-Final', 1206, 1210, 2, 1);
INSERT INTO public.games VALUES (168, 2018, 'Quarter-Final', 1204, 1211, 2, 0);
INSERT INTO public.games VALUES (169, 2018, 'Eighth-Final', 1207, 1212, 2, 1);
INSERT INTO public.games VALUES (170, 2018, 'Eighth-Final', 1209, 1213, 1, 0);
INSERT INTO public.games VALUES (171, 2018, 'Eighth-Final', 1206, 1214, 3, 2);
INSERT INTO public.games VALUES (172, 2018, 'Eighth-Final', 1210, 1215, 2, 0);
INSERT INTO public.games VALUES (173, 2018, 'Eighth-Final', 1205, 1216, 2, 1);
INSERT INTO public.games VALUES (174, 2018, 'Eighth-Final', 1208, 1217, 2, 1);
INSERT INTO public.games VALUES (175, 2018, 'Eighth-Final', 1211, 1218, 2, 1);
INSERT INTO public.games VALUES (176, 2018, 'Eighth-Final', 1204, 1219, 4, 3);
INSERT INTO public.games VALUES (177, 2014, 'Final', 1220, 1219, 1, 0);
INSERT INTO public.games VALUES (178, 2014, 'Third Place', 1221, 1210, 3, 0);
INSERT INTO public.games VALUES (179, 2014, 'Semi-Final', 1219, 1221, 1, 0);
INSERT INTO public.games VALUES (180, 2014, 'Semi-Final', 1220, 1210, 7, 1);
INSERT INTO public.games VALUES (181, 2014, 'Quarter-Final', 1221, 1222, 1, 0);
INSERT INTO public.games VALUES (182, 2014, 'Quarter-Final', 1219, 1206, 1, 0);
INSERT INTO public.games VALUES (183, 2014, 'Quarter-Final', 1210, 1212, 2, 1);
INSERT INTO public.games VALUES (184, 2014, 'Quarter-Final', 1220, 1204, 1, 0);
INSERT INTO public.games VALUES (185, 2014, 'Eighth-Final', 1210, 1223, 2, 1);
INSERT INTO public.games VALUES (186, 2014, 'Eighth-Final', 1212, 1211, 2, 0);
INSERT INTO public.games VALUES (187, 2014, 'Eighth-Final', 1204, 1224, 2, 0);
INSERT INTO public.games VALUES (188, 2014, 'Eighth-Final', 1220, 1225, 2, 1);
INSERT INTO public.games VALUES (189, 2014, 'Eighth-Final', 1221, 1215, 2, 1);
INSERT INTO public.games VALUES (190, 2014, 'Eighth-Final', 1222, 1226, 2, 1);
INSERT INTO public.games VALUES (191, 2014, 'Eighth-Final', 1219, 1213, 1, 0);
INSERT INTO public.games VALUES (192, 2014, 'Eighth-Final', 1206, 1227, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (1204, 'France');
INSERT INTO public.teams VALUES (1205, 'Croatia');
INSERT INTO public.teams VALUES (1206, 'Belgium');
INSERT INTO public.teams VALUES (1207, 'England');
INSERT INTO public.teams VALUES (1208, 'Russia');
INSERT INTO public.teams VALUES (1209, 'Sweden');
INSERT INTO public.teams VALUES (1210, 'Brazil');
INSERT INTO public.teams VALUES (1211, 'Uruguay');
INSERT INTO public.teams VALUES (1212, 'Colombia');
INSERT INTO public.teams VALUES (1213, 'Switzerland');
INSERT INTO public.teams VALUES (1214, 'Japan');
INSERT INTO public.teams VALUES (1215, 'Mexico');
INSERT INTO public.teams VALUES (1216, 'Denmark');
INSERT INTO public.teams VALUES (1217, 'Spain');
INSERT INTO public.teams VALUES (1218, 'Portugal');
INSERT INTO public.teams VALUES (1219, 'Argentina');
INSERT INTO public.teams VALUES (1220, 'Germany');
INSERT INTO public.teams VALUES (1221, 'Netherlands');
INSERT INTO public.teams VALUES (1222, 'Costa Rica');
INSERT INTO public.teams VALUES (1223, 'Chile');
INSERT INTO public.teams VALUES (1224, 'Nigeria');
INSERT INTO public.teams VALUES (1225, 'Algeria');
INSERT INTO public.teams VALUES (1226, 'Greece');
INSERT INTO public.teams VALUES (1227, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 192, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 1227, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--


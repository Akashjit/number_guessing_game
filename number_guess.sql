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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
    user_id integer NOT NULL,
    best_guess integer DEFAULT 0 NOT NULL
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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL,
    frequent_games integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 390);
INSERT INTO public.games VALUES (2, 1, 500);
INSERT INTO public.games VALUES (3, 2, 30);
INSERT INTO public.games VALUES (4, 2, 362);
INSERT INTO public.games VALUES (5, 1, 958);
INSERT INTO public.games VALUES (6, 1, 593);
INSERT INTO public.games VALUES (7, 1, 802);
INSERT INTO public.games VALUES (8, 3, 970);
INSERT INTO public.games VALUES (9, 3, 616);
INSERT INTO public.games VALUES (10, 4, 893);
INSERT INTO public.games VALUES (11, 4, 614);
INSERT INTO public.games VALUES (12, 3, 495);
INSERT INTO public.games VALUES (13, 3, 65);
INSERT INTO public.games VALUES (14, 3, 603);
INSERT INTO public.games VALUES (15, 5, 567);
INSERT INTO public.games VALUES (16, 5, 388);
INSERT INTO public.games VALUES (17, 6, 673);
INSERT INTO public.games VALUES (18, 6, 154);
INSERT INTO public.games VALUES (19, 5, 664);
INSERT INTO public.games VALUES (20, 5, 494);
INSERT INTO public.games VALUES (21, 5, 765);
INSERT INTO public.games VALUES (22, 7, 937);
INSERT INTO public.games VALUES (23, 7, 229);
INSERT INTO public.games VALUES (24, 8, 358);
INSERT INTO public.games VALUES (25, 8, 164);
INSERT INTO public.games VALUES (26, 7, 138);
INSERT INTO public.games VALUES (27, 7, 784);
INSERT INTO public.games VALUES (28, 7, 450);
INSERT INTO public.games VALUES (29, 9, 451);
INSERT INTO public.games VALUES (30, 9, 400);
INSERT INTO public.games VALUES (31, 10, 969);
INSERT INTO public.games VALUES (32, 10, 953);
INSERT INTO public.games VALUES (33, 9, 273);
INSERT INTO public.games VALUES (34, 9, 653);
INSERT INTO public.games VALUES (35, 9, 499);
INSERT INTO public.games VALUES (36, 11, 833);
INSERT INTO public.games VALUES (37, 11, 494);
INSERT INTO public.games VALUES (38, 12, 809);
INSERT INTO public.games VALUES (39, 12, 224);
INSERT INTO public.games VALUES (40, 11, 980);
INSERT INTO public.games VALUES (41, 11, 751);
INSERT INTO public.games VALUES (42, 11, 633);
INSERT INTO public.games VALUES (43, 13, 187);
INSERT INTO public.games VALUES (44, 13, 829);
INSERT INTO public.games VALUES (45, 14, 448);
INSERT INTO public.games VALUES (46, 14, 547);
INSERT INTO public.games VALUES (47, 13, 961);
INSERT INTO public.games VALUES (48, 13, 563);
INSERT INTO public.games VALUES (49, 13, 883);
INSERT INTO public.games VALUES (50, 15, 535);
INSERT INTO public.games VALUES (51, 15, 635);
INSERT INTO public.games VALUES (52, 16, 153);
INSERT INTO public.games VALUES (53, 16, 460);
INSERT INTO public.games VALUES (54, 15, 594);
INSERT INTO public.games VALUES (55, 15, 494);
INSERT INTO public.games VALUES (56, 15, 392);
INSERT INTO public.games VALUES (57, 17, 533);
INSERT INTO public.games VALUES (58, 17, 275);
INSERT INTO public.games VALUES (59, 18, 558);
INSERT INTO public.games VALUES (60, 18, 623);
INSERT INTO public.games VALUES (61, 17, 601);
INSERT INTO public.games VALUES (62, 17, 207);
INSERT INTO public.games VALUES (63, 17, 35);
INSERT INTO public.games VALUES (64, 19, 876);
INSERT INTO public.games VALUES (65, 19, 964);
INSERT INTO public.games VALUES (66, 20, 275);
INSERT INTO public.games VALUES (67, 20, 111);
INSERT INTO public.games VALUES (68, 19, 498);
INSERT INTO public.games VALUES (69, 19, 864);
INSERT INTO public.games VALUES (70, 19, 228);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (2, 'user_1718873540168', 2);
INSERT INTO public.users VALUES (1, 'user_1718873540169', 5);
INSERT INTO public.users VALUES (4, 'user_1718873598063', 2);
INSERT INTO public.users VALUES (3, 'user_1718873598064', 5);
INSERT INTO public.users VALUES (6, 'user_1718873768562', 2);
INSERT INTO public.users VALUES (5, 'user_1718873768563', 5);
INSERT INTO public.users VALUES (8, 'user_1718874056752', 2);
INSERT INTO public.users VALUES (7, 'user_1718874056753', 5);
INSERT INTO public.users VALUES (10, 'user_1718874167305', 2);
INSERT INTO public.users VALUES (9, 'user_1718874167306', 5);
INSERT INTO public.users VALUES (12, 'user_1718874175241', 2);
INSERT INTO public.users VALUES (11, 'user_1718874175242', 5);
INSERT INTO public.users VALUES (14, 'user_1718874184932', 2);
INSERT INTO public.users VALUES (13, 'user_1718874184933', 5);
INSERT INTO public.users VALUES (16, 'user_1718874437181', 2);
INSERT INTO public.users VALUES (15, 'user_1718874437182', 5);
INSERT INTO public.users VALUES (18, 'user_1718874456202', 2);
INSERT INTO public.users VALUES (17, 'user_1718874456203', 5);
INSERT INTO public.users VALUES (20, 'user_1718874563271', 2);
INSERT INTO public.users VALUES (19, 'user_1718874563272', 5);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 70, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 20, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--


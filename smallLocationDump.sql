--
-- PostgreSQL database dump
--

-- Dumped from database version 10.6 (Ubuntu 10.6-0ubuntu0.18.04.1)
-- Dumped by pg_dump version 10.6 (Ubuntu 10.6-0ubuntu0.18.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: bnb_locations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.bnb_locations (
    id integer NOT NULL,
    name character varying(50)
);


--
-- Name: bnb_locations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.bnb_locations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: bnb_locations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.bnb_locations_id_seq OWNED BY public.bnb_locations.id;


--
-- Name: bnb_reviews; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.bnb_reviews (
    review_id integer NOT NULL,
    loc_id integer NOT NULL,
    name character varying(50) NOT NULL,
    gender boolean NOT NULL,
    profilepicnum integer NOT NULL,
    date character varying(20) NOT NULL,
    sentence text NOT NULL,
    accuracy_rating numeric NOT NULL,
    communication_rating numeric NOT NULL,
    cleanliness_rating numeric NOT NULL,
    location_rating numeric NOT NULL,
    check_in_rating numeric NOT NULL,
    value_rating numeric NOT NULL,
    overall_rating numeric NOT NULL
);


--
-- Name: bnb_reviews_review_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.bnb_reviews_review_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: bnb_reviews_review_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.bnb_reviews_review_id_seq OWNED BY public.bnb_reviews.review_id;


--
-- Name: bnb_locations id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bnb_locations ALTER COLUMN id SET DEFAULT nextval('public.bnb_locations_id_seq'::regclass);


--
-- Name: bnb_reviews review_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bnb_reviews ALTER COLUMN review_id SET DEFAULT nextval('public.bnb_reviews_review_id_seq'::regclass);


--
-- Data for Name: bnb_locations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.bnb_locations (id, name) FROM stdin;
1024	Industrial
1025	Books
1026	Toys
1027	Health
1028	Shoes
1029	Sports
1030	Music
1031	Beauty
1032	Jewelery
1033	Baby
1034	Movies
1035	Health
1036	Computers
1037	Home
1038	Sports
1039	Automotive
1040	Home
1041	Kids
1042	Jewelery
1043	Sports
1044	Music
1045	Movies
1046	Beauty
1047	Music
1048	Garden
1049	Movies
1050	Shoes
1051	Grocery
1052	Books
1053	Automotive
1054	Tools
1055	Tools
1056	Beauty
1057	Music
1058	Clothing
1059	Industrial
1060	Shoes
1061	Automotive
1062	Home
1063	Music
1064	Outdoors
1065	Shoes
1066	Automotive
1067	Automotive
1068	Baby
1069	Outdoors
1070	Home
1071	Grocery
1072	Jewelery
1073	Industrial
1074	Clothing
1075	Toys
1076	Health
1077	Books
1078	Health
1079	Toys
1080	Movies
1081	Kids
1082	Toys
1083	Jewelery
1084	Health
1085	Beauty
1086	Sports
1087	Music
1088	Kids
1089	Books
1090	Music
1091	Clothing
1092	Games
1093	Health
1094	Games
1095	Home
1096	Tools
1097	Computers
1098	Books
1099	Games
1100	Books
1101	Electronics
1102	Kids
1103	Industrial
1104	Outdoors
1105	Industrial
1106	Books
1107	Computers
1108	Games
1109	Toys
1110	Games
1111	Computers
1112	Books
1113	Clothing
1114	Baby
1115	Automotive
1116	Sports
1117	Beauty
1118	Computers
1119	Toys
1120	Electronics
1121	Toys
1122	Electronics
1123	Industrial
\.


--
-- Data for Name: bnb_reviews; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.bnb_reviews (review_id, loc_id, name, gender, profilepicnum, date, sentence, accuracy_rating, communication_rating, cleanliness_rating, location_rating, check_in_rating, value_rating, overall_rating) FROM stdin;
\.


--
-- Name: bnb_locations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.bnb_locations_id_seq', 1123, true);


--
-- Name: bnb_reviews_review_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.bnb_reviews_review_id_seq', 43599, true);


--
-- Name: bnb_locations bnb_locations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bnb_locations
    ADD CONSTRAINT bnb_locations_pkey PRIMARY KEY (id);


--
-- Name: bnb_reviews bnb_reviews_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bnb_reviews
    ADD CONSTRAINT bnb_reviews_pkey PRIMARY KEY (review_id);


--
-- Name: bnb_reviews bnb_reviews_loc_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bnb_reviews
    ADD CONSTRAINT bnb_reviews_loc_id_fkey FOREIGN KEY (loc_id) REFERENCES public.bnb_locations(id);


--
-- PostgreSQL database dump complete
--


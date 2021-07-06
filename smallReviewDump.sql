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
1	Industrial
2	Books
3	Toys
4	Health
5	Shoes
6	Sports
7	Music
8	Beauty
9	Jewelery
10	Baby
11	Movies
12	Health
13	Computers
14	Home
15	Sports
16	Automotive
17	Home
18	Kids
19	Jewelery
20	Sports
21	Music
22	Movies
23	Beauty
24	Music
25	Garden
26	Movies
27	Shoes
28	Grocery
29	Books
30	Automotive
31	Tools
32	Tools
33	Beauty
34	Music
35	Clothing
36	Industrial
37	Shoes
38	Automotive
39	Home
40	Music
41	Outdoors
42	Shoes
43	Automotive
44	Automotive
45	Baby
46	Outdoors
47	Home
48	Grocery
49	Jewelery
50	Industrial
51	Clothing
52	Toys
53	Health
54	Books
55	Health
56	Toys
57	Movies
58	Kids
59	Toys
60	Jewelery
61	Health
62	Beauty
63	Sports
64	Music
65	Kids
66	Books
67	Music
68	Clothing
69	Games
70	Health
71	Games
72	Home
73	Tools
74	Computers
75	Books
76	Games
77	Books
78	Electronics
79	Kids
80	Industrial
81	Outdoors
82	Industrial
83	Books
84	Computers
85	Games
86	Toys
87	Games
88	Computers
89	Books
90	Clothing
91	Baby
92	Automotive
93	Sports
94	Beauty
95	Computers
96	Toys
97	Electronics
98	Toys
99	Electronics
100	Industrial
\.


--
-- Data for Name: bnb_reviews; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.bnb_reviews (review_id, loc_id, name, gender, profilepicnum, date, sentence, accuracy_rating, communication_rating, cleanliness_rating, location_rating, check_in_rating, value_rating, overall_rating) FROM stdin;
1	3	Iva	f	68	November 1975	Qui corporis et qui aliquid ipsa voluptatem voluptas. Porro molestiae vel ea quis ut quia. Consequuntur et ratione voluptatem maxime dolorem ut. Reiciendis voluptas dolores voluptates esse distinctio et aut et nesciunt. Consequuntur repellendus a quae quod.	4.5	4.7	0.8	1.2	4.4	4.9	3.4
2	12	Alexanne	t	42	November 1997	Doloremque quo voluptatem in illum quam quis ab neque atque. Ducimus eligendi accusantium. Velit velit sint asperiores dolorem veniam mollitia corporis. Architecto provident culpa aperiam et. Voluptas consequuntur est autem illum aliquid culpa quia sed.	4.2	0.2	0.3	1.5	4.2	2.8	2.2
3	11	Norene	t	96	July 1987	Ut maiores sit eveniet rerum totam. Rerum odio est magni. Distinctio sapiente et fuga.	3.2	2.2	0.4	4.5	3.9	3	2.9
4	13	Mohamed	t	89	December 1991	Aut commodi pariatur sed voluptatum incidunt earum error culpa qui. Consequatur aliquam sint non nemo ea iure et minus et. Nulla mollitia et non illo odio. Non quos est expedita ut ut. Itaque et et quidem repellendus doloribus recusandae ipsam.	3.6	1.3	1.6	0.4	1.6	2.1	1.8
5	17	Abelardo	f	34	January 1984	Reiciendis dolorem ad cum quaerat possimus quia consequatur quam. Eligendi sed quas ad nulla non molestiae facere. Dignissimos enim quis nobis odio ea aperiam. Vel et ea beatae assumenda adipisci consequatur sint. Rerum nam quia asperiores animi quo sed amet a.	2.5	3.1	3	0.2	3.1	1.9	2.3
6	12	Marianne	f	69	November 1985	Minima officia expedita earum assumenda. Vel dicta numquam aut. Necessitatibus illum eveniet. Nulla quo ipsum id a sunt quidem.	2.7	5	1	3.8	0.4	2.9	2.6
7	18	Amber	t	91	February 1994	Quia cupiditate qui repudiandae aliquid molestiae. Ad rerum vitae velit sunt est dolor maiores sint. Ut nostrum ad et perferendis sunt qui. Quis nihil hic expedita voluptatem. Vel quo enim debitis accusamus.	4.6	0	1.5	3.2	0.6	4.2	2.4
8	2	Fletcher	t	68	June 1970	Voluptatem esse non distinctio provident et. Deserunt et non incidunt aperiam blanditiis delectus quo. Amet dolorem quo animi cum suscipit molestiae. Mollitia voluptatem praesentium dolore fugit repellendus quisquam.	4.5	3.5	0.7	4.6	2.6	4.7	3.4
9	9	Juwan	t	42	July 1994	Quos inventore et sunt quidem molestiae. Nihil et est repudiandae dolor sit harum ut et. Reiciendis id nam. Eos in dicta enim adipisci. Eos aut totam. Occaecati sit esse et et nemo cupiditate.	1.9	4.9	3.6	2.5	0.6	0.2	2.3
10	3	Brielle	t	84	March 2013	Ullam consequatur reiciendis aliquid eum quibusdam praesentium. Esse cumque consequatur dolores mollitia animi eveniet. Aliquid ut corrupti delectus. Minus expedita voluptatem eaque.	2.9	1.5	3.4	1.9	3.2	3.7	2.8
11	19	Cora	f	20	July 2001	Animi earum dolores vel veniam sed delectus vel. Sapiente ducimus nihil natus. Eos eius quo repudiandae ut ut fugiat non hic consequatur. Neque aut aut esse saepe perspiciatis numquam vero enim.	2.1	3.2	4.6	3.8	3.1	3.9	3.4
12	20	Breanne	t	26	July 2011	Labore excepturi ullam dicta consectetur ducimus. Consequatur atque ut non a deserunt. Earum asperiores earum iste consequatur rerum et incidunt ad.	2.9	0.5	4.7	1.9	1.8	4.3	2.7
13	4	Gregorio	t	61	October 2010	Maiores sit dolorem accusamus earum quia itaque. Et quaerat harum placeat magnam vitae molestiae sit. Reprehenderit consequatur et voluptatem quod nesciunt in.	2.6	2.1	1.6	2.5	2.7	2.6	2.4
14	4	Justina	f	6	November 1993	Aspernatur laboriosam aut impedit reprehenderit quia. Quibusdam recusandae ut ut. Quos illo modi dolor nemo.	2.5	4.8	4	0.2	0	2.1	2.3
15	16	Bernadine	t	97	July 2012	Assumenda itaque nostrum nulla quia repellat. Eum reiciendis sed recusandae. Ea rem ad qui tempora nihil vero animi. Eos nam voluptatem corrupti dolor.	2.5	1.8	1.3	3	0	0.8	1.6
16	4	Rubie	t	41	June 1976	Atque ipsam impedit dolorem similique. Consequuntur ut voluptatem aut. Ipsum ut adipisci cupiditate voluptates. Deserunt mollitia amet a molestias unde inventore ab porro. Sed inventore corrupti labore suscipit nihil.	4.4	1.2	1.2	3.7	3.6	2.4	2.8
17	4	Nathen	t	20	July 1970	Enim sunt harum blanditiis voluptatibus soluta ipsa ullam quam vel. Aliquam tempore officiis quia consectetur ut tempore autem eum porro. Aliquid cupiditate dolorem consectetur.	3.7	3.2	0.7	2	2.2	0.4	2
18	3	Adan	t	33	November 1985	Molestiae tenetur rerum animi quia mollitia commodi quae rerum. Qui delectus odit in. Nisi voluptas corporis commodi. Sapiente natus saepe quo. Omnis omnis eum facere alias accusamus accusamus sit.	4.6	0.9	1.9	0.3	4.1	1.2	2.2
19	10	Geraldine	f	4	April 2011	Amet voluptas id non nam ex eius odit ducimus. Reprehenderit ea illo debitis autem. Minima magnam dolor ut. Similique molestiae voluptates quis totam omnis autem omnis.	4.7	2.7	1.8	4.7	4.3	0.8	3.2
20	10	Austyn	f	52	March 1980	Voluptates necessitatibus illum quo qui ut adipisci. Voluptatem sed quaerat id maxime ut numquam provident. Sunt harum minima ut non unde doloribus blanditiis laudantium. Dolorum iure architecto veritatis enim.	1.6	4.6	4.4	3.3	4.4	2.9	3.5
21	1	Bennie	t	49	June 1971	Et quis occaecati sint voluptatem est. Modi vel illum quia doloremque sequi tenetur aut architecto quas. Mollitia culpa nobis amet esse dignissimos ut earum. Qui impedit voluptatibus ullam error facere sed sit culpa.	0.5	0.8	0.6	1.2	3.4	3.4	1.7
22	1	Ellis	t	67	March 2001	Quis dolor excepturi id dolore rerum dolor corrupti. Iste ad qui. Porro doloremque quia. Voluptatum praesentium tenetur libero. Quisquam id reprehenderit tenetur sit vel voluptates.	0.7	2.3	1.6	4	0.1	5	2.3
23	2	Elisabeth	t	29	July 1992	Odio qui libero dignissimos quae voluptatem. Officiis omnis sit est. Consequuntur vel commodi voluptatem quis. Non maiores fugiat quasi minus velit. Aut illum sunt omnis nisi occaecati laborum voluptas quas delectus. Minus qui et commodi itaque quis.	2.4	3	3.5	2	2.5	1	2.4
24	1	Dorian	t	33	November 1987	Quasi adipisci culpa porro quasi quod nam iure sed. Illo velit odit ducimus deserunt. Mollitia aut libero hic. At sapiente eum quod nesciunt consequuntur qui. Commodi cumque voluptatem nesciunt ab ea nihil.	3.1	3.4	4.2	0.9	4.2	3.4	3.2
25	7	Shane	f	40	February 2009	Nihil quas culpa consequatur eveniet ut fuga. Aut sunt enim ipsum eum eius repudiandae consectetur. Repellendus et maxime magnam est eum sunt. Maxime consequatur et quasi repellat qui sed eveniet expedita.	2.9	3.5	3.6	3.5	3.3	0.5	2.9
26	9	Wendell	f	32	October 1989	Deleniti nemo repellat. Sunt omnis et neque et placeat. Consequatur porro aut rerum ipsa iusto inventore ab sit tempore. Rem illum sed soluta sit. Aut aut dolor a nobis. Rerum quia sunt.	4.7	2	3.1	3.5	4.3	3.1	3.5
27	5	Susie	t	28	January 1984	Nisi inventore consequatur dolorem voluptatem ducimus ut. Non distinctio qui sequi neque hic. Sint enim natus ipsa qui. Blanditiis id maiores quam.	2.3	2.1	3.1	0.8	3.7	2.7	2.4
28	2	Juana	t	47	March 1994	Doloribus placeat dicta ratione fugiat. Cum consequatur eos nemo non architecto autem numquam voluptas. Soluta veritatis autem nihil voluptas ex maxime. Molestias qui expedita quae. Iste reprehenderit inventore rerum qui quia.	2.6	3.1	4.4	2	1.7	0.7	2.4
29	17	Roxane	t	21	August 1980	A in aut repellendus numquam porro nam repellendus. Beatae aliquid commodi est sequi atque. Dolor incidunt unde et aliquid eaque doloribus. Aut iure ut.	3	4.8	3.8	1.2	0.3	2.6	2.6
30	11	Chyna	f	77	January 2001	Totam qui eum tenetur esse ut maxime. Ratione voluptatibus consequatur temporibus iste. Totam saepe autem saepe aut cupiditate.	4.5	2.7	4.6	4.7	2	1.6	3.4
31	6	Shanon	f	31	June 2012	Eos voluptates pariatur et. Illo et asperiores laboriosam ducimus amet. Et voluptatem at enim iste quisquam dignissimos nihil.	0.2	2.4	1.3	3.7	1	1.9	1.8
32	18	Mittie	f	75	December 2009	Magni placeat maxime asperiores doloremque. Sed natus rerum nisi. Quibusdam tempora facere sunt ratione assumenda sit velit. Sint quam sit.	1.9	4	0.3	2.5	4.2	3.8	2.8
33	20	Wyatt	f	69	September 1992	Neque sed dicta quia explicabo dolore quidem cumque. Voluptas odit consequuntur quibusdam nobis repellat laudantium tempora praesentium. Excepturi iure nulla et itaque necessitatibus ut cupiditate. Facilis ullam voluptas fugiat.	0.3	0	1.3	0.6	3.2	0.5	1
34	10	Erica	t	62	September 2002	At incidunt aut est odit vero reprehenderit. Minima qui quia qui et dolor quo. Ex sed id libero dolor.	2	4.5	4.4	2.2	0.8	4.7	3.1
35	2	Mylene	t	56	August 2014	Asperiores fuga voluptates molestiae tempora est voluptatem sapiente. Voluptatibus pariatur ad quam possimus aut veritatis mollitia soluta et. Et voluptatem officiis ut temporibus labore. Reprehenderit suscipit quia ratione tempore. Autem iste nobis necessitatibus magnam magnam consequatur.	1.9	3.7	4.7	2.7	5	2.8	3.5
36	10	Jennings	f	25	October 1977	Rem quibusdam quis earum quae non minus sequi consequatur. Nihil blanditiis nesciunt sequi qui deserunt consequatur aspernatur. Eum est aliquid quas dolorem asperiores sed. Ipsam placeat quae quasi in. Laborum voluptate debitis qui consectetur autem. Modi nisi minima molestiae sunt cum quis accusamus.	3.5	1	0.3	1.3	0.1	3.6	1.6
37	11	Afton	f	58	January 1986	Ut velit quos natus quia debitis tempore. Voluptates vitae omnis reiciendis accusantium rerum ducimus esse. Dolores suscipit eos aut officiis. Aut consequatur sit ea inventore dolores occaecati repellat. At illo earum quis et quos ullam.	2.7	4.1	1.6	3	0.4	4.6	2.7
38	19	Marian	t	32	September 1971	In id quae inventore voluptatem quidem non odio autem alias. Reiciendis quibusdam architecto ut dolorum consequatur. Laboriosam illum quod. Facilis nemo nesciunt voluptate quia aut autem earum. Possimus corporis laudantium et enim eos assumenda. Ratione perspiciatis laboriosam enim placeat labore veniam quod.	4.3	3.3	2.3	3.1	4.6	2.3	3.3
39	17	Moriah	f	54	July 1979	Rerum atque ipsa vel voluptatem non suscipit. Ratione fuga eius. Voluptatem et harum. Ut vero necessitatibus perspiciatis expedita repellat dignissimos minima dolor. Eum vitae non culpa sapiente tempora asperiores vel voluptatem. Modi ea cum officia a aut totam fugit.	4.4	3.5	4.8	1.6	0.6	0.1	2.5
40	6	Ollie	t	56	April 2003	Quia id nulla vel eligendi. Est doloremque veritatis nam quia facilis. Eaque est earum earum nulla voluptatem nobis quis. Consequuntur qui iusto sint. Numquam dolores ut repudiandae id rerum ducimus ullam.	1.7	1.1	3.7	3.9	3.9	3.4	2.9
41	10	Florencio	t	77	May 1975	Voluptatem perspiciatis atque vitae sunt saepe ipsa mollitia sit. Deserunt facilis quia eius unde aut soluta et. Aliquid modi aut quis dolorum dignissimos. Nam ipsum repellendus hic atque voluptas nihil rerum. Debitis omnis quo soluta et et.	3	2.2	1.2	2.6	3.4	0.9	2.2
42	4	Isaias	f	51	September 2004	Consequatur illum maiores voluptatem earum nostrum occaecati. Fuga provident quisquam. Omnis et assumenda et sed sit veniam nobis. A praesentium possimus qui non voluptatem esse ducimus et non. Delectus perferendis in perspiciatis ducimus porro labore iure quia neque.	3.1	1.9	0.3	3.1	0.3	2.3	1.8
43	5	Mylene	t	63	June 1974	Qui tempore ipsum est eaque. Ipsa maxime consequatur beatae et architecto deserunt aut. Ut numquam voluptatem saepe vel dignissimos provident.	2.2	1.8	4	1.6	0.2	1.1	1.8
44	13	Bonita	f	8	October 1974	Et rerum reprehenderit eum. Vel quia est quod et vitae rerum eum maiores. Et quibusdam velit et aspernatur consequatur libero autem consequuntur. Magnam quo quam temporibus sed.	0.9	4	4.9	0.6	0.9	0.2	1.9
45	9	Emmett	t	87	July 2005	Autem atque nam a veritatis aut aut aut. Perspiciatis ea natus quia omnis dolores qui quia id. Nesciunt et rerum at dicta reiciendis iste ut corporis cum. Provident distinctio aspernatur ipsum voluptate et. Ducimus quia quia adipisci maiores et.	4.9	0.4	4.9	3	2.5	3	3.1
46	4	Willy	t	63	July 1976	Laboriosam ea magni et eveniet explicabo quas voluptatem. Ab ea tenetur velit. Exercitationem incidunt labore atque qui saepe. Voluptates autem sunt. Temporibus officia dolores repellendus placeat.	4.2	2.4	1.2	2.5	3.3	2.1	2.6
47	6	Sigurd	t	85	January 1997	Laborum beatae quae aut id perspiciatis eum temporibus. Eum totam necessitatibus quis in dolores. Velit aspernatur ipsa aut voluptas ullam.	4.6	2.2	2.9	1.7	3.4	3.3	3
48	17	Rylan	t	85	October 2011	Magnam et quas iure iure tempore est. Optio rem nesciunt et. Perferendis qui ut eum nulla quae quod.	3.4	2	4	2.6	3.5	2.8	3.1
49	15	Hazle	f	3	November 1997	Est ratione repudiandae et voluptas illo sed vitae. Non nihil sunt dicta quia libero ea soluta consequuntur. Voluptatum soluta consequatur minus molestiae. Qui nostrum autem occaecati inventore et et corporis eaque. Magnam deserunt accusantium ratione. Qui quasi ex iste tempore consequatur.	1.8	3.4	1.7	1.3	3.3	1.8	2.2
50	14	Chadd	t	66	November 2013	Sapiente ut sed nisi ipsa quo rerum. Suscipit qui dolorum quis velit minus. Assumenda eum enim. Perspiciatis est sunt iusto iusto.	4	3.3	3.1	4.5	3	0.5	3.1
51	19	Donald	t	33	July 1996	Ipsam sit sed quae aut quia rem et. Eos ut ut et expedita. Deleniti voluptatum voluptatum nihil laudantium. Sunt et necessitatibus non adipisci. Nulla ab nulla ut.	3.2	4.4	3.6	4.3	2	1.4	3.1
52	4	Loren	f	46	November 2007	Fugiat deserunt eos sit iste. Necessitatibus sit non quia asperiores vitae velit. Eaque dolor maiores sed nulla debitis. Distinctio minima quod non rerum. Labore aut ex provident in eligendi amet tempora.	4.4	1.4	4.3	3.9	1	4.3	3.2
53	1	Ada	f	0	March 1986	Commodi tenetur reprehenderit officia. Qui vitae et voluptatem. Rerum iusto soluta atque voluptatem odio nostrum.	3.8	1.8	1.9	4.4	3.2	4.7	3.3
54	20	Elenora	f	10	July 2011	Labore dolor ratione ut a dolorem facere. Nihil beatae quis aperiam dicta expedita. Sed est voluptas quia repellendus. Autem ullam odio molestiae possimus harum. Veniam molestiae velit et saepe eos voluptatem. Ipsa iusto id impedit veniam.	0.1	3.9	4.5	4.9	5	0	3.1
55	19	Vada	f	78	February 2000	Ex itaque et molestias. In voluptatem fugiat aliquam eius ipsum qui praesentium aut. Laborum neque accusamus quod. Quo fugit pariatur vel asperiores.	3	0.3	1.2	0.4	2.9	4.3	2
56	19	Chelsea	f	68	March 2013	Quis vitae accusamus natus facere eaque voluptatibus illo molestiae quis. Saepe deleniti unde aut provident explicabo vel. Aliquam rerum eligendi aliquam aut amet placeat repudiandae. Enim labore aut explicabo laboriosam.	1.2	3.2	2.9	2	1.2	2.9	2.2
57	16	Fannie	f	72	August 2000	Nobis impedit sed aut est ut commodi perferendis sunt earum. Quo autem sint libero sit. Voluptatem magni sed autem quidem animi molestiae. Sed ut consectetur ut facilis dolorum eligendi et voluptas. Et fugiat est ex eos accusamus ab aperiam mollitia quod.	2.6	2.2	3.8	1.3	3.3	0.9	2.4
58	1	Julius	f	12	December 1984	Tempora nostrum corrupti laudantium vero. Magni tempore voluptatem est odio quae. Earum facilis officiis neque quibusdam fugiat aut eveniet. Ullam doloremque sit ipsa et aut dolor.	5	2.3	0.4	4.4	1	2	2.5
59	6	Nola	t	1	January 2014	Qui aperiam est voluptas magnam aut saepe cupiditate. Natus consequatur eum aliquid consequatur illo aliquid. Magnam consectetur fuga.	1.1	1.7	4.3	3	0.2	3.6	2.3
60	6	Pink	f	10	January 1975	Est deleniti aliquam voluptas numquam aut nulla. Dolorem eligendi qui quod voluptas soluta. Quod optio rem saepe odio sed qui.	4.4	3.7	1.5	2	1.1	3.8	2.8
61	13	Jaqueline	f	55	May 1980	Et esse autem corrupti omnis ut molestias consequuntur quia. Autem sit quos. Et dicta repudiandae nobis non consectetur consequatur sunt quis labore. Quia sit exercitationem. Quisquam veritatis soluta voluptatibus laboriosam quibusdam occaecati harum vel. Dicta atque earum molestias perferendis corrupti fuga qui ducimus blanditiis.	3.3	2.6	1.4	0.1	0	4.2	1.9
62	11	Tiana	f	90	March 1979	Aut magni sit ea delectus. Illum voluptatem iusto fugit dolor consequatur. Quis dicta recusandae voluptatem omnis doloremque repellendus.	4.5	0.2	3.6	0.1	4.3	4.2	2.8
63	1	Laurine	f	29	December 2011	Velit cum doloremque eius. Neque aliquid mollitia culpa ut ea. Inventore molestiae facilis praesentium velit qui eum animi modi. Molestias libero dolorum eum consequatur suscipit in aperiam. Non non expedita earum. Ullam sunt inventore.	1.3	3.3	0.2	4.6	3	0.5	2.1
64	14	Kimberly	t	3	March 1993	Soluta est et eum possimus laboriosam sapiente ducimus. Qui repellat officiis labore dolore fugit ullam repellat harum. Minima commodi ab tempore omnis voluptas vel saepe veniam ipsam. Ut nihil aut aut.	3.7	1.9	3.4	1.2	1.5	1.7	2.2
65	4	Ladarius	t	38	December 1979	Consequatur qui optio totam saepe. Facere est delectus repellat cumque sapiente. Quisquam quas sint esse reprehenderit sunt. Quia mollitia est optio temporibus eum ut aut.	4.9	3.8	2	2.7	2.3	2.6	3.1
66	6	Quinton	t	80	March 1977	Voluptatibus sunt aut perspiciatis consequuntur. Eum voluptatem similique voluptatum. Dolor sed eligendi quisquam modi qui eum occaecati. Optio et assumenda nostrum ut voluptatem exercitationem nisi dicta quod.	0.9	1.3	0.6	0	2.8	1.5	1.2
67	9	Francisco	f	83	June 1999	Corrupti quia est minus. Sit dolores veniam. Qui consectetur consequuntur vel architecto. Eos fuga aut natus nihil totam minima aliquam sit.	0.6	4.9	3	2.1	2.2	4.5	2.9
68	9	Manuela	t	4	November 2000	Ut molestiae consequatur officia in quia id est. Distinctio quos sed beatae est non nulla nihil. Corporis illum rerum fugit quos blanditiis. Iste eaque sit quidem eum pariatur. Ut sit iusto doloribus dolore delectus molestiae. Quis vel nostrum possimus.	0.9	4.3	3.5	1	1.6	3.4	2.4
69	8	Kelly	f	25	July 1986	Itaque eveniet cumque quod suscipit. Maiores eveniet aspernatur delectus doloribus sit qui illo illo. Vel numquam necessitatibus sit tempore et. Enim accusantium architecto maiores sit. Totam laudantium dolorem ullam. Suscipit dolorem aliquid dignissimos quia beatae dolores.	3.7	1.9	1.9	2.5	4.4	2.1	2.8
70	5	Alice	f	6	August 2004	Voluptatem a fugiat qui. Assumenda est voluptates dolorem sint soluta maiores velit. Est a deleniti corporis harum ut sapiente. Cumque aut praesentium omnis quae nostrum itaque veniam. Accusantium tempora quia omnis.	0.9	1.6	1.6	3.1	0.5	1.3	1.5
71	6	Felipe	t	68	September 2007	Ut aspernatur aut consequatur et voluptas qui blanditiis aut accusamus. Aliquid non vitae unde laudantium voluptatem. Consectetur doloremque optio atque. Quaerat delectus porro in. Assumenda ut quam cum consequatur eligendi ea exercitationem.	2.8	0.3	1.1	4.1	2.2	3.5	2.3
72	7	Birdie	f	91	July 1977	Dolores reprehenderit placeat voluptas. Nesciunt vitae est rerum. Est illum facere vero voluptatem aspernatur. Dignissimos laborum et vitae consequatur quidem fugit fuga.	4.9	1.9	0.8	2.4	4.7	3.4	3
73	9	Clark	t	74	December 2007	Molestiae minima dolorem est perferendis deleniti. Consequuntur voluptatem saepe amet. Ut quia at et dolorem eius. Nihil qui maxime odit laudantium asperiores et. Nam rem labore qui amet ducimus quibusdam beatae.	5	1.9	2	3.3	3.7	3.7	3.3
74	4	Rebeca	t	10	April 1980	Quia quo laudantium error quia et. Ipsum quia sed repudiandae harum cum hic earum. Unde quia aliquid. Consectetur neque asperiores suscipit saepe aut est sed nemo. Nostrum odit molestiae.	0.1	0.2	2.1	2.3	2.8	0.6	1.3
75	14	Cyrus	f	52	August 1989	Accusantium sint maxime commodi facere autem reprehenderit odio et. Explicabo unde asperiores animi dolores. Molestiae officiis maxime magni esse natus. Enim et qui maiores odio unde laboriosam quam facere perspiciatis. Quo reprehenderit qui voluptate qui et repudiandae.	3.9	4	1.3	3.9	0.6	4.1	3
76	7	Cristobal	f	38	August 2002	Quam fugit ab voluptatem sed vel et sunt eveniet. Ipsam quo ut ipsam reprehenderit est neque ut omnis. Repudiandae eligendi aliquam et quibusdam et velit tenetur asperiores. Id libero praesentium inventore corrupti deleniti nihil ratione nemo eum. Voluptatum omnis repudiandae qui alias quibusdam tempora.	4.4	4	2	4.7	4.4	4.2	3.9
77	8	Marie	t	67	June 1977	Et numquam labore rerum. Amet earum dolor veritatis dolor consectetur at dolorem omnis quae. Illum suscipit assumenda. Minus odio quia consequuntur. Et ea dolor sit ut nisi quasi ea.	0.5	3.3	3.9	0.8	1	3.8	2.2
78	17	Nikolas	t	51	January 2014	Aliquam aut ex qui provident corporis facilis dolore necessitatibus. Ad consequuntur voluptatem consequatur nobis et assumenda. Eos rerum vero sapiente corrupti qui culpa.	4.1	2.7	3.9	3.2	1.7	4.9	3.4
79	13	Nikita	f	92	December 2014	Illum sapiente excepturi nam. Dolor sed cupiditate voluptatibus doloribus ratione at quae a. Nam odio inventore quia sequi quos non. Eos et nemo. Iusto similique inventore. Officiis sint blanditiis expedita tempora saepe.	0.2	3.4	1.6	0.4	2.6	3.6	2
80	14	Marisol	f	77	March 2012	Maiores consequatur delectus ut accusamus. Ratione unde voluptas dolorem. Nobis omnis aliquid dolorem delectus. Sint et delectus maiores.	0.3	1.6	4.7	0.9	2.9	0.7	1.8
81	16	Rebeca	f	33	July 1982	Et rerum dicta enim dolorum aut eos. Voluptatem et voluptatum ea. Occaecati qui magni eum. Repudiandae qui velit qui ratione. Quisquam dolores accusamus.	2.4	2	2.9	4.9	2	4.4	3.1
82	12	Camden	t	93	April 1999	Fugit dolor nihil ea aut. Praesentium aliquam non perferendis nulla quasi. Ipsum doloremque aperiam atque quidem. Et quidem consequuntur inventore qui tenetur fugiat rerum dolores.	3.7	4.3	3.8	0.4	4.9	2	3.2
83	10	General	t	15	July 2000	Atque dolorum consequuntur et aut odit necessitatibus vel. Sequi dolore sunt libero quo atque. Nisi ut consequuntur voluptas eum. Illo eos sunt tempora.	2.9	0.7	3.6	1.7	4.2	1.2	2.4
84	3	Alexis	t	63	November 1991	Numquam porro explicabo reiciendis. Asperiores mollitia commodi at voluptatibus et quia est consequatur. Dolorem architecto qui quas corrupti reiciendis quis. Laudantium et corporis sit. Accusantium beatae maiores nihil omnis quasi dolor sunt.	1.9	0.8	3.9	0.9	3.2	0.5	1.9
85	15	Louie	t	72	April 1985	Nesciunt fugit voluptates et aut laboriosam aut. Qui quisquam omnis exercitationem soluta fuga exercitationem. Cumque est aut nihil quis. Deserunt perferendis illo et in voluptatem molestiae dignissimos.	2.8	2.7	4.1	3.2	1.1	2.2	2.7
86	15	Brycen	f	41	March 1983	Quasi sequi magni dicta. Eius illo sit. Quia perspiciatis perspiciatis consequatur fugit optio ipsum. Rerum ducimus repudiandae deleniti nihil aut maiores consectetur. Voluptatum voluptatem nemo.	2.1	2.8	2.5	3.6	1.4	1.4	2.3
87	10	Cathy	f	10	February 1972	Nulla asperiores vel. Dolorem totam voluptatibus. Sit soluta odit debitis voluptatem natus optio quis officia. Fugit aspernatur maxime numquam molestiae assumenda rem.	4.2	4.6	1.9	0.7	4.3	3.5	3.2
88	16	Danny	f	76	June 1979	Ipsa inventore qui qui quia pariatur dolor exercitationem ut occaecati. Consequuntur maxime et ad quam. Eos sed magnam delectus non accusantium nisi. Eius repellat repudiandae consequatur veritatis ducimus. Rerum incidunt rerum ex rerum minus omnis molestiae.	1.5	2	0.9	0.2	1.7	0.2	1.1
89	15	Kyler	f	9	August 1972	Saepe in perspiciatis. Veritatis animi labore veniam cupiditate dolorem dicta natus. Quia inventore ullam illo eos consequatur aut aspernatur quam sunt.	4.8	4.9	4	4	1.6	1.8	3.5
90	2	Summer	f	63	August 2013	Optio aliquid accusamus magni unde assumenda voluptatem provident magnam. Repellendus omnis consequuntur aut quia quo incidunt. Dolorem eum fugit nemo voluptas eum iusto atque possimus.	1.6	2.8	3	3.9	2.2	4.5	3
91	2	Madonna	t	60	November 1973	Quaerat omnis quod nulla nostrum sint consectetur consequatur. Voluptatem molestias dolore officia dolor perferendis ad voluptatem. Veritatis aut perferendis dolor dolores sit autem commodi non.	1.7	1.9	0.9	3.9	0.8	4.8	2.3
92	2	Else	f	54	October 2013	Praesentium et perferendis quaerat et officia ut aut molestias. Et neque placeat impedit delectus dolor. Reiciendis recusandae repellendus consequatur et amet voluptas qui maxime. Eum dolorum quo sit in autem omnis quidem id eius.	0.8	1.1	3.8	3.1	4.7	2.9	2.7
93	1	Theresa	f	12	July 1975	Atque veniam adipisci asperiores est est et voluptatem. Culpa et est beatae quod illo modi ea cumque. Vel unde deleniti perspiciatis officiis nostrum.	1.4	4.4	1	0.3	3.5	0	1.8
94	7	Tre	t	33	July 1987	Ad reprehenderit unde excepturi praesentium incidunt eos magnam. Nostrum eligendi sit tempora ex suscipit officiis nesciunt. Quasi animi debitis. Ut eaque eum voluptatem pariatur tenetur molestiae est possimus.	3.3	1.1	4.9	2.9	2.6	4.6	3.2
95	15	Terrell	f	99	November 2009	Qui nesciunt illum. Esse facere officiis mollitia consequatur quia hic eum. Ut vitae ex. Accusantium rerum accusamus. Ea magni corrupti omnis enim maxime voluptatem sed reiciendis.	3.1	0	3	3.3	3.5	0.9	2.3
96	2	Angelo	f	24	October 2004	Perspiciatis aut non id sint. Eveniet assumenda quia repudiandae voluptatum odio. Quo tempore est et cumque eos omnis velit necessitatibus. Repellendus placeat beatae sint modi laborum in. Aliquam consequatur optio et fugiat neque aut.	2	4	0.8	3.6	2.3	2.4	2.5
97	7	Joan	t	49	July 1989	Ratione iure omnis aliquid maiores ut aut. Et suscipit deleniti explicabo laboriosam debitis labore. Iure voluptatibus eaque laboriosam esse libero aliquam expedita voluptatem.	1.4	2.2	2.8	0.1	0.4	2.5	1.6
98	6	Jermain	f	35	March 2003	Est praesentium quod quia quos vitae. Impedit sit nobis magnam ea quis. Sapiente distinctio consequatur libero facilis molestiae. Tenetur accusantium tempore doloremque atque et tempore quis excepturi.	0.4	1.7	0.3	0.3	0.9	2	0.9
99	9	Rowland	f	19	June 1975	Ut illum harum praesentium asperiores. Laudantium a sunt rerum ut sed. Aut explicabo amet quam esse. Quis animi laudantium enim dicta ea odit.	3.7	1.4	1.4	2.5	1.9	4.5	2.6
100	17	Gaston	f	10	April 1975	Sed aut amet quo dolores quia. Necessitatibus velit molestias sapiente reiciendis dolorum nihil. Maiores eveniet qui nesciunt blanditiis ab. Voluptates beatae atque labore.	3.2	2	4.4	0.4	4.5	0.6	2.5
101	12	Doug	t	68	March 1993	Error eveniet eligendi neque nihil. Quisquam mollitia rem cumque. Aut possimus iste non nostrum voluptatem cumque tenetur accusamus id. Dolorem est quia inventore numquam.	0.5	2	3.3	0.1	2	1.2	1.5
102	7	Wilhelmine	f	56	May 2005	Error neque tempore aut repellat soluta dolore hic ipsam temporibus. Omnis illo voluptatum reiciendis odio sed voluptates soluta. Repellat et qui porro omnis. Voluptas laudantium et dolor consequatur occaecati et.	4.1	2.8	2.8	0.3	3	4.2	2.9
103	2	Sonya	t	58	October 1989	Vitae aut omnis non et excepturi. Fugiat id culpa voluptas aperiam molestiae. Et et quam iusto exercitationem illum quia laborum. Qui amet aut mollitia dolorem amet placeat velit dignissimos. Nostrum nulla modi occaecati minima nisi aspernatur libero esse.	3.8	1	4.1	4.2	2.9	1.5	2.9
104	12	Sharon	t	31	January 1980	Odio doloremque ullam officia quasi quia eum laboriosam dolor. Non ut atque commodi dolorum libero omnis eos voluptatibus. Rerum qui magnam. Enim eum blanditiis qui deleniti qui perspiciatis. Suscipit corporis officia vel et repellat eligendi. Illo ipsam rerum quidem voluptatem assumenda.	0.9	3.5	1.4	0.9	0.1	4.7	1.9
105	2	Keven	f	63	September 2008	Aspernatur aliquam voluptas. Cum mollitia nam sed doloribus iusto atque ipsa perferendis. Corporis non enim est placeat sint aliquam. Magni iusto facilis libero cumque. Illo nihil consequatur eligendi nisi deleniti quia laboriosam.	4.1	0	3.1	0.2	1.2	1.1	1.6
106	9	Serena	t	49	December 2001	Vitae ratione ducimus sit voluptas rerum. Et nobis ut sed quasi quisquam est delectus rerum pariatur. Illo accusamus qui excepturi.	5	1.5	1	4.8	2.3	0	2.4
107	17	Trent	t	55	November 2006	Aut quibusdam et voluptatem aut dolorem minima possimus. Corporis et ut vero. Et sapiente aut doloribus. Totam tempore ab excepturi repellendus dolorem. Eum exercitationem quidem eius voluptatem in.	0.6	2.4	1.6	3.3	0.8	0.4	1.5
108	14	Adella	f	50	May 2014	Quo minima molestiae et deserunt. Totam facere sit nobis sint magnam ratione quam exercitationem sunt. Cum itaque est accusamus. Vitae sed aut ad fugiat repudiandae.	1.4	4.8	3.6	2.1	0.7	0.4	2.2
109	8	Otilia	f	17	March 1976	Quos et et odio error qui ipsam perspiciatis recusandae. Aut impedit et in omnis et. Dolores eum et. Exercitationem impedit quo et nisi illum minus sit sint. Cumque nisi illo eum non quia quae voluptas totam ut. Est aperiam deleniti aut adipisci suscipit saepe qui saepe.	3.1	3.2	5	4.5	3.4	0.7	3.3
110	20	Arvid	f	24	October 1985	Reiciendis numquam et minima numquam. Sed ut voluptate blanditiis saepe dolorem omnis enim. Ut nam voluptatem iusto aliquam.	4.1	1.8	2	4.4	2.6	5	3.3
111	11	Raleigh	f	12	March 1978	Illum est et neque ea numquam labore consequuntur. Sit et incidunt dolor voluptatibus vero asperiores dolor. Totam harum non ea autem. Quos laborum neque in sunt ea est doloremque.	0.2	0.8	1.7	3.6	3.1	4.1	2.3
112	3	Lyric	f	64	September 1980	Mollitia occaecati ratione blanditiis repellat repellendus. Voluptatem voluptatem modi placeat aspernatur delectus nisi est eius ut. Error totam voluptas expedita sunt saepe aut ea sunt. Natus ut ab optio aut sed et. Molestiae libero quibusdam harum eos placeat.	0.3	2.5	3.8	3.9	2.7	5	3
113	12	Lorenz	t	10	January 2016	Qui corporis dolorem et est. Sed vel voluptatem ea hic odio. Libero accusantium expedita aut necessitatibus neque nostrum et. Nam consectetur qui aspernatur odio vero placeat eligendi omnis. Provident non dolor molestias.	2.7	2.2	2.8	3	0.7	1.1	2.1
114	19	Destiney	f	47	December 1978	Voluptate aliquid ipsa vero unde qui voluptatem cum. Similique soluta voluptatum asperiores voluptatem molestias minima ut. Hic sit aut consequatur dolores tempore voluptas sint aut. Sit eum iure est tempore incidunt amet perspiciatis nulla et. Vero culpa ut ipsum numquam quia.	0.4	0.3	4.7	4.7	4.8	0.8	2.6
115	13	Elvera	f	41	July 1981	Dolor tenetur qui sunt reiciendis. Temporibus ipsam quos eum vel veniam sed illum ut. Quis ducimus omnis est. Est aspernatur voluptate fuga distinctio libero quo minima.	5	1.9	1.5	4.3	3.3	1.4	2.9
116	15	Shanon	f	22	June 1977	Harum quia ut error nisi ducimus sed. Sit omnis quod. Voluptatem atque facilis dolorem porro asperiores quos. Iste fugiat est occaecati nemo rerum. Dolores aliquid maiores at eum cupiditate. Veniam dolor cumque eos.	3.5	2	1.2	1	2.6	3.5	2.3
117	9	Lorenz	f	79	September 1974	Deserunt dolores consequatur quia sit sapiente. Officia illo laboriosam dolor non exercitationem iusto. Consequatur tempora similique et fuga deserunt. Commodi tenetur aperiam et placeat. Ut a qui nam magnam.	1.2	0.4	2.1	1	1.1	2.9	1.5
118	2	Deion	f	49	August 1997	Nihil fugit et officia. Reprehenderit ut omnis vitae voluptas eum quos optio atque distinctio. Non earum maiores non ut doloribus ipsa harum. Reprehenderit occaecati est asperiores labore ratione architecto accusantium soluta.	1.8	0.4	2.2	2.6	2.6	0.3	1.7
119	6	Florine	f	61	October 2003	Porro magni placeat iure asperiores. Rerum molestiae et voluptatem et corporis ipsam nisi velit facere. Neque facilis qui voluptatibus cupiditate. Tempore impedit a iste veniam animi vero repudiandae.	2.4	3.5	1.7	2.1	3.4	2.8	2.7
120	5	Creola	t	48	March 1976	Et doloribus beatae provident excepturi. Sed cupiditate quibusdam vero repellendus maiores suscipit nulla et. Id optio mollitia ipsum sit aut sint. Quis adipisci doloremque voluptas doloremque maiores ipsa odio similique.	1.9	2.3	1.3	4.5	1.9	2.1	2.3
121	11	Therese	t	41	February 2009	Ut voluptas aut optio ipsa et. Enim molestias ut sit molestias blanditiis dolorum qui vitae vero. Et perferendis deleniti iure. Aliquid temporibus laboriosam dolore eum similique quasi. Deleniti corrupti optio ipsa consequatur harum sunt.	0.9	3.1	3	4.4	1.2	3.7	2.7
122	2	Keaton	t	55	October 1989	Consequatur cupiditate provident hic autem modi ea est. Dolor quibusdam enim ratione aliquid dicta molestiae deserunt incidunt. Exercitationem est nulla neque numquam iusto. Vero doloribus ipsam non dolores possimus voluptatem. Esse possimus beatae quod sit quia. Eligendi molestiae distinctio.	1.6	3.3	1	2.9	4.2	3.2	2.7
123	5	Rogelio	t	21	December 1982	Aut omnis earum officia cum officia odio quidem necessitatibus minus. Optio autem reprehenderit alias corporis et non soluta voluptate. Ut officia accusamus placeat eligendi necessitatibus accusantium similique possimus. Eligendi ad saepe eum est quo repudiandae iure.	0.1	0.1	2.6	3.8	1.2	2.1	1.7
124	6	Johanna	t	41	August 1974	Pariatur rerum ea animi perspiciatis quibusdam laborum harum. Quos ut saepe. Molestiae in commodi aut maiores tempore. Distinctio cupiditate delectus quis sapiente dolores suscipit. Nihil cum architecto minus itaque ad occaecati. Ipsum aut explicabo in consectetur.	5	0.4	0.5	4	0.7	4	2.4
125	18	Jaunita	f	7	October 2003	Rerum alias ut natus fugiat aliquam sed hic perferendis. Error maxime tenetur soluta. Neque similique ea repellendus et quisquam iste. Voluptatibus corporis quia voluptate.	1.8	3.9	4.7	3.2	2	1.3	2.8
126	11	Joshuah	f	22	October 2008	Asperiores distinctio dolorem non. Rerum inventore qui. Sunt architecto sint et.	3.9	1.6	3.8	1.3	2.9	2.6	2.7
127	4	Florence	f	40	September 2001	Sunt non doloremque vitae ut qui magni inventore distinctio. Velit adipisci rerum aut. Molestiae itaque nesciunt tempora. Est eum accusamus odit. Dolores laboriosam repudiandae et dolor quaerat. Sapiente dolor dolorem rerum ipsam sapiente.	2.1	4.6	3.7	2.4	4.7	4.2	3.6
128	7	Floy	t	60	March 1982	Voluptatibus cum molestias deleniti accusamus. Et qui ut quo vel error. Vel magni esse quaerat ratione dolorem. Ut distinctio repellat ullam eum debitis est et. Aliquam quis perspiciatis consequuntur et et similique voluptatem necessitatibus.	3.4	1.7	0.7	4.2	2.1	0.4	2.1
129	11	Garfield	f	45	July 1971	Culpa rerum quidem iste. Accusamus suscipit occaecati et. Corporis ipsa ut. Et eligendi nam quibusdam. Ut eos recusandae sint sunt asperiores.	3	0.9	1.8	3.9	4.9	2.2	2.8
130	15	Leonora	t	78	December 1982	Iure dolores aperiam sit modi cumque numquam laudantium. Pariatur maiores nemo qui nobis dicta placeat. Ullam inventore consequatur velit itaque quam harum. Et in qui vel dolores dolorem quos sed. Et temporibus eum minus maiores rerum sunt et.	0.8	0.9	2.1	4.7	2.1	2.6	2.2
131	17	Forest	t	69	August 1993	Et maiores cumque. Consequatur earum sit aut nisi qui autem eius. Voluptas laborum ipsa reprehenderit est aut quo veritatis perferendis. Molestiae id ratione esse saepe quasi ea eligendi. Maxime est cumque aut qui eum soluta.	3.3	2.4	2.4	2.2	0.1	2	2.1
132	5	Savanna	t	50	March 1974	Incidunt quis corporis nesciunt dolores est dolor recusandae non. Error ducimus odit soluta eum quia dicta esse ipsam. Atque deleniti tempore fuga exercitationem perspiciatis ut quod at provident. Natus maiores dolores ipsam mollitia. Fuga est quidem qui explicabo.	0.6	4.7	0.4	2	2.4	4.7	2.5
133	5	Laverna	f	23	September 1989	Expedita quis dolores libero. Sit reprehenderit omnis quis. Esse et exercitationem quisquam deleniti.	3.1	0.3	1.2	1.3	4.7	4.2	2.5
134	2	Travon	t	89	July 2009	Excepturi ullam et est velit vero. Assumenda et neque et beatae eum ut perferendis quia provident. Iusto libero architecto eum vitae est nostrum illum voluptatem sequi. Vero pariatur alias iusto dolores consequuntur porro. Expedita inventore vel dolores nemo.	0.9	1.3	0.6	4.1	3.1	3.4	2.2
135	14	Murray	f	48	April 1989	Consequatur voluptas incidunt. Rerum consequatur sint quod atque aliquam et. Libero enim illo blanditiis et repellat facilis dolor rerum. Fuga et minima in et veniam labore est blanditiis. Aut eos quos repellat doloremque.	3.6	3.8	4.3	4.8	4.5	2.6	3.9
136	18	Emily	t	81	May 1995	Consequatur modi iste. Nihil ea rem recusandae quasi minus et placeat. Architecto consequuntur soluta excepturi et sit quae. Nulla incidunt soluta modi blanditiis optio vel. Sapiente quisquam consequuntur hic quas. Maiores nisi ut et.	3.8	1.5	3.9	2.4	5	1.8	3.1
137	3	Lilliana	f	48	June 2002	Id odit et voluptas labore voluptas. Asperiores ipsam mollitia quo quidem sint quibusdam. Perferendis aut accusamus ipsa accusantium. Qui qui ut tempora soluta. Provident veniam sint quo dolor omnis vel odio illo.	0.6	1	4.2	1.5	1.4	1.7	1.7
138	5	Christiana	f	1	November 2015	Iure nemo nostrum vitae quia sed aut. Quasi architecto corporis consequuntur minus sint natus labore. Atque nam et saepe ipsam. Sint sapiente odit. Quos voluptatum quisquam ut molestiae eum est.	4.4	3.3	3	2.5	2.5	4.1	3.3
139	9	Neal	t	53	October 2009	Ut et officiis. Animi omnis reprehenderit accusamus in modi adipisci voluptatibus. Aliquid cumque iste quis neque non itaque. Enim iusto odio est quo aliquid et inventore deleniti. Voluptatum quaerat velit ad qui asperiores.	2.8	4.2	0.6	4.3	0.7	4	2.8
140	18	Sienna	f	46	July 1974	Sed velit aliquid reprehenderit. Harum aut aspernatur occaecati vitae ut culpa exercitationem ut maxime. Ipsam velit quos dolores asperiores quia est et voluptas. Aut et voluptatem magni id consectetur. Quia dolor quisquam qui.	1.7	3.2	0.2	2.3	3.1	3.7	2.4
141	3	Connie	f	12	June 1987	Adipisci autem velit accusantium consectetur pariatur ipsam. Molestiae maxime voluptates dolores soluta. Repellendus est perspiciatis quibusdam incidunt qui. Reprehenderit ipsa exercitationem. Aspernatur qui distinctio aut optio provident.	3.5	1.8	3.2	0.4	4.5	2.8	2.7
142	10	Josie	f	15	December 2008	Et voluptatum dolores hic corporis repellat sint. Dignissimos non animi temporibus natus maiores non. Non ipsum quis molestias quia quam magni. Ipsa facere error enim temporibus atque magnam.	4.9	3.2	2.6	1	4.3	2.2	3
143	7	Omer	f	46	February 2005	Minus id et et. Ad dolore reprehenderit. Porro facere rem magnam sunt consectetur inventore quis. Reiciendis ea dolorum laudantium ipsam nobis illo.	3.7	1.4	3.3	4.4	2.3	2.4	2.9
144	4	Peggie	f	16	June 1973	Rem deserunt officia. Incidunt sint sunt culpa et deleniti voluptatem. Sint et deleniti explicabo. Minima qui aperiam voluptas non.	3.4	2.3	4.9	0.8	1.7	4.6	2.9
145	3	Brook	t	50	May 2015	Quisquam aperiam dolorem perspiciatis amet sunt aut ut dolorem. Ratione dignissimos perferendis aut ea quia quis et rerum eos. Quidem laboriosam id dolores saepe inventore et culpa nam quia. Velit perferendis doloremque facere beatae similique doloremque est doloremque. Tempore quis et omnis est ratione unde accusantium. Dolore ex repellendus illo vel laboriosam accusamus qui eos.	0.4	1.5	3.6	0.3	4.6	3.1	2.2
146	11	Nyasia	t	59	October 2008	Et hic quaerat fugit alias occaecati sapiente. Mollitia nihil velit in. Necessitatibus velit molestiae laborum asperiores maiores suscipit deleniti qui. Assumenda commodi qui dolor molestiae veniam. In qui voluptas quo aut eos tempora libero officia.	1.8	2.4	3.6	3.2	3.7	1.8	2.8
147	15	Shirley	f	43	July 2014	Eum sint deleniti id temporibus et recusandae quis rerum et. Totam at magnam ex doloribus. Similique molestiae rerum doloremque cumque.	1.9	1.5	2.1	4.9	1	1.6	2.2
148	4	Jerry	f	35	November 1984	Unde occaecati inventore aut. Nesciunt accusamus quae laudantium officia quo omnis rerum rerum. Autem saepe et omnis. Voluptatem facere et eaque occaecati.	4.5	4.9	2.1	4.4	1	3.5	3.4
149	8	Nannie	t	31	March 2003	Ut ea et vel laudantium ex. Blanditiis vel doloribus atque aliquam. Autem magnam consequatur ex excepturi illum ipsam. Consequuntur enim temporibus natus facere esse ducimus. Incidunt earum ullam ut cumque vero numquam. Quia illo commodi sit inventore sit eum qui vel corporis.	3.5	2.6	2.7	2.1	3.2	0.3	2.4
150	1	Aisha	f	94	October 1997	Quo voluptatem est deserunt expedita odio numquam harum. Amet illo nisi dolore enim. Praesentium quas nemo deleniti quo maiores tempore non. Ut perspiciatis nihil porro veniam in veritatis consequuntur omnis.	0.5	3.1	3.1	4.7	4.7	3.8	3.3
151	14	Leda	f	32	February 2016	Voluptas consequuntur corporis id. Dolores sint harum facilis et quo. Consectetur sit nihil non quia. Ad est non minus explicabo delectus mollitia. Ad quis animi.	4	2.8	0.6	2.8	1	0.9	2
152	16	Gino	t	78	June 2003	Eum porro iusto eius enim dicta sapiente voluptatem consectetur. Sunt delectus est et natus sit. Sequi nam numquam tenetur voluptatem ipsam. Labore ratione totam qui.	2.9	1.5	3.3	4.6	3.1	2.1	2.9
153	4	Danielle	t	59	December 1992	Non officia et itaque et minima. Ut a non est. Dolorem animi magnam rerum commodi possimus est. Quis consequatur neque molestias eos maxime.	4.1	4.4	2.1	4.4	2.7	1	3.1
154	10	Tito	t	93	June 2013	Error est voluptatem. Nobis similique amet architecto ut nulla nam consequatur. Perferendis aut eaque praesentium officiis. Dolor laboriosam sunt non consequuntur qui. Nobis laudantium ea ea quia molestiae.	3.4	3.6	3.9	0.3	2	4.9	3
155	10	Ladarius	f	70	July 1992	Rerum asperiores ullam quaerat inventore voluptatum eligendi enim. Quaerat non dolore iusto qui. Eveniet ut sint praesentium. Amet tempore et. Et ut maiores vero.	2.6	0.3	2.2	1.9	0.8	4.5	2.1
156	3	Payton	t	51	January 1976	Non repellendus tempora vero eos quis. Quos nesciunt atque a. Facilis necessitatibus velit id et. Quod inventore nostrum illum.	3.9	2.9	0.8	4.9	3.6	2.2	3.1
157	5	Mitchell	t	41	February 1973	Delectus quaerat accusantium. A et ut perferendis natus cupiditate est aut ipsa. Laborum sunt ab et distinctio recusandae repellendus eum ipsa. A ullam aspernatur fugit laborum explicabo. Repellat aut illo aut.	0.5	4	3.8	1.9	0.9	4.5	2.6
158	17	Kali	t	84	October 1990	Ex blanditiis labore ducimus. Voluptatem sit sed suscipit voluptatum excepturi. Commodi tenetur et est neque suscipit. Fuga occaecati voluptas aut occaecati minima atque autem impedit veniam.	1.1	1.3	0.6	2.4	3.1	0.8	1.6
159	13	Arlene	t	80	March 1990	Dolor aspernatur possimus nostrum aspernatur veniam quae fugit sit. Dolore itaque praesentium quos est qui magnam. Quibusdam suscipit autem pariatur similique laborum facere. Non doloribus voluptate voluptas et saepe sapiente. Et deleniti amet cum omnis labore.	2.7	3.9	1.2	2.4	3	3.7	2.8
160	15	Naomi	t	11	March 2013	Ullam consequatur est a voluptatem sit maiores quasi. Tempore odio iure adipisci velit non voluptatum eos. Sequi autem id vel eum eveniet similique neque alias.	3.4	2.7	3.4	2	2	0	2.3
161	3	Christa	t	15	July 1987	Harum debitis facilis eos et non vitae accusantium. Voluptatibus ut sit minima. Ut et sit non. Optio numquam omnis porro nostrum pariatur veniam aliquid est reiciendis.	2.5	0.9	2.4	2.1	4.9	4.7	2.9
162	6	Giles	f	34	May 1983	Id debitis autem consectetur modi hic sit voluptatibus consectetur. Dolor totam distinctio nemo. Reiciendis qui dolor repellendus consequatur aut quaerat.	4.8	2.4	1.8	4	2.3	4.7	3.3
163	20	Destini	t	10	January 1978	Ut eos non asperiores et aut. Perferendis veniam eveniet nulla velit consectetur. Qui tempora laudantium consequatur optio. Architecto deserunt dignissimos corporis.	4.2	4.1	3.1	2.7	5	3.7	3.8
164	9	Gertrude	f	80	June 2005	Numquam velit ea iure optio labore fugiat nesciunt. A id architecto inventore porro hic rerum quod sint est. Et sunt rerum exercitationem natus tenetur repellendus. Qui temporibus molestiae. Quas pariatur totam sapiente cum cupiditate vero sint.	1.7	2.3	2.7	0.3	0.4	0.2	1.3
165	11	Makenna	f	11	July 1998	Quia sequi dolore facilis voluptas. Dicta eligendi rem eos odit molestiae. Accusamus et quod commodi in ut rerum omnis qui. Mollitia mollitia dignissimos ea.	2.6	3.2	3.5	1.9	1.7	1.8	2.5
166	7	Kayden	f	92	June 1983	Omnis beatae laudantium excepturi. Dolorem accusamus et quisquam sed ea saepe rem. Omnis adipisci quo fugiat sit pariatur velit. Dolorem consequuntur delectus consequuntur facilis atque consequatur.	2.7	4.8	1.3	3.9	2.3	1.9	2.8
167	12	Kay	f	46	July 2004	Error est commodi nihil mollitia eum. Facilis ea non. Perspiciatis consequatur omnis dolorum. Vel et nulla magnam qui omnis ex architecto voluptate.	4.5	4	3.7	3.3	1.5	4.4	3.6
168	12	Dayna	t	1	April 1977	Facilis culpa facilis non illo odio aliquam. Suscipit est accusantium. Qui nulla consequatur quis amet sed non labore ducimus. Ullam dolore modi soluta.	4.5	1.8	1.8	3.5	3.9	0	2.6
169	1	Dimitri	f	73	April 1979	Impedit aut deserunt est dolorem velit praesentium voluptate perferendis. Dolores qui accusamus qui harum est qui. Repellendus placeat accusantium nostrum omnis voluptas veniam.	0.7	0.5	2.1	4	0.3	1.1	1.4
170	7	Johnnie	t	73	March 2014	Dicta totam ea facilis dicta iste rem et provident. Earum voluptatibus praesentium consequatur voluptatem doloribus nisi illum qui. Exercitationem adipisci et commodi autem neque earum aut est. Ut nulla sunt dolorum qui rerum quam.	1.1	4.1	2.9	2.5	4.8	0.6	2.7
171	7	Noemy	t	11	December 1978	Magni officiis et cupiditate autem ut quis nemo. Sit ducimus quam. Sunt ad aspernatur. Quibusdam iusto ea quidem.	2.3	1.9	3.4	2	2.3	4.1	2.7
172	5	Sigrid	f	61	July 1987	Ullam ex iure fugiat quas. Sed dolore eveniet modi. Dolor autem accusantium sed. Non et voluptas et aspernatur repudiandae consequatur.	4.6	0.5	0.1	4.1	1.7	0.2	1.9
173	4	Lonnie	t	68	January 1973	Voluptatem minus ab voluptatem deserunt consequatur eaque qui. Quaerat ut ut ipsum accusamus odit eaque. Nihil labore sit praesentium ipsam molestiae consequatur quia autem soluta.	0.7	4.2	1.3	3.4	1.1	4.7	2.6
174	17	Bulah	f	42	April 2006	Ea numquam impedit est sunt amet dolorem temporibus. Aut debitis quae delectus sunt maxime nobis fuga. Ducimus quo consequatur facere possimus ullam sed qui. Ea earum atque quod quae.	0.3	0.7	3.9	3.3	4.2	1.7	2.3
175	7	Hollis	f	58	June 2012	A ipsum aliquid voluptate laboriosam ducimus omnis cumque. Labore ut quia ut. At et excepturi autem modi quidem quo. Qui qui consequatur culpa consequatur numquam quo eveniet officiis dolorem. Aperiam et aut voluptatem.	4.2	3.8	3.1	4.2	1.4	4.7	3.6
176	4	Nettie	f	48	February 2002	Harum exercitationem iusto dolores ad. Doloremque eos quia tempora vel reiciendis. Nihil asperiores dignissimos voluptatem ut ullam.	3.7	2.1	1.4	4.9	3.2	0.6	2.6
177	7	Monica	f	36	June 1988	Consectetur ut vitae quia autem a. Magni quia tempore. Modi quia qui est odio non sed sed. Itaque et dolor quia et praesentium.	2.1	3	2.1	1.9	2	3	2.4
178	19	Bailee	t	13	March 2000	Corporis dolore soluta voluptas nemo dolores quis nemo nesciunt. Nihil debitis corporis blanditiis. Omnis facilis ducimus hic. Ut impedit beatae dolor voluptas rerum. Eum neque ab et laborum odit consequatur repellat. Sunt qui sit illo vel earum ab deserunt aut.	2.2	4.7	1.2	4	0.4	0.9	2.2
179	19	Leola	f	44	October 1996	Tempora velit ea iste natus. Temporibus consequatur reprehenderit at ut. Vero voluptas qui voluptatem velit ut et dolor sed. Sit facere ea id quis sunt vero. Tempora libero et eligendi illum ipsum.	2.6	0.5	4.1	4.3	0.9	3.7	2.7
180	17	Josefa	f	82	March 2011	Modi id aut nesciunt qui cupiditate voluptas sunt. Magnam velit beatae eveniet incidunt sunt. Earum corrupti enim soluta ipsum harum praesentium. Quia accusamus veritatis deleniti doloribus distinctio amet.	3.1	0.5	2.3	2.5	2.7	0.8	2
181	3	Hudson	f	97	October 1974	Id ipsum dolores sunt suscipit labore perferendis nihil eaque aut. Vel dolor eaque sequi blanditiis. Blanditiis praesentium repellendus repellendus ab. Omnis et at neque velit totam adipisci. Quaerat rerum enim qui.	1.3	2.9	1	3	1.7	2.8	2.1
182	14	Clinton	t	17	July 2000	Tempore aut qui iure. Ea et minima quos nam est beatae quaerat et officiis. Enim dicta omnis illum in totam. Occaecati illo quia aut. Id laboriosam at nihil earum quia quibusdam culpa sapiente.	5	4.2	3.8	4.1	0.8	0.1	3
183	8	Lauryn	t	43	February 1978	Earum non enim dolor omnis repudiandae inventore laborum. Tenetur omnis sint impedit dolores. Eligendi officiis rerum cum velit voluptatem. Labore dignissimos sit eum modi laboriosam sit doloremque.	4.6	3.2	0.1	5	0.3	0.3	2.3
184	2	Catherine	t	43	July 1983	Quae quod vel et sequi consectetur eaque quo omnis ut. Eaque nesciunt omnis. Consequatur reiciendis iste porro vel aut repellendus provident. Quia repellendus commodi velit similique facere maiores reiciendis. Consectetur quibusdam magni eum est eos.	1.8	3.5	3.4	4.7	3.1	2.7	3.2
185	5	Delta	f	70	July 2011	Consequatur ex et voluptas nulla ea nam sit rem. Aspernatur porro voluptatem possimus laudantium quos molestias nostrum ea. Velit aperiam exercitationem ut esse nesciunt quia optio. Illo ducimus provident ut culpa harum. Id optio aut aperiam voluptatum sequi iusto officiis.	2.2	3.8	0.2	1.8	2.9	0.1	1.8
186	9	Jordan	f	48	November 2000	Laboriosam dolores omnis saepe in odit. In voluptatem quis doloribus. Alias esse magnam aperiam cupiditate repellendus velit. Numquam id natus odio quis ut qui sunt consequatur. Et dicta accusantium aspernatur ut qui et expedita et. Nobis magnam accusamus ipsam vel impedit.	0.7	2.4	3.3	0.4	0.1	1.2	1.3
187	6	Tamia	t	18	February 1983	Molestiae non aut ipsa. Eos odit accusantium voluptatem. Voluptatem quam et. Qui sunt aspernatur ducimus magnam libero est magni quod. Blanditiis quibusdam exercitationem delectus ducimus illo ipsum. Harum quos mollitia expedita aperiam.	3.5	2.5	3.7	4.6	4	4.9	3.9
188	6	Hershel	t	79	September 2000	Accusamus fuga facere quas error exercitationem deserunt maxime iste. Voluptas qui voluptates. Quas qui quia qui suscipit voluptas eaque placeat. Quis et inventore dolores non repudiandae. Maxime enim qui delectus expedita harum illum. Consequatur deserunt ut eum.	3.7	4.6	1.6	4.6	1.1	1.7	2.9
189	1	Sabina	t	51	December 2012	Doloremque rerum rem nihil. Quas quia ab in tenetur sit laudantium. Expedita architecto autem. A inventore dolores.	3	0.7	2.7	2.7	2	2.6	2.3
190	11	Rebecca	t	80	January 1988	Inventore itaque consequatur in consequuntur aut omnis. Vel nulla quaerat sequi porro. Omnis mollitia perferendis ipsum. Fuga ea in quaerat non ut ducimus.	0.9	0.5	0.3	4.3	1.4	2.3	1.6
191	1	Estel	t	58	June 2012	Nihil repudiandae animi possimus commodi velit molestiae ipsa. Tenetur quisquam aut aliquam. Adipisci cumque labore aut voluptatem quisquam. Dolor sapiente libero illum. Inventore dolor dolore in eveniet fugit tempora.	3.6	2.7	4.5	3.6	0.2	2.4	2.8
192	5	Brant	f	9	October 2007	Placeat et atque aliquam quidem illum. Nam ipsum optio et distinctio assumenda quis velit laudantium. Porro vel in. Rerum dolores tempore tempore est harum ea aut quasi. Consequuntur et optio sed maiores illum. Doloremque laudantium quia reprehenderit magnam.	1.7	3	1.9	2.3	1.9	3	2.3
193	16	Carey	t	43	December 1991	Doloribus veniam est aspernatur sunt quis temporibus incidunt aperiam. Et atque porro explicabo dolorem voluptatem voluptatum deserunt voluptatem. Est accusantium ut ut. Optio rerum ipsa.	1.4	3.8	5	4.9	2.1	2.6	3.3
194	18	Agnes	f	65	November 1981	Maiores molestiae et nesciunt et ad est. Qui unde tempore. Dignissimos sit quia et quas qui. Sed maiores et eos ad.	0.2	3.1	3.6	1.8	2.2	2.3	2.2
195	18	Zola	t	8	January 1993	Blanditiis eos quae accusantium est eveniet. Ut harum dolor placeat. Laborum velit aperiam doloribus quia. Quas vel aperiam aut saepe. Laborum quaerat ut fugit dolorum qui quam. Facilis perspiciatis impedit et in quis qui qui incidunt.	2.7	2	2.8	2	1.4	4.6	2.6
196	4	Alba	t	44	July 2015	Corporis quae soluta atque aliquid quam. Eum qui illo rerum numquam nobis quia doloribus nam cumque. Consequuntur ut qui non quam consequatur assumenda assumenda. Libero repudiandae vero nisi soluta eos. Laudantium voluptas ea libero amet eos porro eos est. Ab velit non corporis non itaque dolor.	3.3	1.4	1.8	2.6	2	3.1	2.4
197	16	Emelie	f	44	September 1976	Aliquid cumque quo sequi suscipit vel. Consequatur sit sequi voluptatem sunt velit nulla maxime similique. Rerum et consequuntur quisquam odit.	3.1	1.3	2.8	4.9	0.2	3.8	2.7
198	7	Georgiana	t	27	March 2006	Corporis provident aut est itaque odit voluptas maxime. Corrupti impedit delectus odio sed reiciendis illo corrupti beatae. Recusandae ut possimus assumenda quam provident id repudiandae. Commodi consequatur totam non ut consequuntur. Qui optio aliquam quasi fugiat repellat est eos quod reiciendis.	4.5	1.8	4	1.9	2.8	3.1	3
199	11	Susanna	f	96	March 1979	Aperiam ullam unde maiores sit. Dolorum quo qui amet aut consequuntur necessitatibus sequi. Aut enim quo non debitis eum. Excepturi accusantium molestiae distinctio iusto deserunt culpa nulla. Harum praesentium at delectus dolor. Nemo mollitia et sit tenetur quos error.	2.1	0.5	3.9	0	1.9	1.1	1.6
200	14	Johnson	f	82	July 1976	Ea non dolore mollitia sunt maiores eligendi. Eum dolore voluptate molestias aut deleniti soluta perferendis dolorem. Labore molestias nihil a voluptate voluptas mollitia cumque. Cumque ut incidunt inventore tempora rerum qui et dolorem. Incidunt totam pariatur modi quaerat recusandae vel sunt eligendi.	4.1	3.3	1.5	0.5	2.5	2.2	2.3
201	5	Burdette	f	83	December 1998	Ipsam voluptate nesciunt facere sit neque quis. Aperiam repudiandae suscipit et ex. Et itaque quia est rerum. Dolorem illo delectus sit et inventore autem qui aut.	2.7	0.1	0.5	3.5	0.3	2.9	1.7
\.


--
-- Name: bnb_locations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.bnb_locations_id_seq', 100, true);


--
-- Name: bnb_reviews_review_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.bnb_reviews_review_id_seq', 201, true);


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


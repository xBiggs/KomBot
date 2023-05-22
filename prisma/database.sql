--
-- PostgreSQL database dump
--

-- Dumped from database version 15.3 (Ubuntu 15.3-1.pgdg22.04+1)
-- Dumped by pg_dump version 15.3 (Ubuntu 15.3-1.pgdg22.04+1)

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
-- Name: framedata; Type: TABLE; Schema: public; Owner: biggs
--

CREATE TABLE public.framedata (
    id integer NOT NULL,
    fighter text NOT NULL,
    command text NOT NULL,
    name text DEFAULT '~'::text,
    execution text DEFAULT '~'::text,
    startup text DEFAULT '~'::text,
    level text DEFAULT '~'::text,
    block text DEFAULT '~'::text,
    hit text DEFAULT '~'::text,
    blockcancel text DEFAULT '~'::text,
    hitcancel text DEFAULT '~'::text,
    notes text DEFAULT '~'::text,
    image text DEFAULT '~'::text
);


ALTER TABLE public.framedata OWNER TO biggs;

--
-- Name: framedata_id_seq; Type: SEQUENCE; Schema: public; Owner: biggs
--

ALTER TABLE public.framedata ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.framedata_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Data for Name: framedata; Type: TABLE DATA; Schema: public; Owner: biggs
--

COPY public.framedata (id, fighter, command, name, execution, startup, level, block, hit, blockcancel, hitcancel, notes, image) FROM stdin;
1	baraka	1	~	13	13f	High	0	0	17	23	~	~
2	baraka	12	~	18	13f	Mid	-6	8	16	29	1f Gap	~
3	baraka	121	~	13	13f	Mid	-4	5	21	31	1f Gap Between 12	~
4	baraka	122	~	15	13f	Special High	-5	3	25	34	1f Gap Between 12	~
5	baraka	12b3	~	22	13f	Low	-2	22, +18 vs Tech Roll	~	~	6f Gap	~
6	baraka	2	~	23	23f	Mid	-3	3	27	33	~	~
7	baraka	21	~	25	23f	Mid	0	12	27	33	~	~
8	baraka	212	~	26	23f	High	0	50, +58 vs Tech Roll	~	~	~	~
9	baraka	22	~	22	23f	High	0	10	25	30	~	~
10	baraka	221+2	~	30	23f	Mid, Overhead	8	58, +47 vs Tech Roll	≥+17 (≥+10 last hit)	?	~	~
11	baraka	3	~	13	13f	Mid	-8	11	19	39	~	~
12	baraka	3b3	~	27	13f	Low	-2	23, +19 vs Tech Roll	~	~	8f Gap	~
13	baraka	4	~	12	12f	Mid	-20	4	17	41	~	~
14	baraka	d1	~	7	7f	Mid	-15	0, -3 vs Crouch	-1	14, +12 vs Crouch	~	~
15	baraka	d2	~	11	11f	High	-1	34, +26 vs Tech Roll	~	~	~	~
16	baraka	d3	~	6	6f	Low	-8	2, +9 vs Crouch	1	14, +12 vs Crouch	~	~
17	baraka	d4	~	12	12f	Low	0	13, +6 vs Crouch	25	31, +24 vs Crouch	~	~
18	baraka	b1	~	16	16f	High	5	12	23	29	~	~
19	baraka	b11	~	8	16f	High	-14	4	19	37	~	~
20	baraka	b1f2	~	17	16f	High	-5	49, +32 vs Tech Roll	20	?	~	~
21	baraka	b2	~	21	21f	High	-20	1	23	44	~	~
22	baraka	b2f2	~	21	21f	Overhead	-5	49, +32 vs Tech Roll	~	~	~	~
23	baraka	b3	~	17	17f	Low	-7	-3	18	22	~	~
24	baraka	b31	~	20	17f	Mid	-11	73, +49 vs Tech Roll	8	~	2f Gap	~
25	baraka	b31f1	~	21	17f	Overhead	-15	44, +36 vs Tech Roll	~	~	~	~
26	baraka	b32	~	14	17f	Mid	-18	6	15	39	~	~
27	baraka	b322	~	29	17f	Overhead	-14	42, +50 vs Tech Roll	~	~	14f Gap	~
28	baraka	b4	~	26	26f	Low	11	42, +50 vs Tech Roll	~	~	~	~
29	baraka	f2	~	19	19f	Overhead	-10	-2	22	29	~	~
30	baraka	f22	~	18	19f	Mid	-22	17, +4 vs Tech Roll	~	~	~	~
31	baraka	f24	~	22	19f	Mid	-9	40, +48 vs Tech Roll	~	~	~	~
32	baraka	f4	~	12	12f	Mid	-7	9	13	29	~	~
33	baraka	f44	~	3	12f	Mid	-2	48, +36 vs Tech Roll	~	~	~	~
34	baraka	u3	~	24	24f	Mid	10	58, +41 vs Tech Roll	~	~	~	~
35	baraka	u4	~	33	33f	Overhead	-29	17, -15 vs Tech Roll	~	~	~	~
36	baraka	throw	~	10	10f	Special High	Unblockable	7	~	~	~	~
37	baraka	df2	(Blade Charge)	10 (Full Screen: 17)	10f	Mid	-21	16, 0 vs Tech Roll	~	~	~	https://i.imgur.com/BdlEEC1.png
38	baraka	db2	(Spark)	16 (Full Screen: 41)	16f	High	-23	-4	~	~	~	~
39	baraka	bb1	(Chop Chop)	16	16f	Mid	-26	43, +51 vs Tech Roll	~	~	~	~
40	baraka	db3	(Blade Spin)	7, 18	7f	High, Special High	0	43, +26 vs Tech Roll	~	~	~	~
41	baraka	df1	(Slices)	11, 23, 49	11f	High, High, Mid	0	34, +8 vs Tech Roll	~	~	~	~
42	baraka	exdf2	(Blade Rush)	10 (Full Screen: 18)	10f	Mid	-21 (Full Screen: -13)	16, -1 vs Tech Roll (Full Screen: 24, +7 vs Tech Roll)	~	~	Armor On Frames: ?	~
43	baraka	exdb2	(Sparked)	16 (Full Screen: 41)	16f	High	-23	12	~	~	~	~
44	baraka	exbb1	(Chopchop Shop)	16	16f	Mid	-26	29, +37 vs Tech Roll	~	~	~	~
45	baraka	exdb3	(Spinner)	7, 26, 44	7f	High, High, High, Special High	0	45, +28 vs Tech Roll	~	~	~	~
46	baraka	exdf1	(Slicer)	11, 23, 51, 59	11f	High, High, Mid, Mid	0	42, +46 vs Tech Roll	~	~	1f Gap Between 2nd and 3rd Hit	~
47	baraka	xray	(Nail And Impale)	15	15f	Mid	-16	-7	~	~	Invincibility On Frames: 1-2. Armor On Frames: ?	https://i.imgur.com/uZiOwtd.png
48	baraka	breaker	~	~	~	~	~	~+5, ~+4 vs Tech Roll	~	~	Data Reflects When Grounded vs Grounded Opponent	~
49	csz	1	~	9	9f	High	0	0	18	32	~	~
50	csz	11	~	15	9f	High	0	0	19	45	~	~
51	csz	111	~	20	9f	Mid	0	8	26	28	~	~
52	csz	112	~	21	9f	Mid	-4	44, +28 vs Tech Roll	11	60, +43 vs Tech Roll	Gap?	~
53	csz	11f4	~	25	9f	Mid	-19	20, -12 vs Tech Roll	~	~	~	~
54	csz	2	~	15	15f	Mid	0	0	23	64	~	~
55	csz	21	~	15	15f	Mid	0	0	22	41	~	~
56	csz	211+2	~	25	15f	Mid	1	68, +58 vs Tech Roll	~	~	2f Gap?	~
57	csz	3	~	13	13f	Mid	-4	6	15	25	~	~
58	csz	33	~	8	13f	Low	-14	1	11	26	~	~
59	csz	332	~	19	13f	Mid	0	36, +34 vs Tech Roll	19	51, +49 vs Tech Roll	Gap?	~
60	csz	34	~	19	13f	Overhead	0	58, +47 vs Tech Roll	~	~	Gap?	~
61	csz	4	~	23	23f	Mid	0	12	~	~	~	~
62	csz	d1	~	9	9f	Mid	13	1, -1 vs Crouch	4	18, +16 vs Crouch	~	~
63	csz	d2	~	13	13f	High	1	35, +28 vs Tech Roll	~	~	~	~
64	csz	d3	~	6	6f	Low	-10	0, +7 vs Crouch	-1	9, +16 vs Crouch	~	~
65	csz	d4	~	12	12f	Low	-6	0, -7 vs Crouch	23	29, +22 vs Crouch	~	~
66	csz	b1	~	29	29f	Mid	4	16	19	31	~	~
67	csz	b12	~	23	29f	Mid	-17	10, -13 vs Tech Roll	26	53, +30 vs Tech Roll	~	~
68	csz	b2	~	16	16f	Mid	0	5	22	24	~	~
69	csz	b22	~	16	16f	Mid	0	4	26	27	~	~
70	csz	b24	~	18	16f	High	-27	10, +18 vs Tech Roll	~	~	~	~
71	csz	b3	~	26	26f	Low	-2	2	19	23	~	~
72	csz	b32	~	14	26f	Mid	-13	53, +43 vs Tech Roll	1	69, +58 vs Tech Roll	~	~
73	csz	b321	~	19	26f	~	~	13, -11 vs Tech Roll	~	~	~	~
74	csz	b4	~	16	16f	Low	-5	18, +14 vs Tech Roll	~	~	~	~
75	csz	f1	~	17	17f	Mid	-5	5	15	25	~	~
76	csz	f14	~	19	17f	High	-51	-5, -16 vs Tech Roll	~	~	~	~
77	csz	f2	~	15	15f	Mid	0	0	21	45	~	~
78	csz	f22	~	13	15f	Mid	0	3	23	24	~	~
79	csz	f221	~	5	15f	Mid?	0	8	26	32	~	~
80	csz	f4	~	25	25f	Mid	-19	1	~	~	~	~
81	csz	u4	~	23	23f	High	-45	-2	27	70	~	~
82	csz	throw	~	10	10f	Low	Unblockable	7	~	~	~	~
83	csz	bb3	(Close Ice Bomb)	114	13f	Mid	Unblockable	253, +240 vs Tech Roll	~	~	~	~
84	csz	ff3	(Medium Ice Bomb)	114	13f	Mid	Unblockable	253, +240 vs Tech Roll	~	~	~	~
85	csz	bbf3	(Far Ice Bomb)	114	13f	Mid	Unblockable	245, +232 vs Tech Roll	~	~	~	~
86	csz	df1	(Ice Ball)	28 (Fulll Screen: 61)	28f	Special High	-26	82	~	~	Opponent is Frozen for 129f On Ground, 99f in Air	~
87	csz	db2	(Ice Parry)	1	1f	~	~	~+13	~	~	Active for 43f	~
88	csz	bf4	(Slide)	10 (Full Screen: 40)	10f	Low	-49 (Full Screen: -31)	23	~	~	~	~
89	csz	jd3	(Close Divekick)	5	5f	Mid	~-18	~+3	~	~	~	~
90	csz	jd4	(Far Divekick)	7 (Max Range: 16)	7f	Mid	~-16	~+4	~	~	~	~
91	csz	db1	(Teleport)	?	?	~	~	~	~	~	Duration: 46f (22 Front, 24 Behind)	~
92	csz	exbb3	(Cryo Bomb)	114	13f	Mid	Unblockable	245, +233 vs Tech Roll	~	~	~	~
93	csz	exff3	(Cryo Bomb)	114	13f	Mid	Unblockable	245, +233 vs Tech Roll	~	~	~	~
94	csz	exbbf3	(Cryo Bomb)	114	13f	Mid	Unblockable	245, +233 vs Tech Roll	~	~	~	~
95	csz	exdf1	(Ice Beam)	20 (Full Screen: 39)	10f	Special High	-29	214	~	~	Opponent is Frozen for 271f On Ground,115f in Air	~
96	csz	exdb2	(Frozen Parry)	1	1f	~	~	~	~	~	Active for 43f. Opponent is Frozen for 120f	~
97	csz	exbf4	(Cyber-Slide)	10 (Full Screen: 31)	10f	Low	-49 (Full Screen: -37)	25, +8 vs Tech Roll	~	~	~	~
98	csz	exjd3	(Close Powerkick)	5	5f	Mid	~-25	~+11	~	~	Instant Ex Divekick is + on block	~
99	csz	exjd4	(Far Powerkick)	7 (Max Range: 16)	7f	Mid	~-23	~+13	~	~	Instant Ex Divekick is + on block	~
100	csz	exdb1	(Bangport)	11	11f	Mid	-8	45, +28 vs Tech Roll	~	~	Duration: 46f (22 Front, 24 Behind)	~
101	csz	xray	(Cool Down)	20 (Full Screen: 29)	20f	Mid	~-36	24	~	~	~	~
102	csz	breaker	~	~	~	~	~	~+4, ~+3 vs Tech Roll	~	~	Data Reflects When Grounded vs Grounded Opponent	~
103	cyrax	1	~	9	9f	High	0	0	16	22	~	~
104	cyrax	11	~	15	9f	Mid	0	0	11	25	~	~
105	cyrax	111	~	17	9f	Mid	-3	22, -1 vs Tech Roll	~	~	5f Gap	~
106	cyrax	12	~	18	9f	Mid	0	0	18	32	1f Gap	~
107	cyrax	121	~	12	9f	Mid	-10	45, +28 vs Tech Roll	19	74, +57 vs Tech Roll	1f Gap Between 12	~
108	cyrax	123	~	10	9f	Special High	0	32, +30 vs Tech Roll	15	47, +45 vs Tech Roll	1f Gap Between 13	~
109	cyrax	2	~	12	12f	Mid	0	0	20	32	~	~
110	cyrax	21	~	15	12f	Mid	0	0	20	29	~	~
111	cyrax	212	~	28	12f	Overhead	0	44	~	~	~7f Gap	~
112	cyrax	22	~	20	12f	Mid	0	0	≥+20	≥+20	~	~
113	cyrax	22f1	~	19	12f	Mid	-20	5, +3 vs Tech Roll	~	~	~	~
114	cyrax	3	~	10	10f	Mid	-6	5	19	30	~	~
115	cyrax	33	~	12	10f	Mid	-4	4	18	26	~	~
116	cyrax	334	~	14	10f	Mid	5	15, +19 vs Tech Roll	~	~	~	~
117	cyrax	4	~	19	19f	Mid	-3	5	18	26	~	~
118	cyrax	d1	~	6	6f	Mid	-13	1, -1 vs Crouch	1	15, +13 vs Crouch	~	~
119	cyrax	d2	~	10	10f	High	-2	33, +26 vs Tech Roll	~	~	~	~
120	cyrax	d3	~	9	9f	Low	-9	1, +8 vs Crouch	2	12, +19 vs Crouch	~	~
121	cyrax	d4	~	13	13f	Low	0	16, +9 vs Crouch	24	30, +23 vs Crouch	~	~
122	cyrax	b1	~	14	14f	Special High	Unblockable	0	~	≥+7	~	~
123	cyrax	b1212	~	?	14f	~	Unblockable	34	~	~	~	~
124	cyrax	b2	~	30	30f	Overhead	2	80, +69 vs Tech Roll	~	~	~	~
125	cyrax	b3	~	16	16f	Mid	-11, (Human: -7)	37, +20 vs Tech Roll	~	~	~	~
126	cyrax	b4	~	18	18f	Low	-7	17, +9 vs Tech Roll	~	~	~	~
127	cyrax	f2	~	29	29f	Mid	11	9, +11 vs Tech Roll	~	~	~	~
128	cyrax	u4	~	14	14f	Overhead	-5	44, +52 vs Tech Roll	25	40	~	~
129	cyrax	throw	~	10	10f	Special High	Unblockable	7	~	~	~	~
130	cyrax	ff4	(Close Bomb)	114 (Human: 113)	12f, (Human: 11f)	Mid	Unblockable	174, +162 vs Tech Roll (Human: +165, +153 vs Tech Roll)	~	~	~	~
131	cyrax	bb4	(Mid Bomb)	114 (Human: 113)	12f, (Human: 11f)	Mid	Unblockable	174, +162 vs Tech Roll (Human: +165, +153 vs Tech Roll)	~	~	~	~
132	cyrax	bbf4	(Far Bomb)	114 (Human: 113)	12f, (Human: 11f)	Mid	Unblockable	174, +162 vs Tech Roll (Human: +165, +153 vs Tech Roll)	~	~	~	~
133	cyrax	bb3	(Net)	18 (Full Screen: 61, Human: 63)	18f	Mid	-21	84	~	~	~	~
134	cyrax	db1	(Teleport)	?	9f	~	~	~	~	~	Duration: 46f (22f in Front, 24f Behind). Invincibility After Startup: 13f (Human: 22f After Switching Sides)	~
135	cyrax	bf2	(Buzzsaw)	17	17f	Overhead	-10	28	~	~	~	~
136	cyrax	df3	(Reverse Kick, Ragdoll)	22	22f	Mid	-2	46, +31 vs Tech Roll	~	~	Throw Follow Up is +9 On Hit	~
137	cyrax	df1	(Anti-Air)	9	9f	~	~	~+25, ~-5 vs Tech Roll	~	~	~	~
138	cyrax	exff4	(Sticky Bomb)	18 (Full Screen: 57, Human: 62)	18f, (Human: 16f)	Mid	-7	95, +84 vs Tech Roll (Human: ~+97, ~+86 vs Tech Roll)	~	~	~	~
139	cyrax	exbb4	(Sticky Bomb)	18 (Full Screen: 57, Human: 62)	18f, (Human: 16f)	Mid	-7	95, +84 vs Tech Roll (Human: ~+97, ~+86 vs Tech Roll)	~	~	~	~
140	cyrax	exbbf4	(Sticky Bomb)	18 (Full Screen: 57, Human: 62)	18f, (Human: 16f)	Mid	-7	95, +84 vs Tech Roll (Human: ~+97, ~+86 vs Tech Roll)	~	~	~	~
141	cyrax	exbb3	(Electro Net)	18 (Full Screen: 61, Human: 63)	18f	Mid	-21	83	~	~	Drains Opponent's Meter	~
142	cyrax	exdb1	(Bangport)	11, (Human: 24)	11f, (Human: 24f)	Mid	-8, (Human: -4)	45, +28 vs Tech Roll (Human: +57, +40 vs Tech Roll)	~	~	Duration: 46f (22f in Front, 24f Behind). Human: 51f (27f in Front, 24f Behind)	~
143	cyrax	exbf2	(Saw Blade)	17, (Full Screen: 42)	17f	Overhead	-10	61, +43 vs Tech Roll	~	~	~	~
144	cyrax	exdf3	(Donkey Kick)	9	9f	Low	-2	46, +31 vs Tech Roll	~	~	Throw Follow Up is +9 On Hit	~
145	cyrax	exdf1	(Power Anti-Air)	9	9f	~	~	~+25, ~-5 vs Tech Roll	~	~	~	~
146	cyrax	xray	(Cyberdriver)	15	15f	High	2, (Human: -4)	66	~	~	~	~
147	cyrax	breaker	~	~	~	~	~	16, +15 vs Tech Roll	~	~	~	~
148	ermac	1	~	10	10f	High	0	0	19	25	~	~
149	ermac	12	~	11	10f	Mid	-7	0	14	46	~	~
150	ermac	121	~	19	10f	Mid	0	6	26	30	~	~
151	ermac	2	~	12	12f	Special High	0	11	25	24	~	~
152	ermac	22	~	16	12f	Special High	-3	2	25	30	~	~
153	ermac	3	~	12	12f	Mid	-8	-5	18	21	~	~
154	ermac	31	~	17	12f	High	0	13	19	25	~	~
155	ermac	312	~	12	12f	High	-2	41	13	56	~	~
156	ermac	33	~	19	12f	Mid	-11	6	18	35	~	~
157	ermac	4	~	20	20f	Special High	-3	15	17	35	~	~
158	ermac	d1	~	6	6f	Mid	-13	1, -1 vs Crouch	1	15, +13 vs Crouch	~	~
159	ermac	d2	~	13	13f	High	-1	36, +29 vs Tech Roll	~	~	~	~
160	ermac	d3	~	7	7f	Low	-11	-2, +5 vs Crouch	2	12, +19 vs Crouch	~	~
161	ermac	d4	~	12	12f	Low	0	12, +5 Crouch	26	32, +25 vs Crouch	~	~
162	ermac	b1	~	21	21f	Mid	-2	5	12	18	~	~
163	ermac	b11	~	13	21f	Mid	-15	0	16	31	~	~
164	ermac	b114	~	16	21f	Special High	-4	21, +19 vs Tech Roll	25	50, +48 vs Tech Roll	~	~
165	ermac	b12	~	16	21f	High	-8	30, +33 vs Tech Roll	~	≥+11	~	~
166	ermac	b12f1	~	11	21f	~	~	75, +59 vs Tech Roll	~	~	~	~
167	ermac	b2	~	17-51	17-51f	Mid	-13	3 (Max Charge: +56, +49 vs Tech Roll)	~	≥+17	Unblockable Crumble State on Max Charge	~
168	ermac	b21	~	17	17-51f	~	~	25, +21 vs Tech Roll	~	38, +34 vs Tech Roll	~	~
169	ermac	b21f2	~	20	17-51f	~	~	46, +34 vs Tech Roll	~	69, +57 vs Tech Roll	~	~
170	ermac	b2b1	~	16	17-51f	~	~	38, +26 vs Tech Roll	~	61, +48 vs Tech Roll	~	~
171	ermac	b3	~	12	12f	Mid	-6	47, +35 vs Tech Roll	18	70, +59 vs Tech Roll	~	~
172	ermac	b34	~	26	12f	High	0	62, +51 vs Tech Roll	17	74, +63 vs Tech Roll	~	~
173	ermac	b4	~	15	15f	Low	2	26, +18 vs Tech Roll	~	~	~	~
174	ermac	f1	~	18	18f	High	-5	9	14	28	~	~
175	ermac	f11	~	12	18f	High	-10	6	15	30	~	~
176	ermac	f114	~	15	18f	Mid	4	54, +37 vs Tech Roll	24	74, +57 vs Tech Roll	~	~
177	ermac	f2	~	21	21f	Mid	4	30, +34 vs Tech Roll	~	~	~	~
178	ermac	f4	~	14	14f	Low, Special High?	-9	13	13	≥+20	~	~
179	ermac	f4b2	~	20	14f	High	-27	34, +8 vs Tech Roll	~	~	~	~
180	ermac	u2	~	25	25f	Overhead	-4	24, +20 vs Tech Roll	~	~	~	~
181	ermac	throw	~	10	10f	Special High	Unblockable	7	~	~	~	~
182	ermac	db2	(Force Ball)	19 (Full Screen: 47)	19f	Special High	-16	3	~	~	~	~
183	ermac	jdb2	(Airblast)	10	10f	Mid	0	~+21	~	~	~	~
184	ermac	db4	(Force Port)	33	33f	High	-43	34	~	~	Duration: 54f (19f in Front, 35f Behind)	~
185	ermac	jdb4	(Air Force Port)	26	26f	High	-43	34	~	~	~	~
186	ermac	db1	(Force Lift)	12	13f	High	-26	64, +60 vs Tech Roll	~	~	~	~
187	ermac	ddu	(Hover Slam)	60-179	60-179f	Mid	Unblockable	-15	~	~	32f Startup to Special Cancel	~
188	ermac	bf1	(Force Push)	14	14f	Mid	-17	34, +25 vs Tech Roll	~	~	~	~
189	ermac	exdb2	(Focus Ball)	19 (Full Screen: 46)	19f	Mid	-16	3	~	~	~	~
190	ermac	exjdb2	(Force Blast)	10	10f	Mid	0	~+21	~	~	~	~
191	ermac	exdb4	(Teleport)	33	33f	High	-43	31, +35 vs Tech Roll	~	~	Duration: 43f (19f in Front, 24f Behind)	~
192	ermac	exjdb4	(Air Teleport)	26	26f	High	-43	31, +35 vs Tech Roll	~	~	~	~
193	ermac	exdb1	(Telelift)	13	13f	Mid	-26	55, +52 vs Tech Roll	~	~	~	~
194	ermac	exddu	(Levitate Smash)	54-163	54-163f	Mid	Unblockable	-13	~	~	32f Startup to Special Cancel	~
195	ermac	exbf1	(Telepush)	14	14f	Mid	-17	62	~	~	~	~
196	ermac	xray	(Cannonball Slam)	23	23f	Mid	-42	7	~	~	~	~
197	ermac	breaker	~	~	~	~	~	~+14, ~+13 vs Tech Roll	~	~	Data Reflects When Grounded vs Grounded Opponent	~
198	freddy	1	~	19	19f	High	0	0	18	24	~	~
199	freddy	11	~	15	19f	Mid	-2	0	13	32	~	~
200	freddy	111	~	14	19f	Mid	0	9	25	33	~	~
201	freddy	2	~	10	10f	Special High	0	3	25	24	~	~
202	freddy	22	~	17	10f	Mid	-13	4	15	32	~	~
203	freddy	221+2	~	19	10f	Overhead	-4	45, +53 vs Tech Roll	~	~	~	~
204	freddy	3	~	16	16f	Mid	-6	0	17	23	~	~
205	freddy	33	~	16	16f	Mid	-2	39, +22 vs Tech Roll	21	62, +45 vs Tech Roll	~	~
206	freddy	4	~	17	17f	Mid	-8	9	18	35	~	~
207	freddy	d1	~	6	6f	Mid	-13	1, -1 vs Crouch	1	15, +13 vs Crouch	~	~
208	freddy	d2	~	10	10f	High	0	33, +26 vs Tech Roll	~	~	~	~
209	freddy	d3	~	7	7f	Low	-7	3, +10 vs Crouch	2	12, +19 vs Crouch	~	~
210	freddy	d4	~	13	13f	Low	0	13, +6 vs Crouch	21	27, +20 vs Crouch	~	~
211	freddy	b1	~	16	16f	High	-9	5	11	25	~	~
212	freddy	b12	~	14	16f	Mid	-3	4	18	29	~	~
213	freddy	b122	~	17	16f	Mid	0	49, +57 vs Tech Roll	~	~	~	~
214	freddy	b12u1	~	26	16f	Mid	-4	61, +49 vs Tech Roll	17	74, +62 vs Tech Roll	~	~
215	freddy	b2	~	17	17f	Overhead	0	4	19	23	~	~
216	freddy	b24	~	22	17f	Mid	0	34, +8 vs Tech Roll	~	~	~	~
217	freddy	b3	~	17	17f	Low	0	4	24	20	~	~
218	freddy	b33	~	16	17f	Mid	-2	39, +22 vs Tech Roll	21	62, +45 vs Tech Roll	~	~
219	freddy	b4	~	21	21f	Low	3	27, +19 vs Tech Roll	~	~	~	~
220	freddy	f2	~	18	18f	Md	0	5	19	21	~	~
221	freddy	f21	~	10	18f	Mid	-19	2	18	39	~	~
222	freddy	f214	~	22	18f	Mid	-9	10, +15 vs Tech Roll	17	36, +41 vs Tech Roll	~	~
223	freddy	f21b3	~	15	18f	Low	-3	16, +12 vs Tech Roll	~	~	~	~
224	freddy	f4	~	12	12f	Mid	-5	1	15	21	~	~
225	freddy	f42	~	13	12f	Mid	-5	41, +28 vs Tech Roll	9	55, +42 vs Tech Roll	~	~
226	freddy	f421	~	10	12f	Mid	-7	42, +29 vs Tech Roll	10	59, +46 vs Tech Roll	~	~
227	freddy	f43	~	7	12f	Mid	-1	9	23	33	~	~
228	freddy	u3	~	13	13f	Mid	0	49, +37 vs Tech Roll	~	~	~	~
229	freddy	throw	~	10	10f	Special High	Unblockable	7	~	~	~	~
230	freddy	db4	(Nightmare Stance)	18	18f	~	~	~	~	~	~	~
231	freddy	db41	(Nightmare Stance 1)	15	15f	Mid	-1	68, +58 vs Tech Roll	~	~	~	~
232	freddy	db42	(Nightmare Stance 2)	15	15f	Overhead	-5	49, +57 vs Tech Roll	~	~	~	~
233	freddy	db43	(Nightmare Stance 3)	15	15f	Low	-2	22, +12 vs Tech Roll	~	~	~	~
234	freddy	db1	(Close Hell Spike)	16	16f	Mid	-13	64, +52 vs Tech Roll	~	~	~	~
235	freddy	df1	(Mid Hell Spike)	16	16f	Mid	-13	64, +52 vs Tech Roll	~	~	~	~
236	freddy	dbf1	(Far Hell Spike)	16	16f	Mid	-13	64, +52 vs Tech Roll	~	~	~	~
237	freddy	df4	(Sweet Dreams)	59	19f	Mid	21	87	~	~	~	~
238	freddy	bf2	(Glove Toss)	15 (Full Screen: 43)	15f	Special High	-5	7	~	~	~	~
239	freddy	db2	(Freddy Fingers)	25 (Full Screen: 53)	25f	Low	-5	1	~	~	~	~
240	freddy	db3	(Dream Shift Away)	?	?	~	~	~	~	~	Duration: 42f	~
241	freddy	df3	(Dream Shift Towards)	?	?	~	~	~	~	~	Duration: 40f	~
242	freddy	exdb1	(Hell Blast)	16	16f	Mid	-6	68	~	~	~	~
243	freddy	exdf1	(Hell Blast)	16	16f	Mid	-6	68	~	~	~	~
244	freddy	exdbf1	(Hell Blast)	16	16f	Mid	-6	68	~	~	~	~
245	freddy	exdf4	(Deep Sleep)	40	10f	Mid	19	87	~	~	~	~
246	freddy	exbf2	(Power Glove Toss)	14 (Full Screen: 43)	14f	Mid	-3	45, +28 vs Tech Roll	~	~	~	~
247	freddy	exdb2	(Freddy's Edge)	25 (Full Screen: 55)	25f	Low	1	30	~	~	~	~
248	freddy	exdb3	(Hell Shift Away)	?	?	~	~	~	~	~	Duration: 42f	~
249	freddy	exdf3	(Hell Shift Towards)	?	?	~	~	~	~	~	Duration: 40f	~
250	freddy	xray	(What A Rush)	15	15f	Mid	-22	17	~	~	~	~
251	freddy	breaker	~	~	~	~	~	~+24, ~+23 vs Tech Roll	~	~	Data Reflects When Grounded vs Grounded Opponent	~
252	jade	1	~	9	9f	High	0	0	13	13	~	~
253	jade	12	~	8 | 24	9f	Mid	0	0	17	23	~	~
254	jade	122	~	17 | 44	9f	Mid	-28	17, -14 vs Tech Roll	~	~	~	~
255	jade	2	~	13-14	13-14f	High	0	0	23	42	~	~
256	jade	23	~	17 | 35	13-14f	Mid	-6	4	14	24	~	~
257	jade	23f2	~	21 | 62	13-14f	Mid	0	31, +27 vs Tech Roll	25	53, +49 vs Tech Roll	7f Gap	~
258	jade	3	~	15	15f	Mid	0	29	19	45	~	~
259	jade	34	~	24 | 41	15f	Low	-3	30, +27 vs Tech Roll	26	58, +54 vs Tech Roll	5f Gap	~
260	jade	342	~	19 | 61	15f	High	-16	66, +42 vs Tech Roll	~	~	5f Gap Between 34	~
261	jade	4	~	12	12f	Mid	-10	3	15	26	~	~
262	jade	4f3	~	18 | 35	12f	Special High	-7	26, +25 vs Tech Roll	~	~	3f Gap	~
263	jade	d1	~	6	6f	Mid	-13	1, -1 vs Crouch	1	15, +13 vs Crouch	~	~
264	jade	d2	~	10	10f	High	-1	33, +26 vs Tech Roll	~	~	~	~
265	jade	d3	~	7	7f	Low	-7	3, +10 vs Crouch	2	12, +19 vs Crouch	~	~
266	jade	d4	~	12	12f	Low	0	12, +5 vs Crouch	26	32, +25 vs Crouch	OTG	~
267	jade	b1	~	16, 22, 28	16f	High	-31	7	10	48	~	~
268	jade	b1f1	~	13 | 58	16f	Mid	-18	21, +9 vs Tech Roll	~	~	3f Gap	~
269	jade	b2	~	18	18f	Mid	-13	49, +56 vs Tech Roll	~	~	~	~
270	jade	b3	~	17	17f	Mid	-2	8	14	24	~	~
271	jade	b32	~	22 | 45	17f	Mid	0	31, +27 vs Tech Roll	25	53, +49 vs Tech Roll	8f Gap	~
272	jade	b4	~	17	17f	Low	-1	22, +14 vs Tech Roll	~	~	~	~
273	jade	f2	~	24	24f	High	-2	2	24	28	~	~
274	jade	f21	~	27 | 54	24f	Mid	-25	14, +1 vs Tech Roll	23	62, +49 vs Tech Roll	3f Gap	~
275	jade	f212	~	19 | 77	24f	Mid	0	61, +44 vs Tech Roll	~	~	3f Gap Between f21	~
276	jade	u3	~	15, 19	15f	Special High	-12	57, +50 vs Tech Roll	~	~	~	~
277	jade	throw	~	10	10f	Special High	Unblockable	7	~	~	~	~
278	jade	df1	(Boomerang)	28 (Full Screen: 48)	28f	Mid	-11	8	~	~	~	~
279	jade	db1	(Boomerang Up)	28 (Full Screen: 49)	28f	Mid	-10	9	~	~	~	~
280	jade	df3	(Boomerang Down)	26 (Full Screen: 48)	26f	Low	-21	-9	~	~	~	~
281	jade	bf3	(Shadow Flash)	1	1f	~	~	~	~	~	Projectile Invincibility On Frames: 2-65	~
282	jade	db2	(Staff Overhead)	35	35f	Overhead	0	70, +59 vs Tech Roll	~	~	~	~
283	jade	df2	(Staff Grab)	19	19f	Mid	-11	7	~	~	~	~
284	jade	df4	(Shadow Kick)	15	15f	Special High	0	51, +33 vs Tech Roll	~	~	~	https://i.imgur.com/AmXfYzH.jpg
285	jade	exdf1	(Reboomerang)	28, 62-69 (Full Screen: 48, 81-84)	28f	Mid	-11 hit 1 ~+36 hit 2	~+64	~	~	~	~
286	jade	exdb1	(Reboomerang Up)	28, 55-60 (Full Screen: 36-39, 56-68)	28f	Mid	-10 hit 1 ~+27 hit 2	~+57	~	~	~	~
287	jade	exdf3	(Reboomerang Down)	26, 59-64 (Full Screen: 47, 76-79)	26f	Low	-21 hit 1 ~+22 hit 2	~+52	~	~	~	~
288	jade	exbf3	(Shadow Glow)	1	1f	~	~	~	~	~	Projectile Invincibility On Frames: 2-93. Armor On Frames: 2-92	~
289	jade	exdb2	(Staff Smash)	31	31f	Overhead	0	70, +59 vs Tech Roll	~	~	Armor On Frames: 7-34	~
290	jade	exdf2	(Staff Slam)	19	19f	Mid	-11	7	~	~	~	~
291	jade	exdf4	(Eclipse Kick)	19 (Full Screen: 24)	19f	Special High	0	51, +33 vs Tech Roll	~	~	Armor On Frames: 2-22	~
292	jade	xray	(Staff Buster)	12 (Full Screen: 29)	12f	High	-68	15	~	~	Invincibility On Frames: 1-2. Projectile Invincibility On Frames 1-33. Armor On Frames: 3-23	~
293	jade	breaker	~	~	~	~	~	~+2, ~+1 vs Tech Roll	~	~	Data Reflects When Grounded vs Grounded Opponent	~
294	jax	1	~	8	8f	High	0	0	17	63	~	~
295	jax	12	~	10	10f	High	0	0	19	40	~	~
296	jax	123	~	30	30f	Mid	-11	0	28	39	11f Gap	~
297	jax	2	~	14	14f	Special High	-1	-2	22	21	~	~
298	jax	21	~	13	13f	Mid	0	4	23	21	~	~
299	jax	22	~	16	16f	Special High	-3	6	26	34	~	~
300	jax	2f2	~	17	17f	Overhead	-3	1	11	15	~	~
301	jax	2f2b1	~	12	12f	High	-12	37, +26 vs Tech Roll	~	~	~	~
302	jax	3	~	17	17f	Mid	0	4	21	21	~	~
303	jax	4	~	26	26f	Mid	-1	7	28	36	~	~
304	jax	d1	~	6	6f	Mid	-13	1, -1 vs Crouch	1	15, +13 vs Crouch	~	~
305	jax	d2	~	7	7f	High	-6	29, +22 vs Tech Roll	~	~	~	~
306	jax	d3	~	7	7f	Low	-7	3, +1 vs Crouch	2	12, +19 vs Crouch	~	~
307	jax	d4	~	12	12f	Low	0	12, +5 vs Crouch	26	32, +25 vs Crouch	~	~
308	jax	b1	~	15	15f	High	-5	2	14	21	~	~
309	jax	b12	~	17	17f	Overhead	-2	4	15	21	4f Gap	~
310	jax	b124	~	19	19f	Mid	0	50, +33 vs Tech Roll	18	66, +49 vs Tech Roll	4f Gap Between b12	~
311	jax	b4	~	22	22f	Low	-1	21, +18 vs Tech Roll	~	~	~	~
312	jax	f3	~	24	24f	Overhead	0	5	18	22	~	~
313	jax	f4	~	8	8f	Low	-17	-1	14	30	~	~
314	jax	f41	~	14	14f	High	-5	6	12	23	~	~
315	jax	f413	~	13	13f	Mid	0	34, +31 vs Tech Roll	~	~	This Move is Known to Have Random Block Advantage	~
316	jax	f414	~	12	12f	Low	-5	23, +19 vs Tech Roll	~	~	~	~
317	jax	throw	~	10	10f	Special High	Unblockable	8	~	~	Backthrow is +7 On Hit. All Slams are +7 On Hit	~
318	jax	db2	(Energy Wave)	22 (Full Screen: 47)	22f	Special High	-9	10	~	~	~	~
319	jax	df2	(Dash Punch)	12 (Max Range: 17)	12f	High	0	43, +26 vs Tech Roll	~	~	~	~
320	jax	db3	(Close Ground Pound)	41	41f	Mid	Unblockable	62, +63 vs Tech Roll	~	~	~	~
321	jax	df3	(Mid Ground Pound)	41	41f	Mid	Unblockable	62, +63 vs Tech Roll	~	~	~	~
322	jax	dbf3	(Far Ground Pound)	41	41f	Mid	Unblockable	62, +63 vs Tech Roll	~	~	~	~
323	jax	df1	(Gotcha Grab)	11	11f	High	0	44, +4 vs Tech Roll	~	~	~	~
324	jax	db1	(Air Gotcha Grab)	15	12f	High	~	12	~	~	~	~
325	jax	du4	(Overhead Smash)	28	28f	Overhead	0	58, +66 vs Tech Roll	~	~	~	~
326	jax	jthrow	(Back Breaker)	9	9f	~	0	26, +8 vs Tech Roll	~	~	~	~
327	jax	exdb2	(Assault Wave)	24, 35 (Full Screen: 59, 69)	24f	Mid	-2	19	~	~	~	~
328	jax	exdf2	(Dash Fist)	13, (Max Range: 16)	13f	High	0	6	~	~	Back Input Dash Fist is +12 On Hit	~
329	jax	exdb3	(Ground Quake)	48	48f	Mid	Unblockable	67, +68 vs Tech Roll (Knocked Down Opponent: ~+39, ~+35 vs Tech Roll)	~	~	~	~
330	jax	exdf3	(Ground Quake)	48	48f	Mid	Unblockable	67, +68 vs Tech Roll (Knocked Down Opponent: ~+39, ~+35 vs Tech Roll)	~	~	~	~
331	jax	exdbf3	(Ground Quake)	48	48f	Mid	Unblockable	67, +68 vs Tech Roll (Knocked Down Opponent: ~+39, ~+35 vs Tech Roll)	~	~	~	~
332	jax	exdf1	(Gotcha Beatdown)	11	11f	High	0	45, +3 vs Tech Roll	~	~	~	~
333	jax	exdb1	(Air Gotcha Blast)	15	15f	High	~	13	~	~	~	~
334	jax	exdu4	(Elite Smash)	26	26f	Overhead	0	7	~	~	~	~
335	jax	xray	(Briggs Bash)	36	36f	Mid	Unblockable	7	~	~	~	~
336	jax	breaker	~	~	~	~	~	~+11, ~+9 vs Tech Roll	~	~	Data Reflects When Grounded vs Grounded Opponent	~
337	johnnycage	1	~	8	8f	High	0	0	18	25	~	~
338	johnnycage	11	~	11 | 21	8f	High	0	16	16	22	~	~
339	johnnycage	111	~	13 | 38	8f	High	0	6	15	19	~	~
340	johnnycage	114	~	14 | 39	8f	Mid	0	5	21	24	~	~
341	johnnycage	11f1	~	13 | 38	8f	High	3	4	17	19	~	~
342	johnnycage	13	~	12 | 22	8f	Mid	0	7	26	28	~	~
343	johnnycage	132	~	27 | 50	8f	Special High?	0	19, +27 vs Tech Roll	~	~	1f Gap	~
344	johnnycage	2	~	9	9f	Special High	0	0	22	21	~	~
345	johnnycage	21	~	15 | 29	9f	Mid	0	0	26	33	~	~
346	johnnycage	21b4	~	25 | 55	9f	Low	-8	1	~	~	~	~
347	johnnycage	21f2	~	22 | 52	9f	Overhead	-3	55, +44 vs Tech Roll	~	~	~	~
348	johnnycage	3	~	9	9f	Mid	0	6	26	31	~	~
349	johnnycage	4	~	9	9f	Mid	-3	4	25	33	~	~
350	johnnycage	44	~	15 | 26	9f	Mid	-1	0	22	23	~	~
351	johnnycage	d1	~	6	6f	Mid	-13	1, -1 vs Crouch	1	15, +13 vs Crouch	~	~
352	johnnycage	d2	~	7	7f	High	-6	30, +22 vs Tech Roll	~	~	~	~
353	johnnycage	d3	~	7	7f	Low	-7	3, +10 vs Crouch	2	12, +19 vs Crouch	~	~
354	johnnycage	d4	~	12	12f	Low	0	12, +5 vs Crouch	26	32, +25 vs Crouch	~	~
355	johnnycage	b2	~	16-64	16-64f	Mid	-11	-1 (Max Charge: +52, +43 vs Tech Roll)	~	~	Unblockable Crumple State Max Charge	~
356	johnnycage	b3	~	11	11f	Mid	-15	54, +51 vs Tech Roll	~	~	~	~
357	johnnycage	b4	~	22	22f	Low	3	28, +25 vs Tech Roll	~	~	~	~
358	johnnycage	f2	~	16, 35	16f	Mid, High	-16	8	21	14	~	~
359	johnnycage	f3	~	9	9f	Mid	0	3	21	16	~	~
360	johnnycage	f32	~	15 | 31	9f	Special High	0	7	25	31	~	~
361	johnnycage	f33	~	14 | 30, 38	9f	Special High	-4	4	23	28	~	~
362	johnnycage	f33b3	~	17 | 61	9f	Overhead	0	5	24	27	~	~
363	johnnycage	f4	~	28	28f	Overhead	0	62, +50 vs Tech Roll	~	~	~	~
364	johnnycage	throw	~	10	10f	Special High	Unblockable	?	~	~	~	~
365	johnnycage	df2	(Low Forceball)	19 (Full Screen: 46)	19f	Mid	-23	-4	~	~	~	~
366	johnnycage	db2	(High Forceball)	19 (Full Screen: 52)	19f	High	-23	-4	~	~	~	~
367	johnnycage	db3	(Flipkick)	9	9f	Mid	-12	23, +4 vs Tech Roll	~	~	~	~
368	johnnycage	bf4	(Shadowkick)	8	8f	Special High	-29	17, +25 vs Tesh Roll	~	~	~	https://i.imgur.com/3uFGZGE.jpg
369	johnnycage	bd1	(Nut Punch)	18	18f	Mid	-23	39	~	~	~	~
370	johnnycage	exdf2	(Double Low Ball)	19, 39 (Full Screen: 46, 56)	19f	High	5	24	~	~	~	~
371	johnnycage	exdb2	(Double High Ball)	23, 42 (Full Screen: 56, 60)	23f	High	5	24	~	~	~	~
372	johnnycage	exdb3	(Ultra Flipkick)	9, 58	9f	Mid	-36, -85 if 2nd Hit Whiiffs	51, +15 vs Tech Roll	~	~	~	~
373	johnnycage	exbf4	(Eclipse Kick)	8 (Full Screen: 21)	8f	Mid	-29 to -20	17 to +25, +25 to +33 vs Tech Roll	~	~	Armor On Frames: 2-14	~
374	johnnycage	exbd1	(Nutcracker)	18	18f	Mid	-16	46	~	~	Invincibility On Frames: 2-18	~
375	johnnycage	xray	(Ball Buster)	2	2f	~	~	32	~	~	Active for 67f. Invincibility On Frames: 1-2	~
376	johnnycage	breaker	~	~	~	~	~	~+6, ~+5 vs Tech Roll	~	~	Data Reflects When Grounded vs Grounded Opponent	~
377	kabal	1	~	13	13f	High	0	0	14	20	NDC On Block: -10. EXNDC On Block: -5	~
378	kabal	11	~	12	13f	High	-3	8	14	25	NDC On Block: -3. EXNDC On Block: +2	~
379	kabal	111	~	16	13f	Mid	-2	10	25	37	NDC On Block: +8. EXNDDC On Block: +13. 2f Gap	~
380	kabal	11b4	~	17	13f	Low	-10	9	18	37	NDC On Block: +1. EXNDC On Block: +6. 3f Gap	~
381	kabal	11b43	~	17	13f	Mid	-1	38, +6 vs Tech Roll	~	~	3f Gap Between 1b4	~
382	kabal	2	~	9	9f	High	0	7	26	25	NDC On Block: +10. EXNDC On Block: +15	~
383	kabal	21	~	12	9f	High	0	9	18	30	NDC On Block: -6. EXNDC On Block: -1	~
384	kabal	212	~	17	9f	Overhead	-12	41, +45 vs Tech Roll	~	~	~	~
385	kabal	3	~	17	17f	High	-4	7	20	31	NDC On Block: +3. EXNDC On Block: +8	~
386	kabal	4	~	12	17f	High	-5	2	16	25	NDC On Block: -1. EXNDC On Block: +4	~
387	kabal	d1	~	7	7f	Mid	-13	1, -1 vs Crouch	2	15, +13 vs Crouch	~	~
388	kabal	d2	~	11	11f	High	-4	34, +27 vs Tech Roll	~	~	~	~
389	kabal	d3	~	7	7f	Low	-7	3, +10 vs Crouch	2	12, +19 vs Crouch	~	~
390	kabal	d4	~	12	12f	Low	-2	11, +4 vs Crouch	15	28, +21 vs Crouch	NDC On Block: -2 EXNDC On Block: +3	~
391	kabal	b1	~	13	13f	Mid?	-3	6	18	27	NDC On Block: +1. EXNDC On Block: +6	~
392	kabal	b12	~	23	13f	Mid	-16	3	19	38	NDC On Block: +2. EXNDC On Block: +7. 4f Gap	~
393	kabal	b121	~	13	13f	Mid	0	57, +50 vs Tech Roll	~	~	4f Gap Between b12	~
394	kabal	b2	~	15	15f	Mid	0	3	19	19	NDC On Block: -1. EXNDC On Block: +4	~
395	kabal	b4	~	11	11f	Low	-2	20	~	~	~	~
396	kabal	f3	~	13	13f	Mid	-6	8	17	31	NDC On Block: 0. EXNDC On Block: +5	~
397	kabal	f32	~	15	13f	Mid	-4	37, +24 vs Tech Roll	19	60, +47 vs Tech Roll	NDC On Block: +2. EXNDC On Block: +7	~
398	kabal	f4	~	9	9f	Mid	-11	37, +29 vs Crouch	12	64, +56 vs Crouch	NDC On Block: -5. EXNDC On Block: 0	~
399	kabal	f41+2	~	22	9f	Overhead	-10	38, +29 vs Tech Roll	~	~	10f Gap	~
400	kabal	throw	~	10	10f	Special High	Unblockable	7	~	~	~	~
401	kabal	bb1	(Gas Blast)	10 (Close: 14 | Full Screen: 47)	10f	Special High	-25	-7	~	~	~	~
402	kabal	jbb1	(Air Gas Blast)	6 (Close: 9 | Full Screen: 40)	6f	Special High	~+5	?	~	~	~	~
403	kabal	bf4	(Nomad Dash)	18 (Full Screen: 30)	18f	Mid	-31	161	~	~	~	~
404	kabal	bb3	(Buzzsaw)	9 (Close: 13 | Full Screen: 40)	9f	Low	-12	7, +3 vs Tech Roll	~	~	~	~
405	kabal	db2	(Tornado Slam)	21	21f	Overhead	-9	7	~	~	~	~
406	kabal	exbb1	(Vapor Blast)	10 (Close: 12 | Full Screen: 45)	10f	Mid	-24	-6	~	~	~	~
407	kabal	exjbb1	(Air Vapor Blast)	6 (Close: 8 | Full Screen: 38)	6f	Mid	~+5	?	~	~	~	~
408	kabal	exbf4	(Nomad Charge)	13 (Full Screen: 25)	13f	Mid	-31	161	~	~	~	~
409	kabal	exbb3	(Saw Blades)	9 (Close: 13 | Full Screen: 40)	9f	Low	-6	15, +12 vs Tech Roll	~	~	~	~
410	kabal	exdb2	(Cyclone Slam)	21	21f	Overhead	-9	11	~	~	~	~
411	kabal	xray	(Kabal's Deep)	23 (Full Screen: 31)	23f	Mid	-29	12	~	~	~	~
412	kabal	breaker	~	~	~	~	~	~+12, ~+11 vs Tech Roll	~	~	Data Reflects When Grounded vs Grounded Opponent	~
413	kano	1	~	11	11f	High	0	0	19	65	~	~
414	kano	11	~	13	11f	High	0	11	19	25	~	~
415	kano	112	~	13	11f	High	0	4	12	15	~	~
416	kano	2	~	12	12f	High	-9	5	14	28	~	~
417	kano	21	~	13	12f	Mid	-4	3	17	23	~	~
418	kano	212	~	13	12f	Mid	0	58, +46 vs Tech Roll	~	~	~	~
419	kano	3	~	18	18f	Mid	-4	7	9	20	~	~
420	kano	33	~	6	18f	High	-11	2	4	17	~	~
421	kano	4	~	15	15f	High	-12	3	16	31	~	~
422	kano	d1	~	6	6f	Mid	-13	1, -1 vs Crouch	1	15, +13 vs Crouch	~	~
423	kano	d2	~	11	11f	High	-2	33, +26 vs Tech Roll	~	~	~	~
424	kano	d3	~	7	7f	Low	-7	3, +10 vs Crouch	2	12, +19 vs Crouch	~	~
425	kano	d4	~	12	12f	Low	0	12, +5 vs Crouch	26	32, +25 vs Crouch	~	~
426	kano	b1	~	12	12f	Mid	0	7	16	19	~	~
427	kano	b11	~	13	12f	Mid	-16	-1	17	32	Gap?	~
428	kano	b112	~	20	12f	Mid	0	52, +41 vs Tech Roll	~	~	Gap Between B11? Gap?	~
429	kano	b12	~	17	12f	High	-2	4	22	28	~	~
430	kano	b2	~	23	23f	Overhead	-16	23, +27 vs Tech Roll	8	47, +51 vs Tech Roll	~	~
431	kano	b23	~	13	23f	Mid	-4	48, +31 vs Tech Roll	16	68, +51 vs Tech Roll	Gap?	~
432	kano	b2f1	~	13	23f	Mid	-11	48, +31 vs Tech Roll	19	78, +61 vs Tech Roll	~	~
433	kano	b4	~	22	22f	Low	1	23, +20 vs Tech Roll	~	~	~	~
434	kano	f1	~	14	14f	High	0	5	15	15	~	~
435	kano	f11	~	14	14f	High	0	12	20	27	~	~
436	kano	f12	~	15	14f	High	0	8	26	32	~	~
437	kano	f3	~	18	18f	Low	-15	7	17	39	~	~
438	kano	f33	~	15	18f	Mid	-20	36, +44 vs Tech Roll	~	~	~	~
439	kano	f3b2	~	22	18f	Mid	-4	60, +48 vs Tech Roll	~	~	~	~
440	kano	f4	~	27	27f	Mid	0	50, +33 vs Tech Roll	21	69, +52 vs Tech Roll	~	~
441	kano	throw	~	10	10f	Special High	Unblockable	7	~	~	Backthrow is +9 On Hit	~
442	kano	fdbf	(Ball)	7 (Full Screen: 25)	7f	Mid	-35	11, -6 vs Tech Roll	~	~	~	~
443	kano	jfdbf	(Down Ball)	6 (Max Range: 19)	6f	Mid	~-34	6, -11 vs Tech Roll	~	~	~	~
444	kano	df2	(Up Ball)	8	8f	Mid	-13	35, +18 vs Tech Roll	~	~	~	~
445	kano	df1	(Choke)	10	10f	High	-1	-3	~	~	~	~
446	kano	db2	(Knife Throw)	17 (Full Screen: 45)	17f	Special High	-10	10	~	~	~	~
447	kano	jthrow	(Air Throw)	9	9f	~	Unblockable	12	~	~	~	~
448	kano	exfdbf	(Kano Ball)	7-306 (Full Screen: 25-320)	7-306f	Mid	-35	5, -12 vs Tech Roll	~	~	~	~
449	kano	exjfdbf	(Downward Ball)	6 (Max Range: 19)	6f	Mid	~-34	12	~	~	~	~
450	kano	exdf2	(Uprise Ball)	8 (Full Screen: 33)	8f	Mid	-37	13, -1 vs Tech Roll	~	~	~	~
451	kano	exdf1	(Kano Choke)	10	10f	High	-1	7	~	~	~	~
452	kano	exdb2	(Knife Toss)	17 (Full Screen: 47)	17f	High	-3	17	~	~	~	~
453	kano	xray	(Just The Tip)	29	29f	Mid	Unblockable	12	~	~	~	~
454	kano	breaker	~	~	~	~	~	~+12, ~+11 vs Tech Roll	~	~	Data Reflects When Grounded vs Grounded Opponent	~
455	kenshi	1	~	10	10f	High	0	0	19	25	~	~
456	kenshi	11	~	16 | 27	10f	Mid	-2	0	11	31	~	~
457	kenshi	111	~	12 | 48	10f	Mid	0	14	23	37	1f Gap	~
458	kenshi	112	~	18 | 54	10f	Mid	-13	36, +44 vs Tech Roll	25	74, +82 vs Tech Roll	7f Gap	~
459	kenshi	114	~	12 | 48	10f	Mid	-4	44, +27 vs Tech Roll	23	71, +54 vs Tech Roll	1f Gap	~
460	kenshi	2	~	12	12f	Special High	0	8	25	24	~	~
461	kenshi	21	~	24 | 38	12f	Mid	0	3	22	16	~	~
462	kenshi	21b2	~	7 | 50	12f	Overhead	0	55, +44 vs Tech Roll	5	56, +45 vs Tech Roll	~	~
463	kenshi	21f4	~	11 | 54	12f	Low	-9	0	~	~	~	~
464	kenshi	3	~	12	12f	Mid	0	5	25	26	~	~
465	kenshi	4	~	18	18f	Mid	-14	4	16	34	~	~
466	kenshi	d1	~	6	6f	Mid	-13	1, -1 vs Crouch	1	15, +13 vs Crouch	~	~
467	kenshi	d2	~	14	14f	High	3	37, +30 vs Tech Roll	~	~	~	~
468	kenshi	d3	~	7	7f	Low	-7	3, +10 vs Crouch	2	12, +19 vs Crouch	~	~
469	kenshi	d4	~	12	12f	Low	0	11, +4 vs Crouch	25	31, +24 vs Crouch	~	~
470	kenshi	b2	~	19	19f	Overhead	0	45, +32 vs Tech Roll	~	~	~	~
471	kenshi	b4	~	19	19f	Low	0	24, +16 vs Tech Roll	~	~	~	~
472	kenshi	f2	~	12	12f	Mid	-10	4	25	39	~	~
473	kenshi	f22	~	20 | 34	12f	Mid	-13	1	26	40	~	~
474	kenshi	f22b1	~	17 | 52	12f	Mid	-4	68, +44 vs Tech Roll	~	~	~	~
475	kenshi	f22b2	~	22 | 57	12f	Overhead	0	45, +32 vs Tech Roll	~	~	~	~
476	kenshi	f3	~	15	15f	Low	-9	4	15	28	Ghost Hitbox	~
477	kenshi	f32	~	19 | 39	15f	Mid	-2	39, +22 vs Tech Roll	14	55, +38 vs Tech Roll	4f Gap	~
478	kenshi	f4	~	23	23f	Mid	-11	37, +24 vs Tech Roll	~	~	~	~
479	kenshi	u4	~	26	26f	Mid	-13	45, +53 vs Tech Roll	~	~	~	~
480	kenshi	throw	~	10	10f	Special High	Unblockable	7	~	~	Backthrow is +11 On Hit	~
481	kenshi	bf2	(Spirit Charge)	8 (Max Range: 14)	8f	Mid	-10	19, -13 vs Tech Roll	~	~	~	https://i.imgur.com/wkbUKdT.jpg
482	kenshi	db1	(Rising Karma)	14	14f	Mid	-17	58, +46 vs Tech Roll	~	~	~	~
483	kenshi	db4	(Close Telekenetic Slash)	25	25f	Overhead	-7	1 (Airborne Opponent: ~+20, ~-4 vs Tech Roll)	~	~	~	~
484	kenshi	df4	(Mid Telekenetic Slash)	25	25f	Overhead	-7	1 (Airborne Opponent: ~+20, ~-4 vs Tech Roll)	~	~	~	~
485	kenshi	dbf4	(Far Telekenetic Slash)	25	25f	Overhead	-7	1 (Airborne Opponent: ~+20, ~-4 vs Tech Roll)	~	~	~	~
486	kenshi	bf3	(Tele-Flurry)	21	21f	High	-3	6	~	~	~	~
487	kenshi	db2	(Blade Reflect)	6	6f	~	~	~	~	~	Active for 15f. Reflects Projectiles	~
488	kenshi	exbf2	(Spirit Vengeance)	8, 24	8f	Mid	7	46, +35 vs Tech Roll	~	~	Armor On Frames: 2-17	https://i.imgur.com/tTanDOw.jpg
489	kenshi	exdb1	(Karma Eruption)	14, 38	14f	Mid	0	54, +58 vs Tech Roll	~	~	Armor On Frames: 2-22	~
490	kenshi	exdb4	(Close Telekenetic Blade)	25, 43	25f	Overhead	-31	49, +32 vs Tech Roll	~	~	~	~
491	kenshi	exdf4	(Mid Telekenetic Blade)	25, 43	25f	Overhead	-31	49, +32 vs Tech Roll	~	~	~	~
492	kenshi	exdbf4	(Far Telekenetic Blade)	25, 43	25f	Overhead	-31	49, +32 vs Tech Roll	~	~	~	~
493	kenshi	exbf3	(Tele-Beatdown)	21, 28, 44	21f	Mid?	-3	26, +22 vs Tech Roll	~	~	Armor On Frames: 2-24	~
494	kenshi	exdb2	(Blade Absorb)	6	6f	~	~	~	~	~	Active for 15f. Reflect Projectiles	~
495	kenshi	xray	(Soul Blade)	25 (Full Screen: 42)	25f	Mid	-4	17	~	~	Invincibility On Frames: 1-2. Armor On Frames: 3-47	~
496	kenshi	breaker	~	~	~	~	~	~+14	~	~	Data Reflects When Grounded vs Grounded Opponent	~
497	kitana	1	~	14	14f	Special High	0	0	16	22	~	~
498	kitana	11	~	10 | 28	14f	Mid	0	0	16	31	~	~
499	kitana	112	~	14 | 46	14f	Mid	-13	13	19	45	~	~
500	kitana	2	~	11	11f	Special High	0	11	24	34	~	~
501	kitana	21	~	15 | 29	11f	Mid	-5	5	16	27	~	~
502	kitana	212	~	13 | 53	11f	Mid	-4	34, +3 vs Tech Roll	~	~	~	~
503	kitana	3	~	12	12f	Mid	0	8	23	27	~	~
504	kitana	33	~	14 | 30	12f	Mid	0	10	25	20	~	~
505	kitana	333	~	9 | 41	12f	High	-2	10	~	~	~	~
506	kitana	4	~	17	17f	Mid	-7	13	26	45	~	~
507	kitana	d1	~	6	6f	Mid	-15	-1, -3 vs Crouch	1	15, +13 vs Crouch	~	~
508	kitana	d2	~	15	15f	High	2	36, +29 vs Tech Roll	~	~	~	~
509	kitana	d3	~	7	7f	Low	-7	3, +10 vs Crouch	2	12, +19 vs Crouch	~	~
510	kitana	d4	~	15	15f	Low	0	16, +9 vs Crouch	26	32, +25 vs Crouch	~	~
511	kitana	b1	~	20	20f	Mid	-8	7	19	34	~	~
512	kitana	b12	~	27 | 48	20f	Overhead	0	50, +57 vs Tech Roll	~	~	8f Gap	~
513	kitana	b2	~	22	22f	Mid	-15	40, +28 vs Tech Roll	14	69, +57 vs Tech Roll	~	~
514	kitana	b3	~	13	13f	Mid	-3	12	19	34	~	~
515	kitana	b33	~	12 | 26	13f	Mid	0	4	25	26	~	~
516	kitana	b4	~	15	15f	Low	-7	15, +12 vs Tech Roll	~	~	~	~
517	kitana	f2	~	18	18f	Mid	-8	-7	24	25	~	~
518	kitana	f21	~	17 | 38	18f	Mid	-1	56, +49 vs Tech Roll	~	~	Block Advantage Can Change Depending When 1 Hits	~
519	kitana	f3	~	18	18f	Mid	0	12	15	24	~	~
520	kitana	f31	~	10 | 40, 49	18f	Mid	-7	6	19	32	~	~
521	kitana	f312	~	22 | 79	18f	Mid	-4	52, +28 vs Tech Roll	~	~	3f Gap	~
522	kitana	f4	~	17	17f	High	-6	37	18	61	~	~
523	kitana	f41	~	17 | 43	17f	Overhead	0	59, +48 vs Tech Roll	15	38	~	~
524	kitana	f43	~	23 | 49	17f	High	0	49, +32 vs Tech Roll	~	~	5f Gap	~
525	kitana	f4b4	~	22 | 48	17f	Low	-1	23, +16 vs Tech Roll	~	~	4f Gap	~
526	kitana	throw	~	10	10f	Special High	Unblockable	9	~	~	Backthrow is +7 On Hit	~
527	kitana	df1	(Fan Toss)	24, 31 (Full Screen: 46, 53)	24f	Special High	-2	18	~	~	~	~
528	kitana	jdf1	(Air Fan Toss)	13 (Full Screen: 39)	13f	Special High	~-2	~-8	~	~	~	~
529	kitana	bb2	(Upraise)	24	24f	Special High	-50	107, +103 vs Tech Roll	~	~	~	~
530	kitana	df2	(Cutting Fan)	14, 22	14f	Special High	0	41	~	~	-3 On Block if Only First Hit Connects	~
531	kitana	db1	(Square Boost)	20 (Max Range: 35)	20f	Mid	~-5	~+35, ~+2 vs Tech Roll	~	~	~	~
532	kitana	jdb1	(Air Square Boost)	18 (Max Range: 33)	18f	Mid	~-5	?	~	~	~	~
533	kitana	db3	(Pretty Kick)	18, 28	18f	High	-4	8	~	~	~	~
534	kitana	db4	(Fake Out Kick)	31	31f	Low	0	19, +15 vs Tech Roll	~	~	Can Be +8 On Block For Unknown Reasons	~
535	kitana	exdf1	(Charged Fan)	22, 64 (Full Screen: 39, 76)	22f	Special High	-7	14	4	64	~	~
536	kitana	exjdf1	(Air Charged Fan)	13 (Full Screen: 39)	13f	Special High	?	?	?	?	~	~
537	kitana	exbb2	(Uplift)	10	10f	Special High	-50	107, +103 vs Tech Roll	~	~	~	~
538	kitana	exdf2	(Fan Dice)	14, 22, 46, 55	14f	Special High	0	45, +53 vs Tech Roll	~	~	~	~
539	kitana	exdb1	(Square Wave)	20 (Full Screen: 36)	20f	Mid	~-5	~+35, ~+2 vs Tech Roll	~	~	Armor On Frames: 20-30	~
540	kitana	exjdb1	(Air Square Wave)	18 (Full Screen: 34)	18f	Mid	~-5	?	~	~	Armor On Frames: ?	~
541	kitana	exdb3	(Pretty Legs)	18, 28, 35	18f	Special High	-11	38, +20 vs Tech Roll	~	~	~	~
542	kitana	xray	(Fan-Tastic)	22 (Full Screen: 40)	40f	Mid	-30	24, +21 vs Tech Roll	~	~	Invincibility On Frames: 1-2. Armor On Frames: 3-32	~
543	kitana	jxray	(Air Fan-Tastic)	12 (Full Screen: 33)	12f	Mid	-30	24, +21 vs Tech Roll	~	~	Invincibility On Frames: 1-2. Armor On Frames: 3-32	~
544	kitana	breaker	~	~	~	~	~	~+23, ~+22 vs Tech Roll	~	~	Data Reflects When Grounded vs Grounded Opponent	~
545	kratos	1	~	12	12f	~	0	0	26	25	HDC On Block: +8	~
546	kratos	11	~	22 | 35	12f	~	0	4	24	21	HDC On Block: +6	~
547	kratos	112	~	18 | 56	12f	~	0	10	26	32	HDC On Block: +8	~
548	kratos	2	~	12	12f	~	-1	5	26	32	HDC On Block: +8	~
549	kratos	21	~	19 | 32	12f	~	0	6	26	32	HDC On Block: +8	~
550	kratos	212	~	33 | 66	12f	~	-12	37, +26 vs Tech Roll	27	76, +65 vs Tech Roll	HDC On Block: +9. Gap?	~
551	kratos	3	~	16	16f	~	-9	4	28	31	~	~
552	kratos	4	~	17	17f	~	-10	38, +25 vs Tech Roll	~	~	~	~
553	kratos	d1	~	8	8f	~	-19	-5, -7 vs Crouch	1	15, +13 vs Crouch	~	~
554	kratos	d2	~	20	20f	~	6	43, +36 vs Tech Roll	~	~	~	~
555	kratos	d3	~	13	13f	~	-14	-4, +3 vs Crouch	3	13, +20 vs Crouch	~	~
556	kratos	d4	~	12	12f	~	0	12, +5 vs Crouch	26	32, +25 vs Crouch	HDC On Block: +8	~
557	kratos	b1	~	21	21f	~	-2	8	19	29	HDC On Block: +1	~
558	kratos	b12	~	25 | 54	21f	~	-20	7, -53 vs Tech Roll	~	~	~	~
559	kratos	b1b4	~	25 | 54	21f	~	0	25, +17 vs Tech Roll	~	~	~	~
560	kratos	b2	~	21	21f	~	-9	36, +43 (Charged: +30, +18 vs Tech Roll)	~	~	~	~
561	kratos	b21	~	15 | 111	21f	~	~	~	~	~	~	~
562	kratos	b22	~	23 | 119	21f	~	~	~	~	~	~	~
563	kratos	b23	~	11 | 107	21f	~	~	~	~	~	~	~
564	kratos	b24	~	8 | 104	21f	~	~	~	~	~	~	~
565	kratos	b4	~	25	25f	~	0	25, +17 vs Tech Roll	~	~	~	~
566	kratos	f1	~	23	23f	~	0	3	25	27	~	~
567	kratos	f14	~	23 | 48	23f	~	-40	6, -26 vs Tech Roll	~	~	~	~
568	kratos	f2	~	30	30f	~	-5	11	24	40	~	~
569	kratos	f21	~	21 | 54	30f	~	-2	37, +24 vs Tech Roll	~	~	~	~
570	kratos	f22	~	31 | 64	30f	~	0	7	28	25	~	~
571	kratos	f221	~	16 | 79	30f	~	-33	8, 0 vs Tech Roll	1	42, +34 vs Tech Roll	~	~
572	kratos	f4	~	13	13f	~	-5	4	13	23	~	~
573	kratos	f42	~	21 | 41	13f	~	-9	36, +43 vs Tech Roll	~	~	~	~
574	kratos	throw	~	10	10f	~	Unblockable	7	~	~	Backthrow is +8 On Hit	~
575	kratos	df2	(Apollo's Bow)	25, 36 (Full Screen: 47, 58)	25f	~	-1 (Full Screen: +21)	18 (Full Screen: +44)	~	~	~	~
576	kratos	db2	(Head Of Helios)	23	23f	~	-28	34	~	~	~	~
577	kratos	bf4	(Hermes Dash)	25-145 (Full Screen: 41-161)	25-145f	~	-47	5, -6 vs Tech Roll	~	~	~	~
578	kratos	db1	(Golden Fleese)	1	1f	~	~	~	~	~	Active For 28f	~
579	kratos	df3	(Zues' Rage)	17	17f	~	-15	26, +34 vs Tech Roll (Follow Up: +18, -10 vs Tech Roll)	~	~	~	~
580	kratos	exdf2	(Apollo's Inferno)	20, 31, 40 (Full Screen: 41, 53, 63)	20f	~	3 (Full Screen: +16)	13 (Full Screen: +38)	~	~	~	~
581	kratos	exdb2	(Helios Flash)	49	49f	~	-21	102	~	~	~	~
582	kratos	exbf4	(Hermes Rush)	25-145 (Full Screen: 41-161)	25f	~	-47 (Full Screen: -31)	5, -6 vs Tech Roll (Full Screen: +21, +10 vs Tech Roll)	~	~	~	~
583	kratos	exdb1	(Argos Ram)	1	1f	~	~	~	~	~	Active For 28f	~
584	kratos	exdf3	(Revenge Of Olympus)	17	17f	~	-15	26, +34 vs Tech Roll (1st Follow Up: +18, -10 vs Tech Roll, 2nd Follow Up: +7, +11 vs Tech Roll)	~	~	~	~
585	kratos	xray	(Nemean Cestus)	19	19f	~	-7	7	~	~	Invincibility On Frames: 1-2. Armor On Frames: 3-33	~
586	kratos	breaker	~	~	~	~	~	~+23, ~+22 vs Tech Roll	~	~	Data Reflects When Grounded vs Grounded Opponent	~
587	kunglao	1	~	10	10f	High	0	0	25	33	~	~
588	kunglao	11	~	13 | 25	10f	Mid	0	9	16	19	~	~
589	kunglao	112	~	11 | 40	10f	Special High?	0	7	23	19	~	~
590	kunglao	1121	~	12 | 56	10f	High	0	6	25	19	~	~
591	kunglao	2	~	7	7f	High	0	0	22	27	~	~
592	kunglao	21	~	11 | 23	7f	Mid	0	7	22	21	~	~
593	kunglao	21212	~	8, 15 | 36, 39, 41, 44, 68	7f	Mid	-13	36, +19 vs Tech Roll	11	24	4f Gap	~
594	kunglao	2121212	~	24 | 77	7f	Overhead	-26	8, -3 vs Tech Roll	~	~	13f Gap	~
595	kunglao	24	~	11 | 23	7f	Low	-1	4	21	26	~	~
596	kunglao	241+2	~	25 | 54	7f	Overhead	-11	15	~	~	4f Gap	~
597	kunglao	231+3	~	~	7f	~	~	8	~	~	~	~
598	kunglao	241+32	~	3f Window	7f	~	~	34, +2 vs Tech Roll	~	~	~	~
599	kunglao	241+34	~	6f Window	7f	~	~	8	~	~	~	~
600	kunglao	3	~	10	10f	Mid	0	4	26	26	~	~
601	kunglao	4	~	22	22f	Mid	-6	2	25	33	~	~
602	kunglao	d1	~	7	7f	Mid	-13	1, -1 vs Crouch	-1	13, +11 vs Crouch	~	~
603	kunglao	d2	~	7	7f	High	-3	28, +21 vs Tech Roll	~	~	~	~
604	kunglao	d3	~	9	9f	Low	-7	3, +10 vs Crouch	3	13, +20 vs Crouch	~	~
605	kunglao	d4	~	12	12f	Low	0	12, +5 vs Crouch	26	32, +25 vs Crouch	~	~
606	kunglao	b1	~	26, 32	26f	Mid	0	3	21	18	~	~
607	kunglao	b1f1	~	8 | 46, 52	26f	Mid	0	34, +38 vs Tech Roll	25	32	~	~
608	kunglao	b3	~	11	11f	Low	-14	-1	17	30	~	~
609	kunglao	b33	~	13 | 27	11f	Mid?	-8	8	19	36	~	~
610	kunglao	b333	~	13 | 41	11f	High	-5	50, +33 (+38 If Only Last Hit Connects)	?	?	~	~
611	kunglao	b4	~	19	19f	Low	-10	11, +8 vs Tech Roll	~	~	~	~
612	kunglao	f2	~	22	22f	Overhead	-9	1	~	~	~	~
613	kunglao	f3	~	18	18f	Mid	-4	0	13	14	~	~
614	kunglao	f4	~	27	27f	Mid	0	52, +19 vs Tech Roll	~	~	~	~
615	kunglao	throw	~	10	10f	Special High	Unblockable	8	~	~	Backthrow is +7 On Hit	~
616	kunglao	bf2	(Hat Toss)	21 (Full Screen: 47)	21f	High	-13	6	~	~	Can be aimed Mid	~
617	kunglao	db2	(Ground Hat)	19 (Full Screen: 46)	19f	Low	-12	2	~	~	~	~
618	kunglao	df1	(Spin)	6	6f	Mid	-27	82, +71 vs Tech Roll	~	~	~	~
619	kunglao	jd4	(Dive Kick)	6 (Max Range: 23)	6f	Mid	~-37	~+53, ~+35 vs Tech Roll	~	~	~	~
620	kunglao	du	(Teleport)	25-31	25-31f	~	~	~	~	~	Duration: 56-62f (11-17f in Front, 45f Behind)	~
621	kunglao	du1	(Teleport 1)	10	10f	High	Unblockable	-4	~	~	~	~
622	kunglao	du2	(Teleport 2)	23	23f	Overhead	0	~+70, ~+60 vs Tech Roll	~	~	~	~
623	kunglao	du3	(Teleport 3)	5	5f	High	0	5 to +15	7 to +10	~+15	~	~
624	kunglao	du4	(Teleport 4)	9	9f	Special High	0	~+50, ~+30 vs Tech Roll	~	~	~	~
625	kunglao	exbf2	(Ultimate Hat)	25 (Full Screen: 43)	25f	High	-11	39	~	~	~	~
626	kunglao	exdb2	(Grinding Hat)	19 (Full Screen: 57)	19f	Low	-12	20	~	~	~	~
627	kunglao	exdf1	(Cyclone)	9, 15, 29	9f	Mid	-13	60, +49 vs Tech Roll	~	~	On Block: -27 if Last Hit Whiffs, -33 if Only First Hit Lands	~
628	kunglao	exjd4	(Multi Kick)	6, 11, 16	6f	Mid	~-37	~+50, ~+40 vs Tech Roll	~	~	On Block: ~+13 in Only 1 or 2 Kicks Land (Instant)	~
629	kunglao	exdu	(Double Port)	50	50f	~	~	~	~	~	Duration: 81f (17f in Front, 19f Behind, 45f in Front). Armor On Frames: 2-71, 2-92 On Throw	~
630	kunglao	xray	(Fist Of Shaolin)	6	6f	Mid	-17	77, +66 vs Tech Roll	~	~	-6 On Block with Short Animation. Invincibility On Frames 1-2. Armor On Frames 3-26	~
631	kunglao	breaker	~	~	~	~	~	~-5, ~-6 vs Tech Roll	~	~	Data Reflects When Grounded vs Grounded Opponent	~
632	liukang	1	~	9	9f	High	0	0	14	20	~	~
633	liukang	11	~	8	9f	Mid	-6	2	17	25	~	~
634	liukang	111	~	11	9f	High	0	4	26	≥+28	~	~
635	liukang	112	~	18	9f	Mid	-22	36, +4 vs Tech Roll	22	60, +28 vs Tech Roll	1f Gap	~
636	liukang	12	~	10	9f	High	-1	3	16	19	~	~
637	liukang	12b1	~	17	9f	High	0	62, +50 vs Tech Roll	~	~	1f Gap	~
638	liukang	2	~	8	8f	High	0	0	19	17	~	~
639	liukang	21	~	10	8f	Mid	-5	1	16	22	~	~
640	liukang	213	~	15	8f	Overhead	0	45, +49 vs Tech Roll	~	~	~	~
641	liukang	3	~	13	13f	Mid	-5	6	19	≥+28	~	~
642	liukang	33	~	15	13f	Special High?	-5	1	19	24	~	~
643	liukang	334	~	18	13f	Mid	0	43, +26 vs Tech Roll	~	~	~	~
644	liukang	4	~	22	22f	Mid	-3	3	18	24	~	~
645	liukang	d1	~	10	10f	Mid	-9	5, +3 vs Crouch	5	19, +17 vs Crouch	~	~
646	liukang	d2	~	9	9f	High	-3	30, +23 vs Tech Roll	~	~	~	~
647	liukang	d3	~	7	7f	Low	-7	3, +10 vs Crouch	2	12, +19 vs Crouch	~	~
648	liukang	d4	~	12	12f	Low	0	12, +5 vs Crouch	26	≥+28, +25 vs Crouch	~	~
649	liukang	b1	~	14	14f	Mid	-3	39, +21 vs Tech Roll	24	65, +48 vs Tech Roll	~	~
650	liukang	b2	~	15	15f	Mid	0	4	21	19	~	~
651	liukang	b23	~	18	15f	Mid	0	48, +31 vs Tech Roll	24	72, +55 vs Tech Roll	~	~
652	liukang	b2b3	~	15	15f	Low	0	4	24	20	This Move is Known to Have Random Block Advantage	~
653	liukang	b3	~	10	10f	Low	-13	3	18	≥+28	~	~
654	liukang	b31	~	14	10f	Special High?	-1	2	18	21	~	~
655	liukang	b312	~	16	10f	Mid	0	44, +47 vs Tech Roll	~	~	This Move is Known to Have Random Block Advantage	~
656	liukang	b4	~	16	16f	Low	0	22, +19 vs Tech Roll	~	~	~	~
657	liukang	f1	~	10	10f	Mid	-5	1	16	22	~	~
658	liukang	f12	~	12	10f	Mid	0	6	17	17	~	~
659	liukang	f121	~	14	10f	Special High	0	44, +13 vs Tech Roll	25	64	~	~
660	liukang	f2	~	17	17f	Mid	0	2	26	23	~	~
661	liukang	f24	~	17	17f	Special High	0	8	25	≥+28	~	~
662	liukang	f3	~	20	20f	Overhead	0	8	~	~	~	~
663	liukang	f4	~	13	13f	Low	0	14	19	≥+28	This Move is Known to Have Random Block Advantage	~
664	liukang	f43	~	12	13f	Mid	-10	45, +28 vs Tech Roll	11	66, +49 vs Tech Roll	~	~
665	liukang	throw	~	10	10f	Special High	Unblockable	7	~	~	~	~
666	liukang	db2	(Dragon Stance)	18	18f	~	~	~	~	~	~	~
667	liukang	db21	(Dragon Stance 1)	12	12f	High	0	48, +56 vs Tech Roll	~	~	~	~
668	liukang	db22	(Dragon Stance 2)	14	14f	Mid	-10	30, -3 vs Tech Roll	~	~	~	~
669	liukang	db23	(Dragon Stance 3)	25	25f	Overhead	-35	2, +10 vs Tech Roll	~	~	~	~
670	liukang	db24	(Dragon Stance 4)	15	15f	Low	0	23, +20 vs Tech Roll	~	~	~	~
671	liukang	bf1	(High Fireball)	15 (Full Screen: 43)	15f	High	-10	9	~	~	~	~
672	liukang	jbf1	(Air High Fireball)	12 (Full Screen: 37)	12f	High	~0	~+17	~	~	~	~
673	liukang	bf3	(Low Fireball)	17 (Full Screen: 44)	17f	Low	-12	1	~	~	~	~
674	liukang	bf2	(Flying Dragon Kick)	16 (Full Screen: 28)	16f	High	-27	17, -1 vs Tech Roll	~	~	~	~
675	liukang	bbf4	(Bicycle Kick)	18 (Max Range: 42)	18f	High	-36	27, +10 vs Tech Roll	~	~	~	~
676	liukang	db1	(Parry)	9	9f	~	~	~	~	~	Active for 22f	~
677	liukang	exbf1	(High Dragon Fire)	15 (Full Screen: 43)	15f	High	-10	25	~	~	~	~
678	liukang	exjbf1	(Air High Dragon Fire)	12	12f	High	~0	~+34	~	~	~	~
679	liukang	exbf3	(Low Dragon Fire)	17 (Full Screen: 44)	17f	Low	-12	24	~	~	~	~
680	liukang	exbf2	(Flame Dragon Kick)	16 (Full Screen: 28)	16f	High	-27	17, -1 vs Tech Roll	~	~	Armor On Frames: ?	~
681	liukang	exbbf4	(Bicycle Steps)	18 (Max Range: 42)	18f	High	-36	41, +23 vs Tech Roll	~	~	Armor On Frames: ?	~
682	liukang	exdb1	(Burning Parry)	9	9f	~	~	~	~	~	Active for 22f	~
683	liukang	xray	(Chin Up)	28 (Max Range: 36)	28f	Overhead	3	72	~	~	Invincibility On Frames: 1-2. Armor On Frames: ?	~
684	liukang	breaker	~	~	~	~	~	~+12, ~+11 vs Tech Roll	~	~	Data Reflects When Grounded vs Grounded Opponent	~
685	mileena	1	~	13	13f	High	0	0	27	34	~	~
686	mileena	11	~	16 | 30	13f	High	0	4	25	20	~	~
687	mileena	112	~	19 | 51	13f	Mid	0	3	25	21	~	~
688	mileena	2	~	16	16f	Special High	0	10	24	22	~	~
689	mileena	23	~	20 | 39	16f	Mid	0	7	17	20	~	~
690	mileena	234	~	17 | 59	16f	Mid	0	4	20	14	~	~
691	mileena	3	~	16	16f	Mid	0	7	24	20	Airborne On 6th Frame	~
692	mileena	34	~	18 | 37	16f	Mid	0	4	20	14	~	~
693	mileena	4	~	14	14f	Mid	0	0	25	23	~	~
694	mileena	42	~	23 | 39	14f	Mid	0	59, +42 vs Tech Roll	24	73, +56 vs Tech Roll	~	~
695	mileena	d1	~	6	6f	Mid	-14	-7, -8 vs Crouch	1	9, +7 vs Crouch	~	~
696	mileena	d2	~	10	10f	High	-3	32, +25 vs Tech Roll	~	~	~	~
697	mileena	d3	~	7	7f	Low	-8	2, +9 vs Crouch	1	19 vs Crouch	~	~
698	mileena	d4	~	12	12f	Low	0	12, +5 vs Crouch	16	25 vs Crouch	~	~
699	mileena	b1	~	24	24f	Mid	0	5	26	22	~	~
700	mileena	b14	~	22 | 47	24f	Overhead	0	41, +45 vs Tech Roll	24	~	~	~
701	mileena	b2	~	35	35f	Overhead	-5	1	~	~	Airborne On 8th Frame. OTG	~
702	mileena	b3	~	21	21f	Low	-3	3	20	27	~	~
703	mileena	b3b4	~	21 | 49	21f	Low	-3	17, +14 vs Tech Roll	~	~	~	~
704	mileena	b4	~	19	19f	Low	-5	16, +13 vs Tech Roll	~	~	~	~
705	mileena	f2	~	27	27f	Mid	0	0	11	28	~	~
706	mileena	f3	~	22	22f	Mid	0	46	26	69	~	~
707	mileena	f31+2	~	22 | 45	22f	Mid	-32	22	25	79	~	~
708	mileena	u4	~	27	27f	Overhead	9	71, +59 vs Tech Roll	~	~	Airborne On 16th Frame	~
709	mileena	throw	~	10	10f	Special High	Unblockable	7	~	~	~	~
710	mileena	bf1	Mileena bf1 (Sai Blast)	19 (Full Screen: 42)	19d	Special High	-9	10	~	~	~	~
711	mileena	jbf1	Mileena jbf1 (Air Sai Blast)	14 (Full Screen: 38)	14f	High	~+3	~+15	~	~	Instant Air Sai is ~+5 On Block	~
712	mileena	bf2	Mileena bf2 (Leaping Neckbite)	21	21f	Special High	-11	0	~	~	~	~
713	mileena	ff3	Mileena ff3 (Teleport Drop)	21, 23-26 vs Standing Opponent	21f	Mid	~-23	~+31	~	~	Teleport Cancelled into Sai is ~-20 On Block and ~+28 On Hit vs Standing Opponent. Airborne On 4th Frame	~
714	mileena	jff3	Mileena jff3 (Air Teleport Drop)	~30 vs Standing Opponent	~30f	Mid	~-23	~+31	~	~	Teleport Cancelled into Sai is ~-20 On Block and ~+28 On Hit vs Standing Opponent	~
715	mileena	bd4	Mileena bd4 (Ball Roll)	12 (Max Distance: 28)	12f	Mid	-46	74, +61 vs Tech Roll	~	~	~	~
716	mileena	exbf1	Mileena exbf1 (Sai Bursts)	20, 38 (Full Screen: 44, 62)	20f	High, Special High	-1	19	~	~	~	~
717	mileena	exjbf1	Mileena exjbf1 (Air Sai Bursts)	16, 31  (Full Screen: 40, 55)	16f	High	~+5	~+15	~	~	Instant Air EX Sai is ~+8 On Block	~
718	mileena	exbf2	Mileena exbf2 (Leaping Lunch)	21	21f	Special High	-11	20	~	~	~	~
719	mileena	exff3	Mileena exff3 (Tricky Teleport)	21 (Standing Opponent: ~24, ~48)	21f	Mid	~-12	~+15	~	~	EX Teleport Cancelled into Sai is ~-14 On Whiff, ~+8 On Block and ~+5 On Hit. Airborne On 4th Frame. 4f Gap Between Hits	~
720	mileena	exjff3	Mileena exjff3(Air Tricky Teleport)	~30, ~54 2nd Hit vs Standing Opponent	~30f	Mid	~-12	~+15	~	~	EX Teleport Cancelled into Sai is ~-14 On Whiff, ~+8 On Block and ~+5 On Hit. 4f Gap Between Hits	~
721	mileena	exbd4	Mileena exbd4 (Smashing Ball)	12, 15, 19, 39 (Full Screen: 54)	12f	Overhead	-45	76, +64 vs Tech Roll	~	~	Airborne On 9th Frame	~
722	mileena	xray	Mileena xray (Femme Fatale)	19	19f	Mid	-12	38	~	~	Invincibility On Frames: 1-2. Armor On Frames 3-24	~
723	mileena	breaker	~	~	~	~	~	~-6	~	~	Data Reflect When Grounded vs Grounded Opponent	~
724	nightwolf	1	~	9	9f	High	0	0	18	24	~	~
725	nightwolf	11	~	15	9f	Mid	-3	21	28	52	~	~
726	nightwolf	112	~	21	9f	Overhead	-14	6	~	~	~	~
727	nightwolf	114	~	23	9f	Mid	-2	38, +6 vs Tech Roll	~	~	~	~
728	nightwolf	12	~	15	9f	Mid	-10	0	22	31	~	~
729	nightwolf	122	~	14	9f	Overhead	-8	24	23	55	~	~
730	nightwolf	1221	~	12	9f	Overhead	0	7	~	~	~	~
731	nightwolf	2	~	13	13f	High	0	4	25	28	~	~
732	nightwolf	23	~	30	13f	Mid	0	5	26	29	~	~
733	nightwolf	234	~	23	13f	Mid	0	39, +26 vs Tech Roll	~	~	~	~
734	nightwolf	3	~	17	17f	Mid	-8	2	~	~	~	~
735	nightwolf	4	~	19	19f	Mid	-1	38, +25 vs Tech Roll	~	~	~	~
736	nightwolf	d1	~	7	7f	Mid	-13	-5, -7 vs Crouch	1	9, +7 vs Crouch	~	~
737	nightwolf	d2	~	7	7f	High	-5	28, +21 vs Tech Roll	~	~	~	~
738	nightwolf	d3	~	7	7f	Low	-7	3, +10 vs Crouch	2	12, +19 vs Crouch	~	~
739	nightwolf	d4	~	12	12f	Low	0	12, +5 vs Crouch	26	32, +25 vs Crouch	~	~
740	nightwolf	b1	~	22	22f	Mid	-6	7	21	34	~	~
741	nightwolf	b111	~	16	22f	Mid	-20	4	18	33	13f Gap	~
742	nightwolf	b2	~	19	19f	Mid	-9	0	23	32	~	~
743	nightwolf	b22	~	18	19f	Overhead	-12	20	23	55	~	~
744	nightwolf	b221	~	14	19f	Overhead	-5	1	~	~	~	~
745	nightwolf	b4	~	17	17f	Low	-24	2, -8 vs Tech Roll	~	~	~	~
746	nightwolf	f2	~	20	20f	High	0	46	22	65	~	~
747	nightwolf	f3	~	11	11f	Mid	-4	3	15	22	~	~
748	nightwolf	f31	~	19	11f	Mid	-3	3	16	22	4f Gap	~
749	nightwolf	f312	~	11	11f	Mid	0	57, +33 vs Tech Roll	~	~	4f Gap Between f31	~
750	nightwolf	f3b4	~	14	11f	Low	-13	9, +3 vs Tech Roll	~	~	~	~
751	nightwolf	throw	~	10	10f	Special High	Unblockable	8	~	~	~	~
752	nightwolf	ff4	Nightwolf ff4 (Shoulder)	10 (Max Range: 15)	10f	Special High	-3 (Max Range: 0)	41, +49 vs Tech Roll	~	~	~	~
753	nightwolf	db3	Nightwolf db3 (Lightning)	31	31f	Mid	Unblockable	5, -6 vs Tech Roll	~	~	~	~
754	nightwolf	db1	Nightwolf db1 (Arrow Shot)	36 (Full Screen: 53)	36f	High	-21	18	~	~	~	~
755	nightwolf	db2	Nightwolf db2 (Reflect)	1	1f	~	~	~	~	~	Active for 29f. 19f Recovery After Reflecting. Cannot Reflect: CSZ Bombs, Cyrax Net, Kabal Saw, Scorpion Spear, Smoke Bomb	~
756	nightwolf	df1	Nightwolf df1 (Axe Swing)	19	19f	Mid	-6	60, +48 vs Tech Roll	~	~	~	~
757	nightwolf	df2	Nightwolf df2 (Choke)	20	20f	High	-2	45, +14 vs Tech Roll	~	~	~	~
758	nightwolf	exff4	Nightwolf exff4 (Power Charge)	10 (Last Hit: 32)	10f	Special High, Overhead	-1	48, +56 vs Tech Roll	~	~	Armor On Frames: ?	~
759	nightwolf	exdb3	Nightwolf exdb3 (Thunder Storm)	31	31f	Mid	Unblockable	61, +50 vs Tech Roll	~	~	~	~
760	nightwolf	exdb1	Nightwolf exdb1 (Multi-Arrow)	36 (Full Screen: 53)	36f	Mid	-13	19	~	~	~	~
761	nightwolf	exdb2	Nightwolf exdb2 (Absorb)	1	1f	~	~	~	~	~	Active for 47f. 19f Recovery After Reflecting	~
762	nightwolf	exdf1	Nightwolf exdf1 (Tomahawk Bash)	21	21f	Mid	0	54, +56 vs Tech Roll	~	~	~	~
763	nightwolf	exdf2	Nightwolf exdf2 (Strangle)	20	20f	High	-10	35, +3 vs Tech Roll	~	~	Armor On Frames: ?	~
764	nightwolf	xray	Nightwolf xray (Ancestors Call)	21	21f	Mid	-29	7	~	~	Invincibility On Frames: 1-2. Armor On Frames: ?	~
765	nightwolf	breaker	~	~	~	~	~	~-5, ~-6 vs Tech Roll	~	~	Data Reflects When Grounded vs Grounded Opponent	~
766	noobsaibot	1	~	11	11f	Special High	0	0	18	24	~	~
767	noobsaibot	12	~	17	11f	Mid	0	3	26	21	~	~
768	noobsaibot	2	~	10	10f	High	0	5	24	18	~	~
769	noobsaibot	21	~	16	10f	Mid	0	4	25	29	~	~
770	noobsaibot	212	~	26	10f	Mid	-6	42, +25 vs Tech Roll	25	72, +56 vs Tech Roll	~	~
771	noobsaibot	3	~	26	26f	Mid	0	10	18	25	~	~
772	noobsaibot	4	~	18	18f	Mid	-1	3	~	~	~	~
773	noobsaibot	d1	~	8	8f	Mid	-13	1, -1 vs Crouch	3	17, +15 vs Crouch	~	~
774	noobsaibot	d2	~	10	10f	High	-1	33, +25 vs Tech Roll	~	~	~	~
775	noobsaibot	d3	~	7	7f	Low	-7	3, +10 vs Crouch	2	12, +19 vs Crouch	~	~
776	noobsaibot	d4	~	12	12f	Low	0	12, +5 vs Crouch	26	32, +25 vs Crouch	~	~
777	noobsaibot	b1	~	21	21f	Mid	0	3	23	19	~	~
778	noobsaibot	b12	~	12	21f	Mid	-20	3	16	39	~	~
779	noobsaibot	b121	~	15	21f	Overhead	-6	27, +31 vs Tech Roll	21	54, +58 vs Tech Roll	~	~
780	noobsaibot	b1214	~	17	21f	Special High	-3	42, +25 vs Tech Roll	26	71, +54 vs Tech Roll	~	~
781	noobsaibot	b12f4	~	20	21f	Low	-31	-4, -8 vs Tech Roll	~	~	~	~
782	noobsaibot	b2	~	19	19f	Mid	0	5	21	12	~	~
783	noobsaibot	b21	~	12	19f	Overhead	-5	5	22	31	~	~
784	noobsaibot	b214	~	17	19f	Special High	-1	43, +33 vs Tech Roll	23	68, +58 vs Tech Roll	~	~
785	noobsaibot	b4	~	22	22f	Low	-9	15, +7 vs Tech Roll	~	~	~	~
786	noobsaibot	f3	~	17	17f	Mid	-2	-3	19	18	~	~
787	noobsaibot	f33	~	17	17f	Mid	0	4	18	19	~	~
788	noobsaibot	f333	~	15	17f	Mid	-4	7	18	29	~	~
789	noobsaibot	f4	~	22	22f	Mid	-6	3	11	20	~	~
790	noobsaibot	f43	~	18	22f	High	-2	47, +30 vs Tech Roll	16	65, +48 vs Tech Roll	~	~
791	noobsaibot	throw	~	10	10f	Special High	Unblockable	10	~	~	~	~
792	noobsaibot	du	(Teleport Slam)	27	27f	High	-43	7	~	~	~	~
793	noobsaibot	jdu	(Air Teleport Slam)	27	27f	Hgh	-43	7	~	~	~	~
794	noobsaibot	df1	(Ghostball)	27 (Full Screen: 55)	27f	Special High	-21	5	~	~	Disables Opponent's Block Button	~
795	noobsaibot	db3	(Shadow Upknee)	16	16f	Mid	4 (Max Range: +10)	30, +24 vs Tech Roll	~	~	~	~
796	noobsaibot	df3	(Shadow Charge)	11 (Full Screen: 32)	11f	Overhead	-21	-4	~	~	~	~
954	reptile	32b4	~	26	13f	Low	-18	10, +6 vs Tech Roll	~	~	~	~
797	noobsaibot	bf4	(Shadow Slide)	14 (Full Screen: 36)	14f	Low	-21	-5	~	~	Execution is 40 When Noob's Back is Facing You	~
798	noobsaibot	db2	(Blackhole Above)	~	~	~	~	~	~	~	~	~
799	noobsaibot	df2	(Blackhole Behind)	~	~	~	~	~	~	~	~	~
800	noobsaibot	dbf2	(Blackhole Front)	78	78f	Mid	Unblockable	79	~	~	~	~
801	noobsaibot	exdu	(Teleport Smash)	27	27f	High	-43	7	~	~	~	~
802	noobsaibot	exjdu	(Air Teleport Smash)	27	27f	High	-43	7	~	~	~	~
803	noobsaibot	exdf1	(Spirit Ball)	27 (Full Screen:55)	27f	Mid	-21	5	~	~	Disables Opponent's Block Button and Reverses Directional Inputs	~
804	noobsaibot	exdb3	(Saibot Upknee)	16	16f	Mid	4 (Max Range: +11)	48, +51 vs Tech Roll	~	~	~	~
805	noobsaibot	exdf3	(Saibot Charge)	11 (Full Screen: 32)	11f	Overhead	-42	5	~	~	~	~
806	noobsaibot	exdbf4	(Saibot Slide)	14 (Full Screen: 36)	14f	Low	-14	8, +6 vs Tech Roll	~	~	Execution is 40 When Noob's Back is Facing You	~
807	noobsaibot	exdb2	(Darkness)	51	51f	Mid	Unblockable	147	~	~	~	~
808	noobsaibot	exdf2	(Darkness)	51	51f	Mid	Unblockable	147	~	~	~	~
809	noobsaibot	exdbf2	(Darkness)	51	51f	Mid	Unblockable	147	~	~	~	~
810	noobsaibot	xray	(Together Again)	34	34f	Mid	6	0	~	~	Invincibility On Frames: 1-2. Armor On Frames: ?	~
811	noobsaibot	breaker	~	~	~	~	~	~+29, ~+28 vs Tech Roll	~	~	Data Reflect When Grounded vs Grounded Opponents	~
812	quanchi	1	~	11	11f	High	0	0	19	25	~	~
813	quanchi	11	~	19	11f	Mid	0	0	25	44	~	~
814	quanchi	112	~	22	11f	Special High	0	55, +38 vs Tech Roll	27	76, +59 vs Tech Roll	~	~
815	quanchi	113	~	16	11f	Mid	-9	3	18	30	~	~
816	quanchi	2	~	14	14f	Mid	-1	3	26	30	~	~
817	quanchi	21	~	21	14f	Mid	0	3	25	23	~	~
818	quanchi	212	~	16	14f	Mid	-2	2	26	30	~	~
819	quanchi	214	~	19	14f	Mid	-19	15, +12 vs Tech Roll	~	~	~	~
820	quanchi	21u3	~	21	14f	Overhead	-20	16, +12 vs Tech Roll	~	~	~	~
821	quanchi	3	~	15	15f	Mid	-10	3	17	30	~	~
822	quanchi	4	~	22	22f	Mid	-5	10	6	21	~	~
823	quanchi	d1	~	11	11f	Mid	-15	-1, -3 vs Crouch	0	14, +12 vs Crouch	~	~
824	quanchi	d2	~	7	7f	High	-5	28, +21 vs Tech Roll	~	~	~	~
825	quanchi	d3	~	7	7f	Low	-7	3, +10 vs Crouch	2	12, +19 vs Crouch	~	~
826	quanchi	d4	~	12	12f	Low	0	12, +5 vs Crouch	26	32, +25 vs Crouch	~	~
827	quanchi	b1	~	12	12f	Mid	0	4	22	21	~	~
828	quanchi	b11	~	15	12f	Mid	-1	41, +24 Tech Roll	26	67, +50 vs Tech Roll	~	~
829	quanchi	b2	~	19	19f	High	-12	-5	22	29	~	~
830	quanchi	b21	~	15	19f	Mid	0	62, +50 vs Tech Roll	~	~	~	~
831	quanchi	b24	~	15	19f	Mid	-14	25, +12 vs Tech Roll	~	~	~	~
832	quanchi	b3	~	17	17f	Low	-13	0	17	30	~	~
833	quanchi	b31+2	~	27	17f	Overhead	0	59, +48 vs Tech Roll	28	78, +67 vs Tech Roll	10f Gap	~
834	quanchi	b33	~	13	17f	High	-6	35, +18 vs Tech Roll	23	64, +47 vs Tech Roll	~	~
835	quanchi	b4	~	15	15f	Low	-1	23, +15 vs Tech Roll	~	~	~	~
836	quanchi	f1	~	16	16f	Mid	-7	3	23	33	~	~
837	quanchi	f12	~	22	16f	Low	-1	3	26	30	~	~
838	quanchi	f121+2	~	23	16f	Mid	0	37, +9 vs Tech Roll	~	~	~	~
839	quanchi	f4	~	15	15f	High?	-6	35, +23 vs Tech Roll	~	~	~	~
840	quanchi	u3	~	26	26f	Overhead	-20	15, +11 vs Tech Roll	16	52, +47 vs Tech Roll	~	~
841	quanchi	throw	~	10	10f	Special High	Unblockable	10	~	~	Backthrow is +9 On Hit	~
842	quanchi	db1	(Close Ground Burst)	21	21f	Mid	-9	3	~	~	~	~
843	quanchi	df1	(Mid Ground Burst)	21	21f	Mid	-9	3	~	~	~	~
844	quanchi	dbf1	(Far Ground Burst)	21	21f	Mid	-9	3	~	~	~	~
845	quanchi	db2	(Skull Ball)	21 (Full Screen: 50)	21f	Special High	-4	8	~	~	~	~
846	quanchi	db3	(Sky Drop)	36	36f	Mid	-36	12	~	~	Duration: 58f (27f Before Teleporting)	~
847	quanchi	bf3	(Trance)	25	25f	Mid	-35	156	~	~	~	~
848	quanchi	db4	(Skeletal Boost)	~	~	~	~	~	~	~	Duration: 77f. Gives Health Boost and Damage Buff	~
849	quanchi	exdb1	(Close Ground Blast)	21	21f	Mid	Unblockable	19	~	~	~	~
850	quanchi	exdf1	(Mid Ground Blast)	21	21f	Mid	Unblockable	19	~	~	~	~
851	quanchi	exdbf1	(Far Ground Blast)	21	21f	Mid	Unblockable	19	~	~	~	~
852	quanchi	exdb2	(Skull Chomp)	21 (Full Screen: 50)	21f	Mid?	-4	42	~	~	~	~
853	quanchi	exdb3	(Sky Stomp)	35	35f	Mid	-36	12	~	~	Duration: 58f (27f Before Teleporting)	~
854	quanchi	exbf3	(Mesmerize)	25	25f	Mid	-35	156	~	~	~	~
855	quanchi	exdb4	(Skeletal Buff)	~	~	~	~	~	~	~	Duration: 77f. Gives Health Boost and Damage Buff	~
856	quanchi	xray	(Amulet Assault)	23	23f	High	-51	7	~	~	Invincibility On Frames: 1-2. Armor On Frames: ?	~
857	quanchi	breaker	~	~	~	~	~	~+26, ~+25 vs Tech Roll	~	~	Data Reflect When Grounded vs Grounded Opponent	~
858	raiden	1	~	9	9f	Special High	-1	0	18	24	~	~
859	raiden	12	~	9	9f	Mid	-11	1	17	29	~	~
860	raiden	121	~	8	9f	Special High?	-1	3	16	20	~	~
861	raiden	1212	~	12	9f	High	-13	1	23	37	~	~
862	raiden	2	~	11	11f	High	0	0	25	18	~	~
863	raiden	22	~	15	11f	High	0	1	26	23	~	~
864	raiden	22b4	~	24	11f	Low	-1	28, +24 vs Tech Roll	~	~	~	~
865	raiden	22f1	~	14	11f	Mid	-7	32, +19 vs Tech Roll	~	~	~	~
866	raiden	3	~	12	12f	Mid	-18	-2	11	27	~	~
867	raiden	33	~	6	12f	Mid	-15	2	17	34	~	~
868	raiden	334	~	23	12f	Overhead	-1	62, +51 vs Tech Roll	17	76, +75 vs Tech Roll	5f Gap	~
869	raiden	4	~	18	18f	Mid	-1	5	~	~	~	~
870	raiden	d1	~	6	6f	Mid	-13	1, -1 vs Crouch	1	15, +13 vs Crouch	~	~
871	raiden	d2	~	12	12f	High	0	33, +26 vs Tech Roll	~	~	~	~
872	raiden	d3	~	7	7f	Low	-9	1, +8 vs Crouch	2	12, +19 vs Crouch	~	~
873	raiden	d4	~	15	15f	Low	0	15, +8 vs Crouch	26	32, +25 vs Crouch	~	~
874	raiden	b2	~	25	25f	Mid	-6	1	24	31	~	~
875	raiden	b2f1	~	20	25f	Mid	0	4	26	30	~	~
876	raiden	b2f11+2	~	27	25f	Mid	-14	25, -7 vs Tech Roll	~	~	~	~
877	raiden	b3	~	15	15f	Mid	-7	3	7	17	~	~
878	raiden	b32	~	13	15f	Mid	-8	3	13	24	5f Gap	~
879	raiden	b312	~	18	15f	Overhead	-3	58, +47 vs Tech Roll	15	66, +55 vs Tech Roll	5f Gap Before 2nd Hit, 4f Gap Before Last Hit	~
880	raiden	b4	~	16	16f	Low	-5	17, +14 vs Tech Roll	~	~	~	~
881	raiden	f2	~	12	12f	Mid	0	1	26	28	~	~
882	raiden	f23	~	20	12f	Mid	0	2	26	27	~	~
883	raiden	f231+2	~	25	12f	Mid	-13	26, +13 vs Tech Roll	~	~	~	~
884	raiden	f24	~	22	12f	Mid?	0	35, +33 vs Tech Roll	~	~	~	~
885	raiden	f3	~	25	25f	High	0	36, +25 vs Tech Roll	~	~	~	~
886	raiden	f4	~	30	30f	Overhead	0	64, +53 vs Tech Roll	~	~	~	~
887	raiden	throw	~	20	10f	Special High	Unblockable	10	~	~	Backthrow +9 On Hit	~
888	raiden	db1	(Lightning)	26 (Full Screen: 56)	26f	Special High	-10	9	~	~	~	~
889	raiden	df2	(Electrocute)	13	13f	Special High	-29	35, +43 vs Tech Roll	~	~	~	~
890	raiden	bf3	(Electric Fly)	10 (Full Screen: 21)	10f	Mid	-43	24, +16 vs Tech Roll	~	~	~	~
891	raiden	du	(Teleport)	1	1f	~	~	~	~	~	29f (10f in Front, 19f Behind)	~
892	raiden	db2	(Vicinity Blast)	25	25f	High	0	40	~	~	~	~
893	raiden	exdb1	(Bolt)	26, 77 (Full Screen: 52, 48)	26f	Special High	-17 1st Hit,  +34 2nd Hit	1 1st Hit, +58 2nd Hit	~	~	~	~
894	raiden	exdf2	(Shocker)	24	24f	Special High	-20	35, +43 vs Tech Roll	~	~	Armor On Frames: ?	~
895	raiden	exbf3	(Thunder Fly)	10 (Full Screen: 21)	10f	Mid	-43	24, +16 vs Tech Roll	~	~	Armor On Frames: ?	~
896	raiden	exdu	(Sparkport)	1	1f	~	~	~	~	~	29f (10f in Front, 18f Behind, 1f in Front)	~
897	raiden	exdb2	(Vicinity Burst)	25	25f	High	0	60, +43 vs Tech Roll	~	~	~	~
898	raiden	xray	(Shock Therapy)	22	22f	Mid	-7	8	~	~	Invincibility On Frames: 1-2. Armor On Frames: ?	~
899	raiden	breaker	~	~	~	~	~	14, +12 vs Tech Roll	~	~	Data Reflect When Grounded vs Grounded Opponent	~
900	rain	1	~	10	10f	High	0	0	19	25	RHC On Block: -4. EXRHC On Block: +7	~
901	rain	11	~	17	10f	Mid	-8	4	24	36	RHC On Block +1. EXRHC On Block: +12	~
902	rain	12	~	11	10f	High	0	0	20	26	RHC On Block: -3. EXRHC On Block: +8	~
903	rain	12f4	~	16	10f	Mid	-1	72, +40 vs Tech Roll	~	~	Gap?	~
904	rain	2	~	11	11f	Special High	0	0	25	24	RHC On Block: +2. EXRHC On Block: +13	~
905	rain	24	~	21	11f	Mid	0	5	22	24	RHC On Block: -1. EXRHC On Block: +10	~
906	rain	3	~	9	9f	Mid	-12	5	15	32	RHC On Block: -8. EXRHC On Block: + 3	~
907	rain	33	~	9	9f	Mid	-8	2	18	28	RHC On Block: -5. EXRHC On Block: +6	~
908	rain	334	~	24	9f	Mid	-3	45, +28 vs Tech Roll	~	~	~	~
909	rain	4	~	10	10f	Mid	-4	3	25	32	RHC On Block: +2. EXRHC On Block: +13	~
910	rain	43	~	14	10f	Mid	-3	-1	25	27	RHC On Block: +2. EXRHC On Block: +13	~
911	rain	43b4	~	19	10f	Mid	-4	42, +31 vs Tech Roll	~	~	Gap?	~
912	rain	d1	~	6	6f	Mid	-13	1, -1 vs Crouch	1	15, +13 vs Crouch	RHC On Block: -22. EXRHC On Block: -11	~
913	rain	d2	~	14	14f	High	4	37, +30 vs Tech Roll	~	~	~	~
914	rain	d3	~	7	7f	Low	-12	-2, +5 vs Crouch	2	12, +19 vs Crouch	RHC On Block: -21. EXRHC On Block: -10	~
915	rain	d4	~	12	12f	Low	0	12, +5 vs Crouch	26	32, +25 vs Crouch	RHC On Block: +3. EXRHC On Block: +14	~
916	rain	b1	~	22	22f	Low	-5	0	~	~	~	~
917	rain	b2	~	17	17f	Mid	-13	1	25	39	RHC On Block: +2. EXRHC On Block: +13	~
918	rain	b21+2	~	25	17f	Overhead	-4	52, +51 vs Tech Roll	~	~	Gap?	~
919	rain	b23	~	10	17f	Low	-10	28, +22 vs Tech Roll	~	~	~	~
920	rain	b3	~	13	13f	Mid	-7	42, +24 vs Tech Roll	~	~	~	~
921	rain	b4	~	16	16f	Low	-6	17, +14 vs Tech Roll	~	~	~	~
922	rain	throw	~	10	10f	Special High	Unblockable	21, +20 vs Tech Roll	~	~	~	~
923	rain	db4	~	30-92	30-92f	Mid	-3	70, +59 vs Tech Roll	~	~	Duration: 23-122f (60f No Hold/Cancel)	~
924	rain	df3	(Water Bubble)	26 (Full Screen: 52)	26f	Special High	-35	12 to +27	~	~	~	~
925	rain	db3	(Geyser Kick)	17	17f	Mid	-10	61, +27 vs Tech Roll	~	~	~	~
926	rain	db2	(Lightning)	24	24f	Mid	-23	88, +76 vs Tech Roll	~	~	~	~
927	rain	bf1	(Aqua Splash)	20	20f	High	-2	-1	~	~	~	~
928	rain	du	(Water Port)	?	?	~	~	~	~	~	Duration: 34-43f (12-21f in Front, 22f Behind)	~
929	rain	jdu	(Air Water Port)	?	?	~	~	~	~	~	Duration: 34-43f (12-21f in Front, 22f Behind)	~
930	rain	fdb1	(H20 Boost)	~	~	~	~	~	~	~	Duration: 53f	~
931	rain	exdb4	(Power Kick)	30-92	30-92f	Mid	-3	70, +59 vs Tech Roll	~	~	Duration: 12-122f (60f No Hold/Cancel). Armor On Frames: ?	~
932	rain	exdf3	(Hydro Bubble)	26 (Full Screen: 52)	26f	Mid	-35	12 to +27	~	~	~	~
933	rain	exdb3	(Thermal Spring)	17	17f	Mid	-12	59, +25 vs Tech Roll	~	~	Armor On Frames: ?	~
934	rain	exdb2	(Thunder Storm)	24	24f	Mid	-5	93, +82 vs Tech Roll	~	~	~	~
935	rain	exbf1	(Aqua Blast)	14	14f	~	-2	-1	~	~	Armor On Frames: ?	~
936	rain	exdu	(Aqua-Port)	28	28f	Mid	-12	54, +21 vs Tech Roll	~	~	Duration: 56-65f (12-21f in Front, 44f Behind). Armor On Frames: ?	~
937	rain	exjdu	(Air Aqua-Port)	19	19f	Mid	-12	54, +21 vs Tech Roll	~	~	Duration: 56-65f (12-21f in Front, 44f Behind). Armor On Frames: ?	~
938	rain	exfdb1	(H20 Buff)	~	~	~	~	~	~	~	Duration: 53f	~
939	rain	xray	(Rain Check)	24	24f	Mid	-11	63, +52 vs Tech Roll	~	~	Invincibility On Frames: 1-2. Armor On Frames: ?	~
940	rain	breaker	~	~	~	~	~	~+15, ~+13 vs Tech Roll	~	~	Data Reflects When Grounded vs Grounded Opponent	~
941	reptile	1	~	11	11f	Special High	0	0	14	20	~	~
942	reptile	12	~	10	11f	Special High	0	4	21	22	~	~
943	reptile	122	~	18	11f	Overhead	-12	2	21	35	~	~
944	reptile	1221	~	8	11f	Overhead	-10	60, +48 vs Tech Roll	~	~	~	~
945	reptile	124	~	18	11f	Mid	0	3	18	16	~	~
946	reptile	12b1	~	20	11f	Low	0	3	~	~	~	~
947	reptile	2	~	11	11f	High	0	0	18	61	~	~
948	reptile	23+4	~	22	11f	Mid	-24	24, +8 vs Tech Roll	~	~	3f Gap	~
949	reptile	2f3	~	11	11f	Mid	-2	29, +27 vs Tech Roll	~	~	~	~
950	reptile	2f31+2	~	34	11f	Overhead	?	53, +62 vs Tech Roll	~	~	Gap? OTG	~
951	reptile	3	~	13	13f	Mid	0	3	18	16	~	~
952	reptile	32	~	15	13f	Mid	0	5	26	27	~	~
953	reptile	321	~	18	13f	Mid	0	35, +39 vs Tech Roll	26	56, +60 vs Tech Roll	~	~
955	reptile	4	~	15	15f	Mid	0	3	18	17	~	~
956	reptile	d1	~	9	9f	Mid	-10	-1, -3 vs Crouch	-2	6, +4 vs Crouch	~	~
957	reptile	d2	~	11	11f	High	-2	32, +25 vs Tech Roll	~	~	~	~
958	reptile	d3	~	8	8f	Low	-6	4, +11 vs Crouch	3	13, +20 vs Crouch	~	~
959	reptile	d4	~	12	12f	Low	0	12, +5 vs Crouch	26	32, +25 vs Crouch	~	~
960	reptile	b1	~	15	15f	Low	-4	2	~	~	~	~
961	reptile	b4	~	18	18f	Low	-18	10	~	~	~	~
962	reptile	f2	~	15	15f	Mid	-12	2	21	35	~	~
963	reptile	f2b1	~	9	15f	Overhead	-11	63, +39 vs Tech Roll	~	~	~	~
964	reptile	f3	~	15	15f	Mid	-3	29, +27 vs Tech Roll	~	~	~	~
965	reptile	f31+2	~	31	15f	Overhead	~+8	55, +64 vs Tech Roll	~	~	~	~
966	reptile	throw	~	10	10f	Special High	Unblockable	7	~	~	Backthrow is +11 On Hit	~
967	reptile	bb3	(Fast Force Ball)	29 (Full Screen: 69)	29f	Mid	-11	67, +56 vs Tech Roll	~	~	~	~
968	reptile	bb1	(Slow Force Ball)	29 (Full Screen: 98)	29f	Mid	-11	67, +56 vs Tech Roll	~	~	~	~
969	reptile	bf4	(Slide)	12 (Max Range: 30)	12f	Low	-31	-2	~	~	~	~
970	reptile	db2	(Acid Hand)	27	27f	Overhead	-4	49, +32 vs Tech Roll	~	~	~	~
971	reptile	df1	(Acid Spit)	20 (Full Screen: 43)	20f	High	-11	8	~	~	~	~
972	reptile	bf2	(Elbow Dash)	6 (Max Range: 13)	6f	Mid	-15	42, +50 vs Tech Roll	~	~	~	~
973	reptile	du4	(Invisibility)	~	~	~	~	~	~	~	Duration: 28f (Reappears After 359f)	~
974	reptile	exbb3	(Fast Mega Ball)	18 (Full Screen: 52)	18f	Mid	2	73, +62 vs Tech Roll	~	~	~	~
975	reptile	exbb1	(Slow Mega Ball)	18 (Full Screen 148)	18f	Mid	2	73, +62 vs Tech Roll	~	~	~	~
976	reptile	exbf4	(Slime Trail)	12 (Full Screen: 27)	12f	Low	-30	27, +9 vs Tech Roll	~	~	Armor On Frames: ?	~
977	reptile	exdb2	(Reptilian Hand)	27	27f	Overhead	-4	68, +61 vs Tech Roll	~	~	~	~
978	reptile	exdf2	(Acid Stream)	21	21f	High	3	-6	~	~	~	~
979	reptile	exbf2	(Reptilian Elbow)	6 (Full Screen: 12)	6f	Mid	5	36, +40 vs Tech Roll	~	~	8-9f Gap Between Hits	~
980	reptile	exdu4	(Vanish)	~	~	~	~	~	~	~	Duration: 28f (Reappears After 460f)	~
981	reptile	xray	(Tricky Lizard)	14 (Full Screen: 35)	14f	Mid	-12	77	~	~	Invincibility On Frames: 1-2. Projectile Invincibility On Frames: ?. Armor On Frames: ?	~
982	reptile	breaker	~	~	~	~	~	~+4, ~+3 vs Tech Roll	~	~	Data Reflects When Grounded vs Grounded Opponent	~
983	scorpion	1	~	12	12f	Special High	0	0	17	23	~	~
984	scorpion	11	~	16 | 31	12f	Mid	0	0	16	27	~	~
985	scorpion	111	~	15 | 50	12f	Mid	0	7	18	17	~	~
986	scorpion	114	~	17 | 52	12f	Mid	-8	16, +14 vs Tech Roll	~	~	1f Gap	~
987	scorpion	2	~	12	12f	High	0	0	19	33	~	~
988	scorpion	21	~	16 | 29	12f	Mid	0	0	24	28	~	~
989	scorpion	212	~	21 | 53	12f	Overhead	-21	29, +37 vs Tech Roll	~	~	~	~
990	scorpion	21+2	~	19 | 32	12f	Overhead	-20	28, +11 vs Tech Roll	18	66, +49 vs Tech Roll	~	~
991	scorpion	3	~	10	10f	Mid	-7	6	18	31	~	~
992	scorpion	33	~	12 | 24	10f	Special High?	-8	2	17	27	~	~
993	scorpion	334	~	19 | 64	10f	Special High?	-2	46, +29 vs Tech Roll	~	~	2f Gap	~
994	scorpion	4	~	21	21f	Mid	-5	4	25	33	~	~
995	scorpion	d1	~	6	6f	Mid	-13	1, -1 vs Crouch	0	14, +12 vs Crouch	~	~
996	scorpion	d2	~	10	10f	High	-1	31, +24 vs Tech Roll	~	~	~	~
997	scorpion	d3	~	7	7f	Low	-7	-7, -6 vs Crouch	2	8, +7 vs Crouch	~	~
998	scorpion	d4	~	12	12f	Low	0	0, -6 vs Crouch	24	18, +12 vs Crouch	~	~
999	scorpion	b2	~	18	18f	Overhead	-25	60, +49 vs Tech Roll	~	~	~	~
1000	scorpion	b4	~	16	16f	Low	-6	17, +14 vs Tech Roll	~	~	~	~
1001	scorpion	f2	~	19	19f	Mid	-9	1	23	33	~	~
1002	scorpion	f21	~	16 | 39	19f	Special High	-10	4	24	38	~	~
1003	scorpion	f214	~	26 | 68	19f	Mid	-15	42, +18 vs Tech Roll	~	~	2f Gap	~
1004	scorpion	f3	~	26	26f	Overhead	0	6	~	~	~	~
1005	scorpion	f4	~	17	17f	Low	-5	1	23	29	~	~
1006	scorpion	f43	~	13 | 34	17f	High	-9	1	20	22	~	~
1007	scorpion	throw	~	10	10f	Special High	Unblockable	11	~	~	Backthrow +10 On Hit	~
1008	scorpion	jthrow	(Air Throw)	8	8f	~	Unblockable	~+32	~	~	~	~
1009	scorpion	bb1	(Spear)	13 (Full Screen: 34)	13f	High	-27	77 (Full Screen: +83)	~	~	~	~
1010	scorpion	db2	(Demon Fire)	22	22f	Mid	Unblockable	0	~	~	~	~
1011	scorpion	db3	(Teleport)	35	35f	Hgh	-43	37	~	~	Duration: 48f (20f in Front, 28f Behind)	~
1012	scorpion	jdb3	(Air Teleport)	23	23f	High	-43	37	~	~	Duration: 32f (14f in Front, 18f Behind)	~
1013	scorpion	db4	(Takedown)	21	21f	Low	-4	1	~	~	~	~
1014	scorpion	exbb1	(Flame Spear)	13 (Full Screen: 34)	13f	High	-27	77 (Full Screen: +83)	~	~	Armor On Frames: 2-37. Mid vs Large Hitbox	~
1015	scorpion	exdb2	(Hell Fire)	22	22f	Mid	Unblockable	0	~	~	OTG	~
1016	scorpion	exdb3	(Flameport)	35, 58	35f	High, Mid	10	67, +39 vs Tech Roll	~	~	Duration: 75f (20f in Front, 55f Behind).3f Gap	~
1017	scorpion	exjdb3	(Air Flameport)	23, 42	23f	High, Mid	10	67, +39 vs Tech Roll	~	~	Duration: 59f (14f in Front, 45f Behind) .3f Gap	~
1018	scorpion	exdb4	(Takeout)	21	21f	Low	-4	1	~	~	Armor On Frames: 2-23	~
1019	scorpion	xray	(Scorpion Sting)	37 (Freezes Both Characters for 8f Lowering Total Execution to 29f for Linking)	37f	Mid	-2	9	~	~	Invincibility On Frames: 1-27	~
1020	scorpion	breaker	~	~	~	~	~	~+12, ~+11 vs Tech Roll	~	~	Data Reflects When Grounded vs Grounded Opponent	~
1021	sektor	1	~	6	6f	High	0	0	14	20	~	~
1022	sektor	11	~	9	6f	High	0	5	15	18	~	~
1023	sektor	11b1	~	18	6f	Mid	0	7	~	~	3f Gap	~
1024	sektor	12	~	13	6f	High	0	7	26	23	~	~
1025	sektor	122	~	23	6f	Overhead	-9	16	22	47	~	~
1026	sektor	124	~	22	6f	Mid	-10	1	23	34	~	~
1027	sektor	12b1	~	12	6f	Mid	-3	61, +49 vs Tech Roll	~	~	~	~
1028	sektor	13	~	17	6f	Mid	0	2	25	30	3f Gap	~
1029	sektor	2	~	9	9f	High	0	15	23	30	~	~
1030	sektor	21	~	11	9f	Mid	0	0	20	37	~	~
1031	sektor	214	~	28	9f	Mid	0	44, +13 vs Tech Roll	~	~	8f Gap	~
1032	sektor	3	~	15	15f	High	0	5	23	28	~	~
1033	sektor	4	~	15	15f	Mid	-6	2	24	32	~	~
1034	sektor	d1	~	6	6f	Mid	-15	-7, -9 vs Crouch	0	8, +6 vs Crouch	~	~
1035	sektor	d2	~	8	8f	High	-3	29, +22 vs Tech Roll	~	~	~	~
1036	sektor	d3	~	7	7f	Low	-8	2, +9 vs Crouch	2	12, +19 vs Crouch	~	~
1037	sektor	d4	~	12	12f	Low	0	11, +4 vs Crouch	25	31, +24 vs Crouch	~	~
1038	sektor	b1	~	16	16f	Mid	0	7	~	~	~	~
1039	sektor	b2	~	13	13f	Mid	-10	4	12	34	~	~
1040	sektor	b21	~	11	13f	Mid	-4	27, +30 vs Tech Roll	~	~	~	~
1041	sektor	b3	~	12	12f	Low	0	4	18	21	~	~
1042	sektor	b34	~	17	12f	High	0	46, +30 vs Tech Roll	17 (+28 if Teleport)	58, +41 vs Tech Roll (Teleport: +69, +52 vs Tech Roll)	~	~
1043	sektor	b4	~	19	19f	Low	-2	20, +17 vs Tech Roll	~	~	~	~
1044	sektor	f2	~	15	15f	Mid	0	6	25	24	~	~
1045	sektor	f2b1	~	23	15f	High	-31	18, +1 vs Tech Roll	~	~	~	~
1046	sektor	f4	~	17	17f	Mid	0	56, +39 vs Tech Roll	22	75, +58 vs Tech Roll	~	~
1047	sektor	f43	~	15	17f	High	0	35, +28 vs Tech Roll	15 (+28 if Teleport)	41, +34 vs Tech Roll (Teleport: +54, +47 vs Tech Roll)	~	~
1048	sektor	f44	~	24	17f	High	0	42, +31 vs Tech Roll	15 (+28 if Teleport)	53, +42 vs Tech Roll (Teleport: +64, +53 vs Tech Roll)	2f Gap	~
1049	sektor	u3	~	14	14f	~	~	~	~	~	~	~
1050	sektor	u33	~	6	6f	Low	0	4	18	21	~	~
1051	sektor	u334	~	17	17f	High	0	46, +30 vs Tech Roll	17 (+28 if Teleport)	58, +41 vs Tech Roll (Teleport: +69, +52 vs Tech Roll)	~	~
1052	sektor	u34	~	15	15f	Overhead	0	32, +27 vs Tech Roll	16 (+28 if Teleport)	45, +41 vs Tech Roll (Teleport: +57, +53 vs Tech Roll)	~	~
1053	sektor	throw	~	10	10f	Overhead	Unblockable	8	~	~	Backthrow is +11 On Hit	~
1054	sektor	bf2	(Flame Burner)	18 (Full Screen: 24)	18f	Mid	-18	-1	~	~	~	~
1055	sektor	bf1	(Straight Missile)	20 (Full Screen: 51)	20f	Special High	-12	26, +8 vs Tech Roll	~	~	~	~
1056	sektor	df4	(Teleport Uppercut)	29	29f	Mid	-45	59, +47 vs Tech Roll	~	~	~	~
1057	sektor	jdf4	(Air Teleport Uppercut)	16	16f	Mid	-45	59, +47 vs Tech Roll	~	~	~	~
1058	sektor	db3	(Up Missile)	70	33f	Mid	44	56	~	~	Human Sektor’s up missile leaves the screen quicker although it lands on the opponent at the same time as the Robot’s up missile	~
1059	sektor	exbf2	(Flame Thrower)	18 (Max Range: 29)	18f	Mid	-17	-1	~	~	~	~
1060	sektor	exbf1	(Double Missile)	20 (Full Screen: 51)	20f	Mid	-5	26, +8 vs Tech Roll	~	~	~	~
1061	sektor	exdf4	(Metal Uppercut)	31	31f	Mid	-6	54, +43 vs Tech Roll	~	~	~	~
1062	sektor	exjdf4	(Air Metal Uppercut)	17	17f	Mid	-6	54, +43 vs Tech Roll	~	~	~	~
1063	sektor	exdb3	(Homing Missile)	81 (Full Screen: 107)	23f	Mid	60	74	~	~	~	~
1064	sektor	xray	(Massive Missile)	23 (Full Screen: 42)	23f	Mid	-39	7	~	~	Invincibility On Frames: 1-2. Armor On Frames: ?	~
1065	sektor	breaker	~	~	~	~	~	~+12, ~+11 vs Tech Roll	~	~	Data Reflects When Grounded vs Grounded Opponent	~
1066	shangtsung	1	~	9	9f	High	0	0	16	24	~	~
1067	shangtsung	12	~	17	9f	Mid	0	0	16	22	~	~
1068	shangtsung	121	~	19	9f	Overhead	0	41	~	~	2f Gap	~
1069	shangtsung	122	~	19	9f	High	0	4	24	21	2f Gap	~
1070	shangtsung	13	~	16	9f	Mid	-4	3	19	26	~	~
1071	shangtsung	2	~	12	12f	High	0	5	23	19	~	~
1072	shangtsung	22	~	18	12f	Mid	-2	3	16	21	~	~
1073	shangtsung	221	~	17	12f	Mid	0	47	26	?	~	~
1074	shangtsung	22b4	~	20	12f	Low	-5	23	~	~	3f Gap	~
1075	shangtsung	3	~	18	18f	High	-4	4	13	21	~	~
1076	shangtsung	4	~	28	28f	Mid	0	9	25	33	~	~
1077	shangtsung	d1	~	6	6f	Mid	-13	1, -1 vs Crouch	1	15, +13 vs Crouch	~	~
1078	shangtsung	d2	~	18	18f	High	6	42	~	~	~	~
1079	shangtsung	d3	~	7	7f	Low	-7	3, +10 vs Crouch	2	12, +19 vs Crouch	~	~
1080	shangtsung	d4	~	12	12f	Low	0	8, +1 vs Crouch	23	29, +22 vs Crouch	~	~
1081	shangtsung	b1	~	9	9f	High	0	5	15	13	~	~
1082	shangtsung	b12	~	11	9f	High	-11	2	15	28	3f Gap	~
1083	shangtsung	b121	~	15	9f	Overhead	-7	33	18	?	3f Gap Between b12	~
1084	shangtsung	b1214	~	17	9f	High?	-12	34	24	?	3f Gap Between b12	~
1085	shangtsung	b2	~	20	20f	Overhead	0	45	25	?	~	~
1086	shangtsung	b4	~	21	21f	Low	0	22	~	~	~	~
1087	shangtsung	f2	~	11	11f	High	0	4	21	24	~	~
1088	shangtsung	f3	~	22	22f	Special Low	-13	2	21	36	~	~
1089	shangtsung	f34	~	19	22f	Mid	-17	24	19	?	~	~
1090	shangtsung	f4	~	10	10f	Mid	-3	3	25	31	~	~
1091	shangtsung	f43	~	16	10f	Mid	-4	2	20	25	~	~
1092	shangtsung	f434	~	20	10f	Special High	-10	41	28	?	~	~
1093	shangtsung	throw	~	10	10f	Special High	Unblockable	19	~	~	~	~
1094	shangtsung	bb1	(Fire Skull)	21 (Full Screen: 54)	21f	Special High	-14	5	~	~	~	~
1095	shangtsung	du2	(Up Skull Above)	57	57f	Mid	30	43	~	~	~	~
1096	shangtsung	db2	(Up Skull Front)	57	57f	Mid	30	43	~	~	~	~
1097	shangtsung	df2	(Up Skull Behind)	57	57f	Mid	30	43	~	~	~	~
1098	shangtsung	du4	(Close Ground Skull)	29	29f	Mid	2	64	~	~	~	~
1099	shangtsung	db4	(Mid Ground Skull)	29	29f	Mid	2	64	~	~	~	~
1100	shangtsung	df4	(Far Ground Skull)	29	29f	Mid	2	64	~	~	~	~
1101	shangtsung	fdb3	(Soul Steal)	24	24f	Mid	1	0	~	~	Morph Into Opponent's Character With Damage Boost for 5 Seconds. Cannot Block During Morph Back	~
1102	shangtsung	exbb1	(Triple Skulls)	21 (Full Screen: 54)	21f	Special High	-15	4	~	~	~	~
1103	shangtsung	exdu2	(Skull Storm)	57	57f	Mid	30	43	~	~	~	~
1104	shangtsung	exdb2	(Skull Storm)	57	57f	Mid	30	43	~	~	~	~
1105	shangtsung	exdf2	(Skull Storm)	57	57f	Mid	30	43	~	~	~	~
1106	shangtsung	exdu4	(Ground Eruption)	21, 36, 51	21f	Mid	-9, +6, +21	109, +101, +79	~	~	~	~
1107	shangtsung	exdb4	(Ground Eruption)	21, 36, 51	21f	Mid	-9, +6, +21	109, +101, +79	~	~	~	~
1108	shangtsung	exdf4	(Ground Eruption)	21, 36, 51	21f	Mid	-9, +6, +21	109, +101, +79	~	~	~	~
1109	shangtsung	exfdb3	(Soul Capture)	18	18f	Mid	1	0	~	~	Morph Into Opponent's Character With Damage Boost for 8 Seconds. Cannot Block During Morph Back. Armor On Frames: ?	~
1110	shangtsung	xray	(Your Soul Is Mine)	20	20f	Mid	-27	48	~	~	Invincibility On Frames: 1-2. Armor On Frames: ?	~
1111	shangtsung	breaker	~	~	~	~	~	1	~	~	~	~
1112	sheeva	1	~	13	13f	High	0	0	16	22	~	~
1113	sheeva	12	~	11	13f	High	0	2	16	17	~	~
1114	sheeva	12b1	~	12	13f	Mid	0	60, +48 vs Tech Roll	~	~	~	~
1115	sheeva	1b2	~	14	13f	Mid	-28	8	13	49	~	~
1116	sheeva	1b2f1	~	24	13f	Overhead	-8	43, +32 vs Tech Roll	~	~	~	~
1117	sheeva	2	~	12	12f	Special High	0	0	21	28	~	~
1118	sheeva	21	~	12	12f	Mid	-1	3	20	24	~	~
1119	sheeva	212	~	12	12f	Mid	-22	2	24	28	~	~
1120	sheeva	212b1	~	34	12f	Low	0	24, +18 vs Tech Roll	~	~	~	~
1121	sheeva	212f1	~	20	12f	Overhead	-9	16	27	94	~	~
1122	sheeva	3	~	19	19f	Mid	-8	3	18	29	~	~
1123	sheeva	33	~	22	19f	Mid	-7	34, +17 vs Tech Roll	25	66, +49 vs Tech Roll	~	~
1124	sheeva	4	~	13	13f	High	-10	9	20	39	~	~
1125	sheeva	d1	~	6	6f	Mid	-12	1, -1 vs Crouch	1	15, +13 vs Crouch	~	~
1126	sheeva	d2	~	13	13f	High	0	36, +29 vs Tech Roll	~	~	~	~
1127	sheeva	d3	~	7	7f	Low	-7	3, +10 vs Crouch	2	12, +19 vs Crouch	~	~
1128	sheeva	d4	~	12	12f	Low	0	12, +5 vs Crouch	26	32, +25 vs Crouch	~	~
1129	sheeva	b1	~	21	21f	Mid	-17	0	9	26	~	~
1130	sheeva	b12	~	14	21f	Mid	-1	15	18	34	~	~
1131	sheeva	b121	~	32	21f	~	-33	20, -3 vs Tech Roll	~	78, +55 vs Tech Roll	~	~
1132	sheeva	b121+2	~	28	21f	Mid	0	26, +18 vs Tech Roll	25	93, +67 vs Tech Roll	~	~
1133	sheeva	b4	~	13	24f	Low	-5	47, +21 vs Tech Roll	~	~	~	~
1134	sheeva	f2	~	31	31f	High	-8	2	25	35	~	~
1135	sheeva	f2b1	~	18	31f	Mid	-7	42, +50 vs Tech Roll	~	~	~	~
1136	sheeva	f3	~	26	26f	Low	-18	4	16	39	~	~
1137	sheeva	f32	~	32	26f	Mid	-30	34, +10 vs Tech Roll	~	~	~	~
1138	sheeva	f3b1	~	23	26f	Low	0	25, +17 vs Tech Roll	~	~	~	~
1139	sheeva	f4	~	17	17f	Mid	-7	45, +22 vs Tech Roll	~	~	~	~
1140	sheeva	throw	~	10	10f	Special High	Unblockable	9	~	~	Backthrow is +10 On Hit	~
1141	sheeva	df2	(Fireball)	26 (Full Screen: 56)	26f	Mid	-5	7	~	~	~	~
1142	sheeva	du	(Jump Stop)	58	58f	Mid	Unblockable	7	~	~	~	~
1143	sheeva	db4	(Ground Pound)	39	39f	Mid	Unblockable	20, +16 vs Tech Roll	~	~	~	~
1144	sheeva	bf3	(Grab N Punch)	25	25f	High	12	4, +11 vs Tech Roll	~	~	~	~
1145	sheeva	df1	(Anti-Air Grab)	11	11f	~	~	7	~	~	Invincible to Airborne Attcks After 5f	~
1146	sheeva	db3	(Low Grab)	20	20f	Overhead	~	71, +60 vs Tech Roll	~	~	~	~
1147	sheeva	exdf2	(Fire Blast)	26 (Full Screen: 56)	26f	Mid	-5	43, +26 vs Tech Roll	~	~	~	~
1148	sheeva	exdu	(Jump Crush)	58	58f	Mid	Unblockable	7	~	~	~	~
1149	sheeva	exdb4	(Ground Smash)	39, 70	39f, 70f	Mid	Unblockable	13, +9 vs Tech Roll	~	~	~	~
1150	sheeva	exbf3	(Untamed Fury)	25	25f	High	12	24, +26 vs Tech Roll (Backward Throw: +12, +13 vs Tech Roll)	~	~	Armor On Frames: ?	~
1151	sheeva	exdf1	(Power Anti-Air)	11	11f	~	~	7	~	~	~	~
1152	sheeva	exdb3	(Anti-Duck Throw)	20	20f	Overhead	~	71, +60 vs Tech Roll	~	~	~	~
1153	sheeva	xray	(Slam Dance)	36	36f	Mid	Unblockable	16	~	~	Invincibility On Frames: 1-2. Armor On Frames: ?	~
1154	sheeva	breaker	~	~	~	~	~	-7	~	~	~	~
1155	sindel	1	~	11	11f	High	0	0	19	25	Levi Cancel On Block: 0. EXScream Cancel On Block: +2	~
1156	sindel	11	~	12 | 24	11f	Mid	0	2	15	12	Levi Cancel On Block: -4. EXScream Cancel On Block: -2	~
1157	sindel	111	~	12 | 42	11f	Special High	-5	15	17	35	Levi Cancel On Block: -2. EXScream Cancel On Block: 0	~
1158	sindel	11b2	~	11 | 41	11f	Mid	-1	40, +28 vs Tech Roll	~	~	~	~
1159	sindel	11b24	~	14 | 66	11f	High	-13	34, + 26 vs Tech Roll	~	~	~	~
1160	sindel	2	~	17, 27	17f	High	0	4	28	32	Levi Cancel On Block: +9. EXScream Cancel On Block: +11	~
1161	sindel	21	~	21 | 47	17f	Low	0	3	26	26	Levi Cancel On Block: +7. EXScream Cancel On Block: +9	~
1162	sindel	212	~	22-39 | 70-87	17f	Special High	0	56, +64 vs Tech Roll	~	~	~	~
1163	sindel	21b3	~	16 | 64	17f	Special High	-9	46, +54 vs Tech Roll	~	~	~	~
1164	sindel	3	~	15	15f	Mid	-7	3	19	28	Levi Cancel On Block: 0. EXScream Cancel On Block: +2	~
1165	sindel	32	~	21 | 38	15f	Special High	0	14	18	29	Levi Cancel On Block: -1. EXScream Cancel On Block: +1. 2f Gap	~
1166	sindel	322	~	26 | 66	15f	Mid	0	34, +23 vs Tech Roll	26	59, +48 vs Tech Roll	Levi Cancel On Block: +7. EXScream Cancel On Block: +9. 2f Gap Between 31. 8f Gap	~
1167	sindel	31b2	~	29 | 69	15f	Mid	0	74, +41 vs Tech Roll	~	~	2f Gap Between 31. 11f Gap	~
1168	sindel	4	~	14	14f	Mid	-12	?	19	33	Levi Cancel On Block: 0. EXScream Cancel On Block: +2	~
1169	sindel	44	~	21 | 37	14f	Mid	0	52, +40 vs Tech Roll	?	?	2f Gap	~
1170	sindel	44u3	~	13 | 53	14f	~	~	50, +26 vs Tech Roll	~	~	~	~
1171	sindel	d1	~	6	6f	Mid	-13	1, -1 vs Crouch	1	15, +13 vs Crouch	Levi Cancel On Block: -18. EXScream Cancel On Block: -16	~
1172	sindel	d2	~	12	12f	High	-1	32, +25 vs Tech Roll	~	~	~	~
1173	sindel	d3	~	7	7f	Low	-7	3, +10 vs Crouch	2	12, +19 vs Crouch	Levi Cancel On Block: -17. EXScream Cancel On Block: -15	~
1174	sindel	d4	~	12	12f	Low	0	12, +5 vs Crouch	26	32, +25 vs Crouch	Levi Cancel On Block: +7. EXScream Cancel On Block: +9	~
1175	sindel	b1	~	16	16f	Low	-13	22, +19 vs Tech Roll	18	54, +49 vs Crouch	Levi Cancel On Block: -1. EXScream Cancel On Block: +1	~
1176	sindel	b12	~	15 | 33	16f	High	-1	67, +55 vs Tech Roll	~	~	~	~
1177	sindel	b2	~	12	12f	Special High	-7	41, +29 vs Tech Roll	~	~	~	~
1178	sindel	b24	~	14 | 36	12f	High	-13	35, + 27	~	~	~	~
1179	sindel	b3	~	27	27f	Mid	-3	3	17	22	Levi Cancel On Block: -2. EXScream Cancel On Block: 0	~
1180	sindel	b3f2	~	20 | 51	27f	Overhead	-2	66, +55 vs Tech Roll	~	~	3f Gap	~
1181	sindel	b4	~	13	13f	Low	-14	10, +2 vs Tech Roll	~	~	~	~
1182	sindel	f1	~	15	15f	High	0	10	14	22	Levi Cancel On Block: -5. EXScream Cancel On Block: -3	~
1183	sindel	f12	~	20 | 42	15f	Mid	0	14	13	24	Levi Cancel On Block: -6. EXScream Cancel On Block: -4. 6f Gap	~
1184	sindel	f124	~	14 | 63	15f	Mid	-10	46, +29 vs Tech Roll	7	62, +45 vs Tech Roll	Levi Cancel On Block: -12. EXScream Cancel On Block: -10. 6f Gap Between f12. 1f Gap	~
1185	sindel	f3	~	19	19f	High	-9	46, +29 vs Tech Roll	17	71, +55 vs Tech Roll	Levi Cancel On Block: -2. EXScream Cancel On Block: 0	~
1186	sindel	u3	~	16	16f	Mid	-11	30, +13 vs Tech Roll	~	~	~	~
1187	sindel	u4	~	16	16f	Mid	-23	51, +39 vs Tech Roll	~	~	~	~
1188	sindel	throw	~	10	10f	Special High	Unblockable	10	~	~	~	~
1189	sindel	df1	(Fireball)	18 (Full Screen: 42)	18f	Special High	-15	4	~	~	~	~
1190	sindel	jdf1	(Air Fireball)	14 (Full Screen: 38)	14f	Mid	-3	16 (Full Screen: +9, +29)?	~	~	~	~
1191	sindel	df3	(Low Fireball)	18 (Full Screen: 43)	18f	Low	-14	5	~	~	~	~
1192	sindel	jdf3	(Air Low Fireball)	14 (Full Screen: 28)	14f	Mid	-3	16 (Full Screen: +10, +30)?	~	~	~	~
1193	sindel	db2	(Yell)	32	32f	Mid	-29	104	~	~	~	~
1194	sindel	df2	(Hair Whip)	20	20f	Mid	-7	17	~	~	~	~
1195	sindel	df4	(Step Up)	15, 29	15f	Overhead	-7	17, +21 vs Tech Roll	~	~	~	~
1196	sindel	ddu	(Levitate)	~	~	~	~	~	~	~	Duration: 18-1296f. 19f to Cancel	~
1197	sindel	exdf1	(Power Fireball)	18, 19 (Full Screen: 42, 43)	18f	Mid	-15	22, +20 vs Tech Roll	~	~	~	~
1198	sindel	exjdf1	(Air Power Fireball)	14, 15 (Full Screen: 38)	14f	Mid	-3	16	~	~	~	~
1199	sindel	exdj3	(Low Fire)	18 ,19 (Full Screen: 41, 42)	18f	Low	-14	22,  +18 vs Tech Roll	~	~	~	~
1200	sindel	exjdf3	(Air Low Fire)	14, 15 (Full Screen: 38)	14f	Mid	-3	16	~	~	~	~
1201	sindel	exdb2	(Scream)	25	25f	Mid	-29	104	~	~	Duration: 17-95f (54f No Hold/Cancel).	~
1202	sindel	exdf2	(Hair Toss)	20	20f	Mid	-7	17	~	~	~	~
1203	sindel	exdf4	(Step Over)	15, 29	15f	Overhead	-7	15, +8 vs Tech Roll	~	~	~	~
1204	sindel	xray	(Queen B)	21	21f	Low	-14	12, -5 vs Tech Roll	~	~	Invincibility On Frames: 1-2. Armor On Frames: 3-26	~
1205	sindel	breaker	~	~	~	~	~	~-1	~	~	Data Reflects When Grounded vs Grounded Opponent	~
1206	skarlet	1	~	10	10f	High	0	0	18	24	~	~
1207	skarlet	11	~	9 | 21	10f	Mid	-4	3	16	23	~	~
1208	skarlet	112	~	15 | 40	10f	Mid	0	9	19	37	~	~
1209	skarlet	114	~	15 | 40	10f	Special High	0	11	23	33	~	~
1210	skarlet	2	~	12	12f	High	0	9	26	25	~	~
1211	skarlet	21	~	14 | 27	12f	High	-5	5	19	29	~	~
1212	skarlet	212	~	20 | 55	12f	Mid	-9	30, +17 vs Tech Roll	22	61, +48 vs Tech Roll	1f Gap	~
1213	skarlet	23	~	12 | 25	12f	Mid	-10	3	17	30	~	~
1214	skarlet	3	~	12	12f	Mid	-10	1	17	28	~	~
1215	skarlet	4	~	15	15f	Mid	-8	9	16	33	~	~
1216	skarlet	d1	~	6	6f	Mid	-13	1, -1 vs Crouch	1	15, +13 vs Crouch	~	~
1217	skarlet	d2	~	10	10f	High	-2	32, +25 vs Tech Roll	~	~	~	~
1218	skarlet	d3	~	7	7f	Low	-7	3, +10 vs Crouch	2	12, +19 vs Crouch	~	~
1219	skarlet	d4	~	12	12f	Low	0	11, +4 vs Crouch	25	31, +24 vs Crouch	~	~
1220	skarlet	b1	~	14	14f	Mid	-13	5	14	33	~	~
1221	skarlet	b11	~	8 | 28	14f	Mid	-15	0	15	30	~	~
1222	skarlet	b113	~	17 | 50	14f	Mid	-13	36, +44 vs Tech Roll	~	~	2f Gap	~
1223	skarlet	b11b4	~	19 | 52	14f	Low	-15	8, -2 vs Tech Roll	~	~	4f Gap	~
1224	skarlet	b11f4	~	13 | 46	14f	Mid	-8	50, +26 vs Tech Roll	18	76, +52 vs Tech Roll	~	~
1225	skarlet	b1f3	~	15 | 35	14f	Overhead	-13	12, -11 vs Tech Roll	~	~	1f Gap	~
1226	skarlet	b2	~	20	20f	Mid	-10	2	24	36	~	~
1227	skarlet	b24	~	34 | 57	20f	High	0	41, +9 vs Tech Roll	~	~	10f Gap	~
1228	skarlet	b4	~	19	19f	Low	-1	23, +15 vs Tech Roll	~	~	~	~
1229	skarlet	f2	~	19	19f	High	0	8	26	33	~	~
1230	skarlet	f21	~	9 | 29	19f	High	-4	4	24	32	~	~
1231	skarlet	f212	~	15 | 47	19f	Mid	-8	31, +19 vs Tech Roll	22	61, +39 vs Tech Roll	~	~
1232	skarlet	f2121+2	~	20 | 72	19f	Overhead	-14	40, +17 vs Tech Roll	25	79, +52 vs Tech Roll	~	~
1233	skarlet	f3	~	19	19f	Mid	-1	3	19	23	~	~
1234	skarlet	f31	~	19 | 39	19f	Mid	-16	7	14	37	~	~
1235	skarlet	f312	~	16 | 61	19f	Mid	-27	31, +20 vs Tech Roll	9	66, +55 vs Tech Roll	2f Gap	~
1236	skarlet	f33	~	11 | 31	19f	Low	-15	2	10	27	~	~
1237	skarlet	f4	~	13	13f	Mid	-17	2	~	~	~	~
1238	skarlet	f43	~	11 | 25	13f	Mid	0	42, +25 vs Tech Roll	~	~	~	~
1239	skarlet	u3	~	16	16f	Mid	0	56, +43 vs Tech Roll	22	71, +59 vs Tech Roll	~	~
1240	skarlet	u34	~	14 | 35	16f	Mid	0	53, +35 vs Tech Roll	20	68, +51 vs Tech Roll	~	~
1241	skarlet	throw	~	10	10f	Special High	Unblockable	22	~	~	Backthrow is +7 On Hit	~
1242	skarlet	df3	(Red Dash)	12	12f	~	~	~	~	~	~	~
1243	skarlet	exdf3	(Krimson Dash)	12	12f	~	~	~	~	~	Armor on frames 2-28, 2-43 (Maximum) if a Special is Used	~
1244	skarlet	df34	(Red Slide)	8 | 20	8f	Low	-3 (Max Distance: 0)	16, +12 vs Tech Roll	~	~	~	~
1245	skarlet	exdf34	(Krimson Slide)	8 | 20	8f	Low	-3 (Max Distance: 0)	16, +12 vs Tech Roll	~	~	~	~
1246	skarlet	df3df2	(Red Dash Up Slash)	14 | 26-33	26f	Mid	-13	60, +48 vs Tech Roll	~	~	~	https://i.imgur.com/kJHob6Z.jpg
1247	skarlet	exdf3df2	(Krimson Dash Up Slash)	14 | 26-34	26f	Mid	-13	60, +48 vs Tech Roll	~	~	~	https://i.imgur.com/VBd69fY.jpg
1248	skarlet	df3db2	(Red Dash Down Slash)	20 | 32	32f	Overhead	-18	64, +53 vs Tech Roll	~	~	~	~
1249	skarlet	exdf3db2	(Krimson Dash Down Slash)	20 | 32	32f	Overhead	-18	64, +53 vs Tech Roll	~	~	~	~
1250	skarlet	df3exdf2	(Red Dash Dual Up Slash)	12, 30 | 24	24f	Mid	-8	65, +53 vs Tech Roll	~	~	~	~
1251	skarlet	exdf3exdf2	(Krimson Dash Dual Up Slash)	12, 30 | 24	24f	Mid	-8	65, +53 vs Tech Roll	~	~	~	~
1252	skarlet	df3exdb2	(Red Dash Dual Down Slash)	13, 33 | 25	25f	Overhead	-21	65, +55 vs Tech Roll	~	~	~	~
1253	skarlet	exdf3exdb2	(Krimson Dash Dual Down Slash)	13, 33 | 25	25f	Overhead	-21	65, +55 vs Tech Roll	~	~	~	~
1254	skarlet	df3xray	(Red Dash Blood Bank)	6, 14, 21, 27 | 18	18f	Overhead	-2, -14 if Last Hit Misses	12	~	~	~	~
1255	skarlet	df2	(Up Slash)	27	27f	Mid	-13	60, +48 vs Tech Roll	~	~	~	~
1256	skarlet	db2	(Down Slash)	34	34f	Overhead	-18	64, +53 vs Tech Roll	~	~	~	~
1257	skarlet	fdb1	(Blood Ball)	39 (Full Screen: 69)	39f	Mid	-7	43, +26 vs Tech Roll	~	~	~	~
1258	skarlet	db4	(Blood Drop)	31	31f	Mid	-14	12, +11 vs Tech Roll	~	~	~	~
1259	skarlet	jdb4	(Air Blood Drop)	26	26f	Mid	-14	12, +11 vs Tech Roll	~	~	~	~
1260	skarlet	df1	(Dagger Toss)	19, 33 (Full Screen: 41, 48)	19f	Special High	-7 (Full Screen: +9)	12 (Full Screen: +29)	-9 (Full Screen: +13)	11 (Full Screen: +33)	8f Gap	~
1261	skarlet	jdf1	(Air Dagger Toss Far)	11 (Full Screen: 35)	11f	Special High	4	23	~	~	~	~
1262	skarlet	jdb1	(Air Dagger Toss Close)	11	11f	Mid	0	19	~	~	~	~
1263	skarlet	exdf2	(Dual Up Slash)	26, 43	26f	Mid	-8	65, +53 vs Tech Roll	~	~	~	~
1264	skarlet	exdb2	(Dual Down Slash)	26, 46	26f	Overhead	-21	65, +55 vs Tech Roll	~	~	~	~
1265	skarlet	exdb4	(Blood Stomp)	31	31f	Mid	-13	17	~	~	~	~
1266	skarlet	exjdb4	(Air Blood Stomp)	26	26f	Mid	-13	17	~	~	~	~
1267	skarlet	exdf1	(Double Daggers)	19, 33 (Full Screen: 41, 49)	19f	Special High	-7	12	21	39	~	~
1268	skarlet	exjdf1	(Tri Air Daggers)	11, 12, 13 (Full Screen: 33)	11f	Mid	~+3	~+20	~	~	~	~
1269	skarlet	exjdb1	(Tri Air Daggers Close)	11, 12, 13 (Full Screen: 33)	11f	Mid	~+3	~+20	~	~	~	~
1270	skarlet	xray	(Blood Bank)	16, 23, 30, 36	16f	Overhead	-2, -14 if Last Hit Misses	12	~	~	Invincibility On Frames 1-2. Armor On Frames 3-33	~
1271	skarlet	breaker	~	~	~	~	~	~+6, ~+4 vs Tech Roll)	~	~	Data Reflects When Grounded vs Grounded Opponent	~
1272	smoke	1	~	14	14f	Special High	0	0	15	15	~	~
1273	smoke	11	~	9	14f	High	0	4	9	12	~	~
1274	smoke	112	~	13	14f	Mid	-17	23, +10 vs Tech Roll	17	57, +44 vs Tech Roll	~	~
1275	smoke	13	~	13	14f	High	-7	4	12	23	~	~
1276	smoke	2	~	9	9f	Special High	0	6	17	21	~	~
1277	smoke	21	~	12	9f	High	-9	4	18	31	~	~
1278	smoke	214	~	16	9f	Mid	0	27, +25 vs Tech Roll	18	43, +41 vs Tech Roll	~	~
1279	smoke	3	~	16	16f	Mid	-4	3	12	19	~	~
1280	smoke	32	~	17	16f	Mid	0	70, +59 vs Tech Roll	~	~	~	~
1281	smoke	3d1	~	13	16f	Overhead	-2	2	16	20	1f Gap?	~
1282	smoke	3d12	~	17	16f	Mid	0	71, +60 vs Tech Roll	~	~	1f Gap?	~
1283	smoke	4	~	20	20f	Mid	-8	7	13	28	~	~
1284	smoke	d1	~	6	6f	Mid	-13	1, -1 vs Crouch	1	15, +13 vs Crouch	~	~
1285	smoke	d2	~	14	14f	High	2	37, +30	~	~	~	~
1286	smoke	d3	~	7	7f	Low	-7	3, +10 vs Crouch	2	12, +19 vs Crouch	~	~
1287	smoke	d4	~	12	12f	Low	0	12, +5 vs Crouch	26	32, +25 vs Crouch	~	~
1288	smoke	b1	~	16	16f	High	0	3	24	26	~	~
1289	smoke	b14	~	20	16f	Mid	0	50, +33 vs Tech Roll	24	72, +55 vs Tech Roll	~	~
1290	smoke	b2	~	15	15f	Overhead	0	3	24	22	~	~
1291	smoke	b23	~	15	15f	Mid	-8	37, +26 vs Tech Roll	24	59, +48 vs Tech Roll	~	~
1292	smoke	b3	~	14	14f	High	-11	41, +30 vs Tech Roll	~	~	~	~
1293	smoke	b4	~	16	16f	Low	0	24, +16 vs Tech Roll	~	~	~	~
1294	smoke	f4	~	17	17f	Mid	-2	37, +5 vs Tech Roll	24	63, +31 vs Tech Roll	~	~
1295	smoke	throw	~	10	10f	Special High	Unblockable	48, +16 vs Tech Roll	~	~	Backthrow is +11 On Hit	~
1296	smoke	bf1	(Shake)	1	1f	~	~	~+43, ~+20 vs Tech Roll	~	~	Duration: 28-229f (49f No Hold)	~
1297	smoke	db2	(Smoke Cloud)	19 (Full Screen: 28)	14f	Mid	-9	92, +65 vs Tech Roll	~	~	~	~
1298	smoke	jthrow	(Air Throw)	8	8f	~	Unblockable	~+30	~	~	~	~
1299	smoke	db4	(Teleport)	19	19f	Special High	-43	47, +30 vs Tech Roll	~	~	Duration: 29f (11f in Front, 18f Behind)	~
1300	smoke	jdb4	(Air Teleport)	17	17f	Special High	-43	47, +30 vs Tech Roll	~	~	~	~
1301	smoke	exbf1	(Vibration)	1	1f	~	~	~+43, ~+20 vs Tech Roll	~	~	Duration: 28-229f (49f No Hold)	~
1302	smoke	exdb2	(Smoke Bomb)	19 (Full Screen: 28)	14f	Mid	-9	92, +65 vs Tech Roll	~	~	~	~
1303	smoke	exdb4	(Smokeport)	19	19f	Special High, Mid, Overhead	-41	37, +14 vs Tech Roll	~	~	Duration: 56f (11f in Front, 20f Behind, 25f in Front)	~
1304	smoke	exjdb4	(Air Smokeport)	17	17f	Special High, Mid, Overhead	-41	37, +14 vs Tech Roll	~	~	~	~
1305	smoke	bf3	(Smoke Towards)	~	~	~	~	~	~	~	Duration: 37f	~
1306	smoke	fb3	(Smoke Away)	~	~	~	~	~	~	~	Duration: 37f	~
1307	smoke	exbf3	(Phase Away)	6	6f	~	~	~	~	~	6 Frame Ftartup Until Invincible (Excluding Throws and Certain Attacks). Duration: 37f	~
1308	smoke	exfb3	(Phase Towards)	6	6f	~	~	~	~	~	6 Frame Ftartup Until Invincible (Excluding Throws and Certain Attacks). Duration: 37f	~
1309	smoke	du3	(Invisibility)	~	~	~	~	~	~	~	Duration: 36f (Invisible After 25f, 333 Invisible Frames)	~
1310	smoke	exdu3	(Vanish)	~	~	~	~	~	~	~	Duration: 36f (Invisible After 25f, 444 Invisible Frames)	~
1311	smoke	xray	(Burn Out)	33-273	33-273f	Mid	-36	17	~	~	Invincibility On Frames: 1-2. Armor On Frames: ?	~
1312	smoke	breaker	~	~	~	~	~	~+4, ~+2 vs Tech Roll	~	~	Data Reflects When Grounded vs Grounded Opponent	~
1313	sonya	1	~	7	7f	Special High	0	0	12	18	MS Cancel On Block: -9. EXKiss Cancel On Block: -17	~
1314	sonya	11	~	8 | 23	7f	High	0	3	19	19	MS Cancel On Block: -2. EXKiss Cancel On Block: -10	~
1315	sonya	112	~	12 | 39	7f	Mid	-1	2	21	24	MS Cancel On Block: 0. EXKiss Cancel On Block: -8. 112 Kiss is +10 On Block	~
1316	sonya	114	~	16 | 40	7f	Mid	-6	48, +31 vs Tech Roll	16	70, +53 vs Tech Roll	MS Cancel On Block: -5. EXKiss Cancel On Block: -13	~
1317	sonya	2	~	10	10f	Mid	0	1	26	18	MS Cancel On Block: +5. EXKiss Cancel On Block: -3	~
1318	sonya	21	~	16 | 27	10f	High	0	4	24	23	MS Cancel On Block: +3. EXKiss Cancel On Block: -5	~
1319	sonya	21b3	~	15 | 45	10f	Mid	-9	29, +2 vs Tech Roll	~	~	~	~
1320	sonya	21b4	~	18 | 48	10f	Low	-6	22, +18 vs Tech Roll	~	~	~	~
1321	sonya	3	~	13	13f	Mid	-5	2	16	27	MS Cancel On Block: -5. EXKiss Cancel On Block: -13	~
1322	sonya	31	~	14 | 31	13f	High	0	50, +33 vs Tech Roll	14	64, +47 vs Tech Roll	MS Cancel On Block: -7. EXKiss Cancel On Block: -15	~
1323	sonya	312	~	14 | 51	13f	Mid	-4	32, +19 vs Tech Roll	25	62, +49 vs Tech Roll	MS Cancel On Block: +4. EXKiss Cancel On Block: -4	~
1324	sonya	314	~	16 | 53	13f	Mid	-9	43, +26 vs Tech Roll	19	71, +54 vs Tech Roll	2f Gap	~
1325	sonya	4	~	10	10f	Mid	-11	2	10	23	MS Cancel On Block: -11. EXKiss Cancel On Block: -19	~
1326	sonya	44	~	9 | 29	10f	High	-16	3	25	44	MS Cancel On Block: +4. EXKiss Cancel On Block: -4	~
1327	sonya	d1	~	6	6f	Mid	-12	2, 0 vs Crouch	0	14, +12 vs Crouch	~	~
1328	sonya	d2	~	7	7f	High	-5	29, +22 vs Tech Roll	~	~	~	~
1329	sonya	d3	~	8	8f	Low	-9	1, +8 vs Crouch	3	13, +20 vs Crouch	~	~
1330	sonya	d4	~	12	12f	Low	0	12, +5 vs Crouch	26	32, +25 vs Crouch	MS Cancel On Block: +5. EXKiss Cancel On Block: -3	~
1331	sonya	b2	~	17	17f	High	0	3	26	21	MS Cancel On Block: +5. EXKiss Cancel On Block: -3	~
1332	sonya	b21	~	15 | 33	17f	Mid	0	2	24	23	MS Cancel On Block: +3. EXKiss Cancel On Block: -5	~
1333	sonya	b21f2	~	17 | 53	17f	Mid	-3	76, +52 vs Tech Roll	~	~	~	~
1334	sonya	b3	~	15	15f	Mid	-9	31, -2 vs Tech Roll	~	~	~	~
1335	sonya	b4	~	25	25f	Low	-1	21, +18 vs Tech Roll	~	~	~	~
1336	sonya	f2	~	19	19f	High	0	3	27	24	MS Cancel On Block: +6. EXKiss Cancel On Block: -2	~
1337	sonya	f22	~	24 | 43	19f	High	0	15	27	31	MS Cancel On Block: +6. EXKiss Cancel On Block: -2	~
1338	sonya	f224	~	26 | 53	19f	Overhead	0	62, +70 vs Tech Roll	~	~	~	~
1339	sonya	f4	~	22	22f	Overhead	0	50	~	~	~	~
1340	sonya	throw	~	10	10f	Special High	Unblockable	12	~	~	Backthrow is +7 On Hit	~
1341	sonya	db2	(Military Stance)	10	10f	~	~	~	~	~	Duration: 21-315f	~
1342	sonya	db21	(Military Stance 1)	11 | 21	21f	Mid	-4	21	~	~	~	~
1343	sonya	db21+3	(Military Stance 1+3)	12 | 22	22f	Overhead	-3	7	~	~	~	~
1344	sonya	db22	(Military Stance 2)	16 | 26	26f	Mid	-5	44, +52 vs Tech Roll	~	~	~	~
1345	sonya	db23	(Military Stance 3)	8 | 18	18f	Mid	-4	49, +32 vs Tech Roll	~	~	~	~
1346	sonya	db24	(Military Stance 4)	8, 23 | 18, 33	18f	Mid, Special High	0	49, +31 vs Tech Roll	~	~	~	~
1347	sonya	db2b2	(Military Stance b2)	14 | 24	24f	High	-8	68, +43 vs Tech Roll	~	~	~	~
1348	sonya	db2b4	(Military Stance b4)	12 | 22	22f	Low	-1	22, +12 vs Tech Roll	~	~	~	~
1349	sonya	db2f1	(Military Stance f1)	15, 32 | 25, 42	25f	Low	1	32, +19 vs Tech Roll	~	58, +45 vs Tech Roll	~	~
1350	sonya	bf2	(Energy Ring Blast)	20 (Full Screen: 44)	20f	Special High	-7 (Full Screen: +16)	12 (Full Screen: +37)	~	~	~	~
1351	sonya	bf4	(Leg Grab)	17	17f	Mid	-31	40, +28 vs Tech Roll	~	~	~	~
1352	sonya	db1	(Kiss)	37	37f	High	-7	36	~	55	~	~
1353	sonya	db4	(Arc Kick)	22-35	22-35f	Mid	~-20	~+20	~	~	~	~
1354	sonya	df3	(Kartwheel)	23, 29	23f	Mid	-3	62, +52 vs Tech Roll	~	~	~	~
1355	sonya	jd4	(Air Drop)	4 (Including Diagonal Jump: 10)	4f	Mid	-17 to -25	~+37	~	~	~	~
1356	sonya	jthrow	(Air Throw)	9	9f	~	Unblockable	?	~	~	~	~
1357	sonya	exbf2	(Rings Of Justice)	20, 47 (Full Screen: 44, 69)	20f	Special High, Mid	-4 (Full Screen: +18)	28 (Full Screen: +52)	~	~	7f Gap	~
1358	sonya	exbf4	(Krazy Legs)	17	17f	Mid	-31	11, +19 vs Tech Roll	~	~	~	~
1359	sonya	exdb1	(Deadly Kiss)	37-80	37-80f	High	-7	36	~	~	Duration: 29-108f (64f No Hold/Cancel)	~
1360	sonya	exdb4	(Arc Wave)	18-31	18-31f	Mid	~-20	~+20	~	~	Armor on frames: 17-34	~
1361	sonya	exdf3	(Kartwheel Bash)	23, 29	23f	Mid	-3	62, +51 vs Tech Roll	~	~	Armor on frames: 2-23	~
1362	sonya	exjd4	(Air Strikes)	4, 8, 19 (Including Diagonal Jump: 10)	4f	Mid	~-27	~+9	~	~	~	~
1363	sonya	xray	(SF Beat Down)	16, 31, 52, 75	16f	High, High, Mid, Mid	0	6	~	~	Invincibility On Frames: 1-2. Armor On Frames: 3-93	~
1364	sonya	breaker	~	~	~	~	~	~-1, ~-2 vs Tech Roll	~	~	Data Reflects When Grounded vs Grounded Opponent	~
1365	stryker	1	~	10	10f	High	0	0	19	25	~	~
1366	stryker	11	~	11	10f	High	0	6	20	26	~	~
1367	stryker	114	~	17	10f	Mid	-9	14, +1 vs Tech Roll	~	~	~	~
1368	stryker	12	~	9	10f	High	0	4	26	20	Gun Cancel On Block: +1	~
1369	stryker	2	~	18	18f	Mid	-2	5	23	30	~	~
1370	stryker	23	~	18	18f	Low	-17	1	7	25	~	~
1371	stryker	232	~	16	18f	Mid	-28	16, +6 vs Tech Roll	~	~	Gap?	~
1372	stryker	3	~	13	13f	Mid	-9	9, +1 vs Crouch	14	33, +25 vs Crouch	~	~
1373	stryker	4	~	8	8f	Mid	-12	3	9	24	~	~
1374	stryker	d1	~	6	6f	Mid	-13	1, -1 vs Crouch	1	15, +13 vs Crouch	~	~
1375	stryker	d2	~	7	7f	High	-5	31, +24 vs Tech Roll	~	~	~	~
1376	stryker	d3	~	7	7f	Low	-7	3, +10 vs Crouch	2	12, +19 vs Crouch	~	~
1377	stryker	d4	~	12	12f	Low	0	12, +5 vs Crouch	26	32, +25 vs Crouch	Gun Cancel On Block: +1	~
1378	stryker	b1	~	16	16f	High	0	5	13	17	~	~
1379	stryker	b12	~	11	16f	Mid	-7	3	14	24	~	~
1380	stryker	b122	~	14	16f	Mid	-2	49, +57 vs Tech Roll	~	~	~	~
1381	stryker	b2	~	19, 23, 27	19f	High	-17	2	19	38	~	~
1382	stryker	b21	~	21	19f	High	-8	24, +22 vs Tech Roll	~	~	~	~
1383	stryker	b2b4	~	27	19f	Low	-12	7, +3 vs Tech Roll	~	~	~	~
1384	stryker	b2f2	~	23	19f	High	0	58, +46 vs Tech Roll	~	~	Gap?	~
1385	stryker	b3	~	26	26f	Low	-3	6	16	25	~	~
1386	stryker	b32	~	24	26f	Overhead	-3	54, +43 vs Tech Roll	~	~	~	~
1387	stryker	b4	~	17	17f	Low	0	27, +19 vs Tech Roll	~	~	~	~
1388	stryker	throw	~	10	10f	Special High	Unblockable	8	~	~	Backthrow is +10 On Hit	~
1389	stryker	db4	(Baton Sweep)	27	27f	Low	-11	21	~	~	~	~
1390	stryker	db2	(High Grenade Toss)	22 (Full Screen: 54)	22f	Mid	-15	4	~	~	~	~
1391	stryker	db1	(Low Grenade Toss)	22 (Full Screen: 52)	22f	Mid	-15	4	~	~	~	~
1392	stryker	bf1	(Gun Shot)	26, 41 (Full Screen: 29, 44)	26f	High	-1	18	~	~	Duration: 25-242f (62f No Hold/Cancel)	~
1393	stryker	bf4	(Roll Toss)	21 (Max Range: 27)	21f	Mid	-7	7	~	~	~	~
1394	stryker	exdb4	(Baton Bash)	27, 60	27f	Low, Overhead	-4	26	~	~	6f Gap Between Hits	~
1395	stryker	exdb2	(Double High Grenade Toss)	22, 23 (Full Screen: 52, 54)	22f	Mid	-15	4	~	~	~	~
1396	stryker	exdb1	(Double Low Grenade Toss)	22, 23 (Full Screen: 52, 54)	22f	Mid	-15	4	~	~	~	~
1397	stryker	exbf1	(Bang Bang)	22, 30, 36, 42 (Full Screen: 25, 33, 40, 46)	22f	High	0	20	~	~	Duration: 21-241f (61f No Hold/Cancel)	~
1398	stryker	exbf4	(Roll Out)	21 (Full Screen: 28)	21f	Mid	-7	7	~	~	Armor On Frames: ?	~
1399	stryker	xray	(Busted)	34	34f	Mid	-35	-1	~	~	Invincibility On Frames: 1-2. Armor On Frames: ?	~
1400	stryker	breaker	~	~	~	~	~	~+3, ~+2 vs Tech Roll	~	~	Data Reflects When Grounded vs Grounded Opponent	~
1401	subzero	1	~	16	16f	High	0	0	25	32	~	~
1402	subzero	11	~	18 | 36	16f	High	0	4	19	11	~	~
1403	subzero	13	~	17 | 35	16f	Mid	-4	2	19	25	~	~
1404	subzero	13b4	~	21 | 64	16f	Low	-6	16, +13 vs Tech Roll	~	~	~	~
1405	subzero	13f4	~	17 | 60	16f	Overhead	-8	41, +49 vs Tech Roll	~	~	2f Gap	~
1406	subzero	2	~	9	9f	High	-3	1	20	24	~	~
1407	subzero	21	~	18 | 34	9f	Mid	0	48, +36 vs Tech Roll	18	64, +52	~	~
1408	subzero	212	~	24 | 67	9f	Mid	-11	40, +23 vs Tech Roll	28	79, +62	6f Gap	~
1409	subzero	214	~	19 | 62	9f	Mid	-9	46, +29 vs Tech Roll	20	71, +54	1f Gap	~
1410	subzero	22	~	10 | 26	9f	Mid	-6	4	19	29	~	~
1411	subzero	222	~	14 | 48	9f	Overhead	-37	31, +39 vs Tech Roll	~	~	~	~
1412	subzero	224	~	19 | 53	9f	Mid	-13	41, +49 vs Tech Roll	20	69, +52	~	~
1413	subzero	3	~	18	18f	Mid	0	3	19	18	~	~
1414	subzero	3f4	~	17 | 43	17f	Overhead	-8	41, +49 vs Tech Roll	~	~	~	~
1415	subzero	4	~	21	21f	Mid	-7	-2	~	~	~	~
1416	subzero	d1	~	7	7f	Mid	-14	-6, -8 vs Crouch	1	9, +7 vs Crouch	~	~
1417	subzero	d2	~	13	13f	High	-1	34, +27 vs Tech Roll	~	~	~	~
1418	subzero	d3	~	7	7f	Low	-8	2, +9 vs Crouch	2	12, +19 vs Crouch	~	~
1419	subzero	d4	~	8	8f	Low	0	8, +1 vs Crouch	22	28, +21 vs Crouch	~	~
1420	subzero	b1	~	12	12f	High	-2	4	19	25	~	~
1421	subzero	b12	~	24 | 44	12f	Overhead	0	37	20	50	5f Gap	~
1422	subzero	b121	~	31 | 82	12f	Overhead	-10	24	18	52	5f Gap Between b12. 11f Gap	~
1423	subzero	b124	~	37 | 88	12f	Low	0	33, +23 vs Tech Roll	~	~	5f Gap Between b12. 12 Gap	~
1424	subzero	b2	~	42-59	42-59f	Overhead	0	12 (Max Charge: +45, +69 vs Tech Roll)	~	~	Unblockable On Max Charge	~
1425	subzero	b4	~	16	16f	Low	-4	17, +14 vs Tech Roll	~	~	~	~
1426	subzero	f4	~	24	24f	Overhead	-13	1	14	28	~	~
1427	subzero	f41+2	~	15 | 52	24f	Mid	-41	0, -5 vs Tech Roll	~	~	1f Gap	~
1428	subzero	throw	~	10	10f	Special High	Unblockable	9	~	~	~	~
1429	subzero	df3	(Iceball)	24 (Full Screen: 52)	24f	Special High	-27 (Full Screen: +1)	96 (Full Screen: +125)	~	~	Airborne Opponent is Frozen for 99f, 74f Near Ground	~
1430	subzero	bf4	(Slide)	10	10f	Low	-35 (Full Screen: -16)	6 (Full Screen: +24)	~	~	~	https://i.imgur.com/8551yT1.jpg
1431	subzero	db1	(Ice Clone)	1	1f	~	~	?	~	~	Active Frames: 149	~
1432	subzero	db3	(Ice Puddle)	56	56f	Mid	Unblockable	111	~	~	~	~
1433	subzero	exdf3	(Icebeam)	20 (Full Screen: 36)	20f	Special High	-29	214	~	~	Airborne Opponent is Frozen for 115f	~
1434	subzero	exbf4	(Power Slide)	10 (Full Screen: 31)	10f	Low, Overhead	-35 (Full Screen: -21)	32, +15 vs Tech Roll (Full Screen: +31, +14 vs Tech Roll)	~	~	Armor On Frames: 2-23	~
1435	subzero	exdb1	(Ice Statue)	1	1f	~	~	?	~	~	Active Frames: 239	~
1436	subzero	exdb3	(Ground Freeze)	53 (Full Screen: 85)	53f	Mid	Unblockable	?	~	~	~	~
1437	subzero	xray	(Deep Freeze)	9-249	9-249f	Mid	-2	0	~	~	Invincibility On Frames: 1-2. Armor On Frames: 3-32	https://i.imgur.com/Owbk1Gh.jpg
1438	subzero	breaker	~	~	~	~	~	~+13, ~+12 vs Tech Roll	~	~	Data Reflects When Grounded vs Grounded Opponent	~
\.


--
-- Name: framedata_id_seq; Type: SEQUENCE SET; Schema: public; Owner: biggs
--

SELECT pg_catalog.setval('public.framedata_id_seq', 1438, true);


--
-- Name: framedata framedata_fighter_command_key; Type: CONSTRAINT; Schema: public; Owner: biggs
--

ALTER TABLE ONLY public.framedata
    ADD CONSTRAINT framedata_fighter_command_key UNIQUE (fighter, command);


--
-- Name: framedata framedata_pkey; Type: CONSTRAINT; Schema: public; Owner: biggs
--

ALTER TABLE ONLY public.framedata
    ADD CONSTRAINT framedata_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--


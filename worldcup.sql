{\rtf1\ansi\ansicpg1252\cocoartf2759
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fnil\fcharset0 Menlo-Regular;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;\red255\green255\blue255;\red96\green114\blue169;
\red216\green216\blue219;\red230\green170\blue255;\red140\green255\blue255;\red253\green184\blue123;\red200\green240\blue152;
\red255\green255\blue255;\red175\green210\blue255;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0;\cssrgb\c100000\c100000\c99971\c0;\cssrgb\c45218\c52734\c72173;
\cssrgb\c87759\c87761\c88609;\cssrgb\c92727\c73922\c100000;\cssrgb\c60177\c100000\c100000;\cssrgb\c99860\c77009\c55458;\cssrgb\c81904\c94415\c65825;
\cssrgb\c100000\c100000\c99956;\cssrgb\c73877\c86097\c100000;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs24 \cf2 \cb3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec4 --\cb3 \strokec5 \
\cb3 \strokec4 -- PostgreSQL database dump\cb3 \strokec5 \
\cb3 \strokec4 --\cb3 \strokec5 \
\
\cb3 \strokec4 -- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)\cb3 \strokec5 \
\cb3 \strokec4 -- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)\cb3 \strokec5 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec6 SET\cb3 \strokec5  statement_timeout \cb3 \strokec7 =\cb3 \strokec5  \cb3 \strokec8 0\cb3 \strokec5 ;\
\cb3 \strokec6 SET\cb3 \strokec5  \cb3 \strokec6 lock_timeout\cb3 \strokec5  \cb3 \strokec7 =\cb3 \strokec5  \cb3 \strokec8 0\cb3 \strokec5 ;\
\cb3 \strokec6 SET\cb3 \strokec5  idle_in_transaction_session_timeout \cb3 \strokec7 =\cb3 \strokec5  \cb3 \strokec8 0\cb3 \strokec5 ;\
\cb3 \strokec6 SET\cb3 \strokec5  client_encoding \cb3 \strokec7 =\cb3 \strokec5  \cb3 \strokec9 'UTF8'\cb3 \strokec5 ;\
\cb3 \strokec6 SET\cb3 \strokec5  standard_conforming_strings \cb3 \strokec7 =\cb3 \strokec5  \cb3 \strokec6 on\cb3 \strokec5 ;\
\cb3 \strokec6 SELECT\cb3 \strokec5  \cb3 \strokec10 pg_catalog\cb3 \strokec5 .\cb3 \strokec10 set_config\cb3 \strokec5 (\cb3 \strokec9 'search_path'\cb3 \strokec5 , \cb3 \strokec9 ''\cb3 \strokec5 , false);\
\cb3 \strokec6 SET\cb3 \strokec5  check_function_bodies \cb3 \strokec7 =\cb3 \strokec5  false;\
\cb3 \strokec6 SET\cb3 \strokec5  xmloption \cb3 \strokec7 =\cb3 \strokec5  content;\
\cb3 \strokec6 SET\cb3 \strokec5  client_min_messages \cb3 \strokec7 =\cb3 \strokec5  warning;\
\cb3 \strokec6 SET\cb3 \strokec5  row_security \cb3 \strokec7 =\cb3 \strokec5  \cb3 \strokec6 off\cb3 \strokec5 ;\
\
\cb3 \strokec6 DROP\cb3 \strokec5  \cb3 \strokec6 DATABASE\cb3 \strokec5  worldcup;\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec4 --\cb3 \strokec5 \
\cb3 \strokec4 -- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp\cb3 \strokec5 \
\cb3 \strokec4 --\cb3 \strokec5 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec6 CREATE\cb3 \strokec5  \cb3 \strokec6 DATABASE\cb3 \strokec5  \cb3 \strokec11 worldcup\cb3 \strokec5  \cb3 \strokec6 WITH\cb3 \strokec5  TEMPLATE \cb3 \strokec7 =\cb3 \strokec5  template0 \cb3 \strokec6 ENCODING\cb3 \strokec5  \cb3 \strokec7 =\cb3 \strokec5  \cb3 \strokec9 'UTF8'\cb3 \strokec5  LC_COLLATE \cb3 \strokec7 =\cb3 \strokec5  \cb3 \strokec9 'C.UTF-8'\cb3 \strokec5  LC_CTYPE \cb3 \strokec7 =\cb3 \strokec5  \cb3 \strokec9 'C.UTF-8'\cb3 \strokec5 ;\
\
\
\cb3 \strokec6 ALTER\cb3 \strokec5  \cb3 \strokec6 DATABASE\cb3 \strokec5  worldcup \cb3 \strokec6 OWNER\cb3 \strokec5  \cb3 \strokec6 TO\cb3 \strokec5  freecodecamp;\
\
\\\cb3 \strokec6 connect\cb3 \strokec5  worldcup\
\
\cb3 \strokec6 SET\cb3 \strokec5  statement_timeout \cb3 \strokec7 =\cb3 \strokec5  \cb3 \strokec8 0\cb3 \strokec5 ;\
\cb3 \strokec6 SET\cb3 \strokec5  \cb3 \strokec6 lock_timeout\cb3 \strokec5  \cb3 \strokec7 =\cb3 \strokec5  \cb3 \strokec8 0\cb3 \strokec5 ;\
\cb3 \strokec6 SET\cb3 \strokec5  idle_in_transaction_session_timeout \cb3 \strokec7 =\cb3 \strokec5  \cb3 \strokec8 0\cb3 \strokec5 ;\
\cb3 \strokec6 SET\cb3 \strokec5  client_encoding \cb3 \strokec7 =\cb3 \strokec5  \cb3 \strokec9 'UTF8'\cb3 \strokec5 ;\
\cb3 \strokec6 SET\cb3 \strokec5  standard_conforming_strings \cb3 \strokec7 =\cb3 \strokec5  \cb3 \strokec6 on\cb3 \strokec5 ;\
\cb3 \strokec6 SELECT\cb3 \strokec5  \cb3 \strokec10 pg_catalog\cb3 \strokec5 .\cb3 \strokec10 set_config\cb3 \strokec5 (\cb3 \strokec9 'search_path'\cb3 \strokec5 , \cb3 \strokec9 ''\cb3 \strokec5 , false);\
\cb3 \strokec6 SET\cb3 \strokec5  check_function_bodies \cb3 \strokec7 =\cb3 \strokec5  false;\
\cb3 \strokec6 SET\cb3 \strokec5  xmloption \cb3 \strokec7 =\cb3 \strokec5  content;\
\cb3 \strokec6 SET\cb3 \strokec5  client_min_messages \cb3 \strokec7 =\cb3 \strokec5  warning;\
\cb3 \strokec6 SET\cb3 \strokec5  row_security \cb3 \strokec7 =\cb3 \strokec5  \cb3 \strokec6 off\cb3 \strokec5 ;\
\
\cb3 \strokec6 SET\cb3 \strokec5  default_tablespace \cb3 \strokec7 =\cb3 \strokec5  \cb3 \strokec9 ''\cb3 \strokec5 ;\
\
\cb3 \strokec6 SET\cb3 \strokec5  default_table_access_method \cb3 \strokec7 =\cb3 \strokec5  heap;\
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec4 --\cb3 \strokec5 \
\cb3 \strokec4 -- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp\cb3 \strokec5 \
\cb3 \strokec4 --\cb3 \strokec5 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec6 CREATE\cb3 \strokec5  \cb3 \strokec6 TABLE\cb3 \strokec5  \cb3 \strokec11 public\cb3 \strokec5 .games (\
    game_id \cb3 \strokec6 integer\cb3 \strokec5  \cb3 \strokec6 NOT NULL\cb3 \strokec5 ,\
    \cb3 \strokec6 year\cb3 \strokec5  \cb3 \strokec6 integer\cb3 \strokec5  \cb3 \strokec6 NOT NULL\cb3 \strokec5 ,\
    round \cb3 \strokec6 character varying\cb3 \strokec5 (\cb3 \strokec8 50\cb3 \strokec5 ) \cb3 \strokec6 NOT NULL\cb3 \strokec5 ,\
    winner_id \cb3 \strokec6 integer\cb3 \strokec5  \cb3 \strokec6 NOT NULL\cb3 \strokec5 ,\
    opponent_id \cb3 \strokec6 integer\cb3 \strokec5  \cb3 \strokec6 NOT NULL\cb3 \strokec5 ,\
    winner_goals \cb3 \strokec6 integer\cb3 \strokec5  \cb3 \strokec6 NOT NULL\cb3 \strokec5 ,\
    opponent_goals \cb3 \strokec6 integer\cb3 \strokec5  \cb3 \strokec6 NOT NULL\cb3 \strokec5 \
);\
\
\
\cb3 \strokec6 ALTER\cb3 \strokec5  \cb3 \strokec6 TABLE\cb3 \strokec5  \cb3 \strokec10 public\cb3 \strokec5 .\cb3 \strokec10 games\cb3 \strokec5  \cb3 \strokec6 OWNER\cb3 \strokec5  \cb3 \strokec6 TO\cb3 \strokec5  freecodecamp;\
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec4 --\cb3 \strokec5 \
\cb3 \strokec4 -- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp\cb3 \strokec5 \
\cb3 \strokec4 --\cb3 \strokec5 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec6 CREATE\cb3 \strokec5  \cb3 \strokec6 SEQUENCE\cb3 \strokec5  \cb3 \strokec11 public\cb3 \strokec5 .games_game_id_seq\
    \cb3 \strokec6 AS\cb3 \strokec5  \cb3 \strokec6 integer\cb3 \strokec5 \
    \cb3 \strokec6 START\cb3 \strokec5  \cb3 \strokec6 WITH\cb3 \strokec5  \cb3 \strokec8 1\cb3 \strokec5 \
    INCREMENT \cb3 \strokec6 BY\cb3 \strokec5  \cb3 \strokec8 1\cb3 \strokec5 \
    \cb3 \strokec6 NO\cb3 \strokec5  MINVALUE\
    \cb3 \strokec6 NO\cb3 \strokec5  MAXVALUE\
    CACHE \cb3 \strokec8 1\cb3 \strokec5 ;\
\
\
\cb3 \strokec6 ALTER\cb3 \strokec5  \cb3 \strokec6 TABLE\cb3 \strokec5  \cb3 \strokec10 public\cb3 \strokec5 .\cb3 \strokec10 games_game_id_seq\cb3 \strokec5  \cb3 \strokec6 OWNER\cb3 \strokec5  \cb3 \strokec6 TO\cb3 \strokec5  freecodecamp;\
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec4 --\cb3 \strokec5 \
\cb3 \strokec4 -- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp\cb3 \strokec5 \
\cb3 \strokec4 --\cb3 \strokec5 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec6 ALTER\cb3 \strokec5  \cb3 \strokec6 SEQUENCE\cb3 \strokec5  \cb3 \strokec10 public\cb3 \strokec5 .\cb3 \strokec10 games_game_id_seq\cb3 \strokec5  OWNED \cb3 \strokec6 BY\cb3 \strokec5  \cb3 \strokec10 public\cb3 \strokec5 .\cb3 \strokec10 games\cb3 \strokec5 .game_id;\
\
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec4 --\cb3 \strokec5 \
\cb3 \strokec4 -- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp\cb3 \strokec5 \
\cb3 \strokec4 --\cb3 \strokec5 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec6 CREATE\cb3 \strokec5  \cb3 \strokec6 TABLE\cb3 \strokec5  \cb3 \strokec11 public\cb3 \strokec5 .teams (\
    team_id \cb3 \strokec6 integer\cb3 \strokec5  \cb3 \strokec6 NOT NULL\cb3 \strokec5 ,\
    \cb3 \strokec6 name\cb3 \strokec5  \cb3 \strokec6 character varying\cb3 \strokec5 (\cb3 \strokec8 30\cb3 \strokec5 ) \cb3 \strokec6 NOT NULL\cb3 \strokec5 \
);\
\
\
\cb3 \strokec6 ALTER\cb3 \strokec5  \cb3 \strokec6 TABLE\cb3 \strokec5  \cb3 \strokec10 public\cb3 \strokec5 .\cb3 \strokec10 teams\cb3 \strokec5  \cb3 \strokec6 OWNER\cb3 \strokec5  \cb3 \strokec6 TO\cb3 \strokec5  freecodecamp;\
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec4 --\cb3 \strokec5 \
\cb3 \strokec4 -- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp\cb3 \strokec5 \
\cb3 \strokec4 --\cb3 \strokec5 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec6 CREATE\cb3 \strokec5  \cb3 \strokec6 SEQUENCE\cb3 \strokec5  \cb3 \strokec11 public\cb3 \strokec5 .teams_team_id_seq\
    \cb3 \strokec6 AS\cb3 \strokec5  \cb3 \strokec6 integer\cb3 \strokec5 \
    \cb3 \strokec6 START\cb3 \strokec5  \cb3 \strokec6 WITH\cb3 \strokec5  \cb3 \strokec8 1\cb3 \strokec5 \
    INCREMENT \cb3 \strokec6 BY\cb3 \strokec5  \cb3 \strokec8 1\cb3 \strokec5 \
    \cb3 \strokec6 NO\cb3 \strokec5  MINVALUE\
    \cb3 \strokec6 NO\cb3 \strokec5  MAXVALUE\
    CACHE \cb3 \strokec8 1\cb3 \strokec5 ;\
\
\
\cb3 \strokec6 ALTER\cb3 \strokec5  \cb3 \strokec6 TABLE\cb3 \strokec5  \cb3 \strokec10 public\cb3 \strokec5 .\cb3 \strokec10 teams_team_id_seq\cb3 \strokec5  \cb3 \strokec6 OWNER\cb3 \strokec5  \cb3 \strokec6 TO\cb3 \strokec5  freecodecamp;\
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec4 --\cb3 \strokec5 \
\cb3 \strokec4 -- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp\cb3 \strokec5 \
\cb3 \strokec4 --\cb3 \strokec5 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec6 ALTER\cb3 \strokec5  \cb3 \strokec6 SEQUENCE\cb3 \strokec5  \cb3 \strokec10 public\cb3 \strokec5 .\cb3 \strokec10 teams_team_id_seq\cb3 \strokec5  OWNED \cb3 \strokec6 BY\cb3 \strokec5  \cb3 \strokec10 public\cb3 \strokec5 .\cb3 \strokec10 teams\cb3 \strokec5 .team_id;\
\
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec4 --\cb3 \strokec5 \
\cb3 \strokec4 -- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp\cb3 \strokec5 \
\cb3 \strokec4 --\cb3 \strokec5 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec6 ALTER\cb3 \strokec5  \cb3 \strokec6 TABLE\cb3 \strokec5  ONLY \cb3 \strokec10 public\cb3 \strokec5 .\cb3 \strokec10 games\cb3 \strokec5  \cb3 \strokec6 ALTER\cb3 \strokec5  COLUMN game_id \cb3 \strokec6 SET\cb3 \strokec5  \cb3 \strokec6 DEFAULT\cb3 \strokec5  nextval(\cb3 \strokec9 'public.games_game_id_seq'\cb3 \strokec5 ::regclass);\
\
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec4 --\cb3 \strokec5 \
\cb3 \strokec4 -- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp\cb3 \strokec5 \
\cb3 \strokec4 --\cb3 \strokec5 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec6 ALTER\cb3 \strokec5  \cb3 \strokec6 TABLE\cb3 \strokec5  ONLY \cb3 \strokec10 public\cb3 \strokec5 .\cb3 \strokec10 teams\cb3 \strokec5  \cb3 \strokec6 ALTER\cb3 \strokec5  COLUMN team_id \cb3 \strokec6 SET\cb3 \strokec5  \cb3 \strokec6 DEFAULT\cb3 \strokec5  nextval(\cb3 \strokec9 'public.teams_team_id_seq'\cb3 \strokec5 ::regclass);\
\
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec4 --\cb3 \strokec5 \
\cb3 \strokec4 -- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp\cb3 \strokec5 \
\cb3 \strokec4 --\cb3 \strokec5 \
\
\
\
\cb3 \strokec4 --\cb3 \strokec5 \
\cb3 \strokec4 -- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp\cb3 \strokec5 \
\cb3 \strokec4 --\cb3 \strokec5 \
\
\
\
\cb3 \strokec4 --\cb3 \strokec5 \
\cb3 \strokec4 -- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp\cb3 \strokec5 \
\cb3 \strokec4 --\cb3 \strokec5 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec6 SELECT\cb3 \strokec5  \cb3 \strokec10 pg_catalog\cb3 \strokec5 .\cb3 \strokec10 setval\cb3 \strokec5 (\cb3 \strokec9 'public.games_game_id_seq'\cb3 \strokec5 , \cb3 \strokec8 1\cb3 \strokec5 , false);\
\
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec4 --\cb3 \strokec5 \
\cb3 \strokec4 -- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp\cb3 \strokec5 \
\cb3 \strokec4 --\cb3 \strokec5 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec6 SELECT\cb3 \strokec5  \cb3 \strokec10 pg_catalog\cb3 \strokec5 .\cb3 \strokec10 setval\cb3 \strokec5 (\cb3 \strokec9 'public.teams_team_id_seq'\cb3 \strokec5 , \cb3 \strokec8 1\cb3 \strokec5 , false);\
\
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec4 --\cb3 \strokec5 \
\cb3 \strokec4 -- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp\cb3 \strokec5 \
\cb3 \strokec4 --\cb3 \strokec5 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec6 ALTER\cb3 \strokec5  \cb3 \strokec6 TABLE\cb3 \strokec5  ONLY \cb3 \strokec10 public\cb3 \strokec5 .\cb3 \strokec10 games\cb3 \strokec5 \
    \cb3 \strokec6 ADD\cb3 \strokec5  \cb3 \strokec6 CONSTRAINT\cb3 \strokec5  games_pkey \cb3 \strokec6 PRIMARY KEY\cb3 \strokec5  (game_id);\
\
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec4 --\cb3 \strokec5 \
\cb3 \strokec4 -- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp\cb3 \strokec5 \
\cb3 \strokec4 --\cb3 \strokec5 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec6 ALTER\cb3 \strokec5  \cb3 \strokec6 TABLE\cb3 \strokec5  ONLY \cb3 \strokec10 public\cb3 \strokec5 .\cb3 \strokec10 teams\cb3 \strokec5 \
    \cb3 \strokec6 ADD\cb3 \strokec5  \cb3 \strokec6 CONSTRAINT\cb3 \strokec5  teams_name_key \cb3 \strokec6 UNIQUE\cb3 \strokec5  (\cb3 \strokec6 name\cb3 \strokec5 );\
\
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec4 --\cb3 \strokec5 \
\cb3 \strokec4 -- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp\cb3 \strokec5 \
\cb3 \strokec4 --\cb3 \strokec5 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec6 ALTER\cb3 \strokec5  \cb3 \strokec6 TABLE\cb3 \strokec5  ONLY \cb3 \strokec10 public\cb3 \strokec5 .\cb3 \strokec10 teams\cb3 \strokec5 \
    \cb3 \strokec6 ADD\cb3 \strokec5  \cb3 \strokec6 CONSTRAINT\cb3 \strokec5  teams_pkey \cb3 \strokec6 PRIMARY KEY\cb3 \strokec5  (team_id);\
\
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec4 --\cb3 \strokec5 \
\cb3 \strokec4 -- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp\cb3 \strokec5 \
\cb3 \strokec4 --\cb3 \strokec5 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec6 ALTER\cb3 \strokec5  \cb3 \strokec6 TABLE\cb3 \strokec5  ONLY \cb3 \strokec10 public\cb3 \strokec5 .\cb3 \strokec10 games\cb3 \strokec5 \
    \cb3 \strokec6 ADD\cb3 \strokec5  \cb3 \strokec6 CONSTRAINT\cb3 \strokec5  games_opponent_id_fkey \cb3 \strokec6 FOREIGN KEY\cb3 \strokec5  (opponent_id) \cb3 \strokec6 REFERENCES\cb3 \strokec5  \cb3 \strokec10 public\cb3 \strokec5 .\cb3 \strokec10 teams\cb3 \strokec5 (team_id);\
\
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec4 --\cb3 \strokec5 \
\cb3 \strokec4 -- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp\cb3 \strokec5 \
\cb3 \strokec4 --\cb3 \strokec5 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec6 ALTER\cb3 \strokec5  \cb3 \strokec6 TABLE\cb3 \strokec5  ONLY \cb3 \strokec10 public\cb3 \strokec5 .\cb3 \strokec10 games\cb3 \strokec5 \
    \cb3 \strokec6 ADD\cb3 \strokec5  \cb3 \strokec6 CONSTRAINT\cb3 \strokec5  games_winner_id_fkey \cb3 \strokec6 FOREIGN KEY\cb3 \strokec5  (winner_id) \cb3 \strokec6 REFERENCES\cb3 \strokec5  \cb3 \strokec10 public\cb3 \strokec5 .\cb3 \strokec10 teams\cb3 \strokec5 (team_id);\
\
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec4 --\cb3 \strokec5 \
\cb3 \strokec4 -- PostgreSQL database dump complete\cb3 \strokec5 \
\cb3 \strokec4 --\cb3 \strokec5 \
\
\
}
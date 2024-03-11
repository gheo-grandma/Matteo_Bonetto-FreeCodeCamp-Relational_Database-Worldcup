{\rtf1\ansi\ansicpg1252\cocoartf2759
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fnil\fcharset0 Menlo-Regular;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;\red255\green255\blue255;\red96\green113\blue169;
\red216\green216\blue219;\red252\green136\blue146;\red139\green255\blue255;\red200\green240\blue152;\red175\green210\blue255;
\red255\green255\blue255;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0;\cssrgb\c100000\c100000\c99985\c0;\cssrgb\c45047\c52542\c72038;
\cssrgb\c87657\c87658\c88616;\cssrgb\c99871\c61382\c63884;\cssrgb\c60118\c100000\c100000;\cssrgb\c81923\c94447\c65975;\cssrgb\c73697\c85896\c100000;
\cssrgb\c100000\c100000\c99971;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs24 \cf2 \cb3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec4 #! /bin/bash\cb3 \strokec5 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec6 PSQL\cb3 \strokec7 =\cb3 \strokec8 "psql --username=freecodecamp --dbname=worldcup --no-align --tuples-only -c"\cb3 \strokec5 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec4 # Do not change code above this line. Use the PSQL variable above to query your database.\cb3 \strokec5 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec9 echo\cb3 \strokec5  \cb3 \strokec10 -e\cb3 \strokec5  \cb3 \strokec8 "\\nTotal number of goals in all games from winning teams:"\cb3 \strokec5 \
\cb3 \strokec9 echo\cb3 \strokec5  \cb3 \strokec8 "$(\cb3 \strokec6 $PSQL\cb3 \strokec8  "SELECT SUM(winner_goals) FROM games")"\cb3 \strokec5 \
\
\cb3 \strokec9 echo\cb3 \strokec5  \cb3 \strokec10 -e\cb3 \strokec5  \cb3 \strokec8 "\\nTotal number of goals in all games from both teams combined:"\cb3 \strokec5 \
\cb3 \strokec9 echo\cb3 \strokec5  \cb3 \strokec8 "$(\cb3 \strokec6 $PSQL\cb3 \strokec8  "SELECT SUM(winner_goals + opponent_goals) FROM games")"\cb3 \strokec5 \
\
\cb3 \strokec9 echo\cb3 \strokec5  \cb3 \strokec10 -e\cb3 \strokec5  \cb3 \strokec8 "\\nAverage number of goals in all games from the winning teams:"\cb3 \strokec5 \
\cb3 \strokec9 echo\cb3 \strokec5  \cb3 \strokec8 "$(\cb3 \strokec6 $PSQL\cb3 \strokec8  "SELECT AVG(winner_goals) FROM games")"\cb3 \strokec5 \
\
\cb3 \strokec9 echo\cb3 \strokec5  \cb3 \strokec10 -e\cb3 \strokec5  \cb3 \strokec8 "\\nAverage number of goals in all games from the winning teams rounded to two decimal places:"\cb3 \strokec5 \
\cb3 \strokec9 echo\cb3 \strokec5  \cb3 \strokec8 "$(\cb3 \strokec6 $PSQL\cb3 \strokec8  "SELECT ROUND(AVG(winner_goals), 2) FROM games")"\cb3 \strokec5 \
\
\cb3 \strokec9 echo\cb3 \strokec5  \cb3 \strokec10 -e\cb3 \strokec5  \cb3 \strokec8 "\\nAverage number of goals in all games from both teams:"\cb3 \strokec5 \
\cb3 \strokec9 echo\cb3 \strokec5  \cb3 \strokec8 "$(\cb3 \strokec6 $PSQL\cb3 \strokec8  "SELECT AVG(winner_goals + opponent_goals) FROM games")"\cb3 \strokec5 \
\
\cb3 \strokec9 echo\cb3 \strokec5  \cb3 \strokec10 -e\cb3 \strokec5  \cb3 \strokec8 "\\nMost goals scored in a single game by one team:"\cb3 \strokec5 \
\cb3 \strokec9 echo\cb3 \strokec5  \cb3 \strokec8 "$(\cb3 \strokec6 $PSQL\cb3 \strokec8  "SELECT MAX(winner_goals) FROM games")"\cb3 \strokec5 \
\
\cb3 \strokec9 echo\cb3 \strokec5  \cb3 \strokec10 -e\cb3 \strokec5  \cb3 \strokec8 "\\nNumber of games where the winning team scored more than two goals:"\cb3 \strokec5 \
\cb3 \strokec9 echo\cb3 \strokec5  \cb3 \strokec8 "$(\cb3 \strokec6 $PSQL\cb3 \strokec8  "SELECT COUNT(*) FROM games WHERE winner_goals > 2")"\cb3 \strokec5 \
\
\cb3 \strokec9 echo\cb3 \strokec5  \cb3 \strokec10 -e\cb3 \strokec5  \cb3 \strokec8 "\\nWinner of the 2018 tournament team name:"\cb3 \strokec5 \
\cb3 \strokec9 echo\cb3 \strokec5  \cb3 \strokec8 "$(\cb3 \strokec6 $PSQL\cb3 \strokec8  "SELECT DISTINCT name FROM teams JOIN games ON games.winner_id = teams.team_id WHERE games.year=2018 AND games.round ilike 'final'")"\cb3 \strokec5 \
\
\cb3 \strokec9 echo\cb3 \strokec5  \cb3 \strokec10 -e\cb3 \strokec5  \cb3 \strokec8 "\\nList of teams who played in the 2014 'Eighth-Final' round:"\cb3 \strokec5 \
\cb3 \strokec9 echo\cb3 \strokec5  \cb3 \strokec8 "$(\cb3 \strokec6 $PSQL\cb3 \strokec8  "SELECT name FROM teams JOIN games ON games.opponent_id = teams.team_id OR games.winner_id = teams.team_id WHERE games.year=2014 AND games.round ilike 'eighth-final' ORDER BY teams.name")"\cb3 \strokec5 \
\
\cb3 \strokec9 echo\cb3 \strokec5  \cb3 \strokec10 -e\cb3 \strokec5  \cb3 \strokec8 "\\nList of unique winning team names in the whole data set:"\cb3 \strokec5 \
\cb3 \strokec9 echo\cb3 \strokec5  \cb3 \strokec8 "$(\cb3 \strokec6 $PSQL\cb3 \strokec8  "SELECT DISTINCT name FROM teams JOIN games ON games.winner_id = teams.team_id ORDER BY name")"\cb3 \strokec5 \
\
\cb3 \strokec9 echo\cb3 \strokec5  \cb3 \strokec10 -e\cb3 \strokec5  \cb3 \strokec8 "\\nYear and team name of all the champions:"\cb3 \strokec5 \
\cb3 \strokec9 echo\cb3 \strokec5  \cb3 \strokec8 "$(\cb3 \strokec6 $PSQL\cb3 \strokec8  "SELECT DISTINCT games.year, teams.name FROM teams JOIN games ON games.winner_id = teams.team_id WHERE games.round ilike 'final' ORDER BY games.year")"\cb3 \strokec5 \
\
\cb3 \strokec9 echo\cb3 \strokec5  \cb3 \strokec10 -e\cb3 \strokec5  \cb3 \strokec8 "\\nList of teams that start with 'Co':"\cb3 \strokec5 \
\cb3 \strokec9 echo\cb3 \strokec5  \cb3 \strokec8 "$(\cb3 \strokec6 $PSQL\cb3 \strokec8  "SELECT name FROM teams WHERE name ILIKE 'Co%'")"\cb3 \strokec5 \
\
}
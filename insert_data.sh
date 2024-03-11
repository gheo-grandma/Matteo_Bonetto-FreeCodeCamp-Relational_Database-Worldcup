{\rtf1\ansi\ansicpg1252\cocoartf2759
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fnil\fcharset0 Menlo-Regular;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;\red255\green255\blue255;\red96\green114\blue169;
\red216\green216\blue219;\red230\green170\blue255;\red253\green184\blue123;\red140\green255\blue255;\red200\green240\blue152;
\red252\green135\blue145;\red175\green210\blue255;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0;\cssrgb\c100000\c100000\c99985\c0;\cssrgb\c45218\c52734\c72173;
\cssrgb\c87759\c87761\c88609;\cssrgb\c92727\c73922\c100000;\cssrgb\c99860\c77009\c55458;\cssrgb\c60177\c100000\c100000;\cssrgb\c81904\c94415\c65825;
\cssrgb\c99805\c61287\c63667;\cssrgb\c73877\c86097\c100000;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs24 \cf2 \cb3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec4 #! /bin/bash\cb3 \strokec5 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec6 if\cb3 \strokec5  [[ \cb3 \strokec7 $1\cb3 \strokec5  \cb3 \strokec8 ==\cb3 \strokec5  \cb3 \strokec9 "test"\cb3 \strokec5  ]]\
\cb3 \strokec6 then\cb3 \strokec5 \
  \cb3 \strokec10 PSQL\cb3 \strokec8 =\cb3 \strokec9 "psql --username=postgres --dbname=worldcuptest -t --no-align -c"\cb3 \strokec5 \
\cb3 \strokec6 else\cb3 \strokec5 \
  \cb3 \strokec10 PSQL\cb3 \strokec8 =\cb3 \strokec9 "psql --username=freecodecamp --dbname=worldcup -t --no-align -c"\cb3 \strokec5 \
\cb3 \strokec6 fi\cb3 \strokec5 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec4 # Do not change code above this line. Use the PSQL variable above to query your database.\cb3 \strokec5 \
\cb3 \strokec4 # clear database everytime the script is used to update it from the csv\cb3 \strokec5 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec11 echo\cb3 \strokec5  \cb3 \strokec9 $(\cb3 \strokec10 $PSQL\cb3 \strokec9  "TRUNCATE teams, games")\cb3 \strokec5 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec4 # reset serial sequence\cb3 \strokec5 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec11 echo\cb3 \strokec5  \cb3 \strokec9 $(\cb3 \strokec10 $PSQL\cb3 \strokec9  "SELECT setval('teams_team_id_seq', 1, false)")\cb3 \strokec5 \
\cb3 \strokec11 echo\cb3 \strokec5  \cb3 \strokec9 $(\cb3 \strokec10 $PSQL\cb3 \strokec9  "SELECT setval('games_game_id_seq', 1, false)")\cb3 \strokec5 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec4 # start reading csv file\cb3 \strokec5 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec11 cat\cb3 \strokec5  \cb3 \strokec9 games.csv\cb3 \strokec5  \cb3 \strokec8 |\cb3 \strokec5  \cb3 \strokec6 while\cb3 \strokec5  \cb3 \strokec10 IFS\cb3 \strokec8 =\cb3 \strokec9 ','\cb3 \strokec5  \cb3 \strokec11 read\cb3 \strokec5  \cb3 \strokec9 YEAR\cb3 \strokec5  \cb3 \strokec9 ROUND\cb3 \strokec5  \cb3 \strokec9 WINNER\cb3 \strokec5  \cb3 \strokec9 OPPONENT\cb3 \strokec5  \cb3 \strokec9 WINNER_GOALS\cb3 \strokec5  \cb3 \strokec9 OPPONENT_GOALS\cb3 \strokec5 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec6 do\cb3 \strokec5 \
  \cb3 \strokec4 # check if it's the first entry of the csv (aka title/names)\cb3 \strokec5 \
  \cb3 \strokec6 if\cb3 \strokec5  [[ \cb3 \strokec10 $YEAR\cb3 \strokec5  \cb3 \strokec8 -ne\cb3 \strokec5  \cb3 \strokec9 "year"\cb3 \strokec5  ]] \
  \cb3 \strokec6 then\cb3 \strokec5 \
\
    \cb3 \strokec4 # insert to the TEAMS table - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - \cb3 \strokec5 \
\
    \cb3 \strokec4 # THIS BLOCK OF CODE CHECKS IF WINNERS AND OPPONENTS HAVE ALREADY BEEN INSERTED INTO THE DATABASE.\cb3 \strokec5 \
    \cb3 \strokec4 # IF THE SELECT COMMAND DOESN'T RETURN ANY VALUE, THIS MEANS THE TEAM'S NAME HAS TO BE INSERTED.\cb3 \strokec5 \
    \cb3 \strokec4 # THE CODE FIRST CHECKS FOR THE WINNERS, THEN THE OPPONENTS. THIS TO PREVENT LEAVING BEHIND ANY TEAM THAT APPEARS ONLY ONCE IN THE CSV FILE.\cb3 \strokec5 \
\
    \cb3 \strokec4 # use WINNER\cb3 \strokec5 \
    \cb3 \strokec4 # get value\cb3 \strokec5 \
    \cb3 \strokec10 TEAM_ID\cb3 \strokec8 =\cb3 \strokec9 $(\cb3 \strokec10 $PSQL\cb3 \strokec9  "SELECT team_id FROM teams WHERE name='\cb3 \strokec10 $WINNER\cb3 \strokec9 '")\cb3 \strokec5 \
\
    \cb3 \strokec4 # check if it's not already in database\cb3 \strokec5 \
    \cb3 \strokec4 # add it to database if it's not already\cb3 \strokec5 \
    \cb3 \strokec6 if\cb3 \strokec5  [[ \cb3 \strokec8 -z\cb3 \strokec5  \cb3 \strokec10 $TEAM_ID\cb3 \strokec5  ]]\
    \cb3 \strokec6 then\cb3 \strokec5 \
      \cb3 \strokec10 INSERT_TEAM\cb3 \strokec8 =\cb3 \strokec9 $(\cb3 \strokec10 $PSQL\cb3 \strokec9  "INSERT INTO teams(name) VALUES('\cb3 \strokec10 $WINNER\cb3 \strokec9 ')")\cb3 \strokec5 \
      \cb3 \strokec10 TEAM_ID\cb3 \strokec8 =\cb3 \strokec9 $(\cb3 \strokec10 $PSQL\cb3 \strokec9  "SELECT team_id FROM teams WHERE name='\cb3 \strokec10 $WINNER\cb3 \strokec9 '")\cb3 \strokec5 \
    \cb3 \strokec6 fi\cb3 \strokec5 \
\
    \cb3 \strokec4 # use OPPONENT\cb3 \strokec5 \
    \cb3 \strokec4 # get value\cb3 \strokec5 \
    \cb3 \strokec10 TEAM_ID\cb3 \strokec8 =\cb3 \strokec9 $(\cb3 \strokec10 $PSQL\cb3 \strokec9  "SELECT team_id FROM teams WHERE name='\cb3 \strokec10 $OPPONENT\cb3 \strokec9 '")\cb3 \strokec5 \
\
    \cb3 \strokec4 # check if it's not already in database\cb3 \strokec5 \
    \cb3 \strokec4 # add it to database if it's not already\cb3 \strokec5 \
    \cb3 \strokec6 if\cb3 \strokec5  [[ \cb3 \strokec8 -z\cb3 \strokec5  \cb3 \strokec10 $TEAM_ID\cb3 \strokec5  ]]\
    \cb3 \strokec6 then\cb3 \strokec5 \
      \cb3 \strokec10 INSERT_TEAM\cb3 \strokec8 =\cb3 \strokec9 $(\cb3 \strokec10 $PSQL\cb3 \strokec9  "INSERT INTO teams(name) VALUES('\cb3 \strokec10 $OPPONENT\cb3 \strokec9 ')")\cb3 \strokec5 \
      \cb3 \strokec10 TEAM_ID\cb3 \strokec8 =\cb3 \strokec9 $(\cb3 \strokec10 $PSQL\cb3 \strokec9  "SELECT team_id FROM teams WHERE name='\cb3 \strokec10 $OPPONENT\cb3 \strokec9 '")\cb3 \strokec5 \
    \cb3 \strokec6 fi\cb3 \strokec5 \
\
\
    \cb3 \strokec4 # insert to the GAMES table - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - \cb3 \strokec5 \
\
    \cb3 \strokec4 # THIS BLOCK OF CODE ASSUMES THE TEAMS TABLE IS ALREADY FILLED.\cb3 \strokec5 \
    \cb3 \strokec4 # IT FETCHES THE CORRECT ID FOR WINNER AND OPPONENT, THEN USES IT TO FILL THE GAMES TABLE.\cb3 \strokec5 \
    \cb3 \strokec10 WINNER_ID\cb3 \strokec8 =\cb3 \strokec9 $(\cb3 \strokec10 $PSQL\cb3 \strokec9  "SELECT team_id FROM teams WHERE name='\cb3 \strokec10 $WINNER\cb3 \strokec9 '")\cb3 \strokec5 \
    \cb3 \strokec10 OPPONENT_ID\cb3 \strokec8 =\cb3 \strokec9 $(\cb3 \strokec10 $PSQL\cb3 \strokec9  "SELECT team_id FROM teams WHERE name='\cb3 \strokec10 $OPPONENT\cb3 \strokec9 '")\cb3 \strokec5 \
\
    \cb3 \strokec10 INSERT_GAME\cb3 \strokec8 =\cb3 \strokec9 $(\cb3 \strokec10 $PSQL\cb3 \strokec9  "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES(\cb3 \strokec10 $YEAR\cb3 \strokec9 , '\cb3 \strokec10 $ROUND\cb3 \strokec9 ', \cb3 \strokec10 $WINNER_ID\cb3 \strokec9 , \cb3 \strokec10 $OPPONENT_ID\cb3 \strokec9 , \cb3 \strokec10 $WINNER_GOALS\cb3 \strokec9 , \cb3 \strokec10 $OPPONENT_GOALS\cb3 \strokec9 )")\cb3 \strokec5 \
    \
  \cb3 \strokec6 fi\cb3 \strokec5 \
\cb3 \strokec6 done\cb3 \strokec5 \
}
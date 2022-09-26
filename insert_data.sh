#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

echo "$($PSQL "TRUNCATE TABLE games, teams;")"

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  if [[ $WINNER != "winner" ]]
  then
    TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
        if [[ -z $TEAM_ID ]]
        then
          INSERT_INTO_TEAMS=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
            if [[ $INSERT_INTO_TEAMS == "INSERT 0 1" ]]
            then
              echo Inserted into teams, $WINNER
            fi
        fi
  if [[ $OPPONENT != "opponent" ]]
  then
    TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
      if [[ -z $TEAM_ID ]]
      then
      INSERT_INTO_TEAMS2=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")
        if [[ $INSERT_INTO_TEAMS2 == "INSERT 0 1" ]]
        then
          echo Inserted into teams, $OPPONENT
        fi
      fi
    fi
  fi
    
    WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
    OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")

  if [[ -n $WINNER_ID || -n $OPPONENT_ID ]]
  then
    if [[ $YEAR != "year" ]]
    then
      INSERT_INTO_GAMES=$($PSQL "INSERT INTO games(year, round,  winner_id, opponent_id, winner_goals, opponent_goals) VALUES($YEAR, '$ROUND', $WINNER_ID, $OPPONENT_ID, $WINNER_GOALS, $OPPONENT_GOALS)")
      if [[ $INSERT_INTO_GAMES == "INSERT 0 1" ]]
      then
        echo Inserted into games, $YEAR $ROUND $WINNER $OPPONENT $WINNER_GOALS $OPPONENT_GOALS
      fi  
    fi
  fi
done
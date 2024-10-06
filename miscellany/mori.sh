#!/bin/bash

RED="\033[41m \033[0m"
GREEN="\033[42m \033[0m"
GAP=" "

birthdate="2000-03-14"
name="Kumaran"

life_expectancy=65
last_year_index=$((life_expectancy - 1))

case "$(uname)" in
  "Linux")
    birth_year=$(date -d "$birthdate" +"%Y")
    birth_timestamp=$(date -d "$birthdate" +%s)
    ;;
  "Darwin")
    birth_year=$(date -j -f "%Y-%m-%d" "$birthdate" +"%Y")
    birth_timestamp=$(date -j -f "%Y-%m-%d" "$birthdate" +%s)
    ;;
  *) echo "Unsupported OS"; exit 1 ;;
esac

current_year=$(date +"%Y")
current_timestamp=$(date +%s)
years_passed=$((current_year - birth_year))
weeks_passed=$(( (current_timestamp - birth_timestamp) / 604800 ))
total_weeks=$((life_expectancy * 52))
weeks_remaining=$((total_weeks - weeks_passed))
last_year=$((birth_year + last_year_index))
spent=$(( weeks_passed * 100 / total_weeks ))
width=$(tput cols)
red_blocks=$((weeks_passed * width / total_weeks))

echo "$name, only $weeks_remaining Sundays remain - $spent% ($weeks_passed) Sundays spent"
for (( block=0; block<$width; block++ )); do
  if (( block <= red_blocks ))
  then
    echo -ne "${RED}"
  else
    echo -ne "${GREEN}"
  fi
done
echo

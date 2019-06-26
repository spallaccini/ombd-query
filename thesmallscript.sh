#!/bin/bash
# EDIT YOUR OMDB KEY first!
my_omdb_key=f7b2d98f
read -p "Enter a film name and you'll get Rotten Tomatoes rating! -> " film
echo "You asked for: '"$film"'. Let's see!"
film=$( echo "$film" | tr ' ' '+')
value=$(python omdbtool.py --apikey $my_omdb_key -t $film | grep Rotten | cut -d ":" -f2)
if [ -z "$value" ]; then
	echo "Oops! Seems that the movie named '"$film"' can't be found in OMDB..."
else
	echo "Got it! And here comes your rating :"$value
fi

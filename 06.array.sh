#!/bin/bash

movies=("RRR" "A-aa" "F2")

# list always starts with 0
# size of the above array is 3
# index of the above array is 2

echo " fist movie is : ${movies[0]} "
echo " second movie is : ${movies[1]} "
echo " Third movie is : ${movies[2]} "
echo " List all movies : ${movies[@]} "
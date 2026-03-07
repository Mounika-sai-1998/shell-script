#!/bin/bash

SOURCE_DIRECTORY=/app/app-logs



if [ -d $SOURCE_DIRECTORY ]
then 
    echo "source directoty exists"
else 
     echo "please make sure $SOURCE_DIRECORY exists"
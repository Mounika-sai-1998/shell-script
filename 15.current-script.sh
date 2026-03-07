#!/bin/bash

COURSE="Devops from current script"
echo  "before calling a script , course : $COURSE"
echo "processID of current script : $$"

./16.other-script.sh

echo "after calling a script , course : $COURSE"

#! /bin/env bash

file="$1"

if [ "$file" = "" ]
then
    file="$(./.default)"
else
    echo "$file" > ./.default
fi

just "run" "$file"

exit 0
#!/usr/bin/bash
# Read and extract the 20 first lines of each manual listed in a file
# Clean them from empty and non interesting information
# This stuff is made to be use as fortune-mod

# This software is GPLv2 more information at gnu.org

# Author: Aurélien DESBRIÈRES
# aurelien@hackers.camp

#!/bin/bash

#compgen -c > LIST

#while read -r LINE; do
#    MANWIDHT=80 man "$LINE" | head -20 | grep -v -e -f LIST | grep -v '^$' && echo
#done < LIST > list | sed -i -e 's/^$/%/' list
#cat list > fortune-rtfm

compgen -c | while read -r LINE; do
    MANWIDHT=80 man "$LINE" | head -20 | grep -v -f words | grep -v '^$' && echo
done | sed -e 's/^$/%/' > fortune-rtfm
sed -i 's/^ *//' fortune-rtfm

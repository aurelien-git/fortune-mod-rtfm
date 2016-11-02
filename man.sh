#!/usr/bin/bash
# Read and extract the 20 first lines of each manual listed in a file
# Clean them from empty and non interesting information
# This stuff is made to be use as fortune-mod

# This software is GPLv2 more information at gnu.org

# Author: Aurélien DESBRIÈRES
# aurelien@hackers.camp

# generate the list
compgen -c > man

# extract each man of the list
while read -r LINE; do
    MANWIDHT=80 man "$LINE" | head -20 | grep -v NAME | grep -v 1 | grep -v SYNOPSIS | grep -v SYNOPSYS | grep -v OVERVIEW | grep -v VERSION | grep -v VERSION | grep -v INTRODUCTION | grep -v 5 | grep -v ABSTRACT | grep -v 4 | grep -v DESCRIPTION | grep -v COPYRIGHT | grep -v ABRT | grep -v SEE | grep -v 8 | grep -v case | grep -v 2 | grep -v STATUS | grep -v CHECK | grep -v UNIX | grep -v FORTUNE | grep -v PROLOG | grep -v Usage | grep -v Help | grep -v Introduction | grep -v Local | grep -v ARGUMENTS | grep -v SYNTAX | grep -v NOTE | grep -v QUERYING | grep -v 3 | grep -v Description | grep -v Note | grep -v Name | grep -v COPYING | grep -v COMMAND | grep -v USAGE | grep -v EXAMPLE | grep -v 3 | grep -v OPTIONS | grep -v AUTHOR | grep -v DOCUMENTS | grep -v SUMMARY | grep -v -e '^$' && echo -en '\n'
done < man > man1

# add the % to each empty line
sed -i -e 's/^$/%/' man1

# merge to fortune-security db
cat man1 > fortune-security

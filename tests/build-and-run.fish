#!/usr/bin/env fish

clear
gren make src/Main.gren
and node app
rm app

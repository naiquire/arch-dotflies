#!/bin/bash

awww img $1 -t grow --transition-duration 1
wal --cols16 -i $1

# update applications
# pywalfox update # firefox

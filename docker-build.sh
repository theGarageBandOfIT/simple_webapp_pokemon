#!/usr/bin/env bash

# Note: to understand string manipulation syntax used here, see:
# https://www.thegeekstuff.com/2010/07/bash-string-manipulation/

for p in $(ls -1 index-*.html)
do
  p1=${p#*-}
  p2=${p1%.*}
  echo ${p} - ${p2}
  docker image build --build-arg mypokemon=${p2} --tag thegaragebandofit/simple-webapp-pokemon:${p2}-1.0 .
done
#!/usr/bin/bash
url=$(playerctl metadata mpris:artUrl)
artist=$(playerctl metadata xesam:artist)
album=$(playerctl metadata xesam:album)
metadata=$(printf "$artist - $album")

if [ $url == "No player found" ]
then
  exit
elif [ -f /home/yazid/.cache/albumart/"$metadata".png ]
then
  echo /home/yazid/.cache/albumart/"$metadata".png
else
  curl -s $url -o /home/yazid/.cache/albumart/"$metadata"
  magick /home/yazid/.cache/albumart/"$metadata" /home/yazid/.cache/albumart/"$metadata".png
  rm /home/yazid/.cache/albumart/"$metadata"
  echo /home/yazid/.cache/albumart/"$metadata".png
fi


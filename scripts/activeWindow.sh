#!/bin/bash
#echo `osascript ./chunkbar.widget/scripts/currentWindow.scpt`

#echo $(/usr/local/bin/chunkc tiling::query -w tag)


if [ "$(/usr/local/bin/chunkc tiling::query -w tag)" == "?" ]
then
  echo "MacOS - "
else
  echo "$(/usr/local/bin/chunkc tiling::query -w tag)"
fi

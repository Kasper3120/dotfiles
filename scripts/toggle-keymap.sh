#!/bin/bash
layout=$(setxkbmap -query | awk '/layout/ {print $2}')
variant=$(setxkbmap -query | awk '/variant/ {print $2}')
if [[ "$layout" == "pl" && "$variant" == "dvp" ]]; then
    setxkbmap pl
else
    setxkbmap pl -variant dvp
fi

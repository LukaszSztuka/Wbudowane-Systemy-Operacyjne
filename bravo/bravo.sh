#!/bin/bash
echo "Witaj w systemie GhostWriter."
while inotifywait -q -e modify /home/user/Pulpit/Projekt/log.txt;
do
    bash /home/user/Pulpit/Projekt/s2.sh
done
$SHELL

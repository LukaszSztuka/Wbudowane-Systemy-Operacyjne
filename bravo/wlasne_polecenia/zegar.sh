#!/bin/bash



if hash toilet 2> /dev/null; then

    echo "Colorful Date :)" | toilet -f mini --gay

    sleep 0.9



    echo "$(date '+%D %T' | toilet -f term -F border --gay)"

    sleep 1



else

    echo "Please install toilet: sudo apt-get install toilet"

    exit 0

fi
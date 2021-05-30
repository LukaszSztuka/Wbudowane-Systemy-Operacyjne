#!/bin/bash
echo "Witaj w systemie GhostWriter."
while true; 
do
    userinput=""
    koniec="koniec"
    destdir=/home/user/Pulpit/Projekt/log.txt
    echo "Wpisz komende i zatwierdź enterem"
    # odczytaj literę
    while read -s -N 1 key
    do
        # Po kliknięciu Enter zakończ działanie
        if [[ $key == $'\x0a' ]];
            then
            break;
        fi
        # Zapisz odczytane znaki jako zmienną
        userinput+=$key
        printf "$key"
    done

    if [ $userinput == $koniec ];then 
        echo "koniec" > $destdir
        sshpass -p 'HASŁO' scp /home/user/Pulpit/Projekt/log.txt user@10.0.2.15:/home/user/Pulpit/Projekt #Uzupełnić hasło i ip
        sleep 1;
        /sbin/shutdown -h now 
    fi 
     
    printf "\nWpisałeś : $userinput\n"
    echo "$userinput" > "$destdir"
    sshpass -p 'HASŁO' scp /home/user/Pulpit/Projekt/log.txt user@TUTAJ_IP:/home/user/Pulpit/Projekt #Uzupełnić hasło i ip
done
$SHELL

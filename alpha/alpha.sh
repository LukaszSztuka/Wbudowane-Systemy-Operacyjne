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
        echo "koniec" > "$destdir"
        sshpass -p '1234' scp log.txt user@10.0.2.15:/home/user/Pulpit/Projekt
        printf "\n" 
        break; 
    fi 
     
    printf "\nWpisałeś : $userinput\n"
    echo "$userinput" > "$destdir"
    sshpass -p 'TU_HASŁO' scp /home/user/Pulpit/Projekt/log.txt user@TU_IP:/home/user/Pulpit/Projekt # Uzupełnić hasło i IP; uwaga ta metoda jest średnio bezpieczna
done
$shell

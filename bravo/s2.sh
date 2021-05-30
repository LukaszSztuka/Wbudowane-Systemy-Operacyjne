#!/bin/bash
while read line; 
do
        echo "Odczytana komenda: $line"

    case $line in
        "zegar")
            bash /home/user/Pulpit/Projekt/wlasne_polecenia/zegar.sh;;
        "pokalwa")
            bash /home/user/Pulpit/Projekt/wlasne_polecenia/pokalwa.sh;;
        "pwr")
            bash /home/user/Pulpit/Projekt/wlasne_polecenia/pwr.sh;;
        "info")
            bash /home/user/Pulpit/Projekt/wlasne_polecenia/info.sh;;
        "koniec")
            bash /home/user/Pulpit/Projekt/wlasne_polecenia/koniec.sh;;
        *)
            echo "#!/bin/bash" > /home/user/Pulpit/Projekt/wlasne_polecenia/bash_script.sh
            echo "$line " >> /home/user/Pulpit/Projekt/wlasne_polecenia/bash_script.sh
            bash /home/user/Pulpit/Projekt/wlasne_polecenia/bash_script.sh;;
    esac;
done < /home/user/Pulpit/Projekt/log.txt

#!/bin/bash

#Name cool of my program
change_wallpaper() {
    img=("Fucking.webp" "dino.svg" "NeyLeft.svg" "rock_paper_scissors.jpg" "dioses.png")
    for i in ${img[@]}
    do
        gsettings set org.gnome.desktop.background picture-uri-dark /home/ney/Imágenes/Fondos\ de\ escritorio/$i
        sleep 5s
    done

}

start() {
    change_wallpaper &
    PID=$!
    echo $PID> /home/ney/Documentos/bash/wallpaper/bash-script.pid
}

stop () {
    kill -9 $(cat /home/ney/Documentos/bash/wallpaper/bash-script.pid)
}

if [ $1 == 'start' ]; then
    start
fi

if [ $1 == 'stop' ]; then
    stop
fi

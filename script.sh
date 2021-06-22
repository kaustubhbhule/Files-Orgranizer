#! /bin/bash

run(){

    for f in *.odt *.ods *.odp *.odg *.docx *.doc *.csv *.xlsx *.ppt *.pptx *.pdf *.txt; do
        if [ -f "$f" ] 
        then
            mkdir -p Documents
            mv "$f" "Documents"
            echo "Moving $f to Documents..."
        fi
    done

    for f in *.jpg *.jpeg *.png *.img *.bmp *.ico; do
        if [ -f "$f" ]
        then
            mkdir -p Images
            mv "$f" "Images"
            echo "Moving $f to Images..."
        fi
    done

    for f in *.mp3 *.wav *.wma; do
        if [ -f "$f" ]
        then
            mkdir -p Audios
            mv "$f" "Audios"
            echo "Moving $f to Audios..."
        fi
    done

    for f in *.mp4 *.mkv *.wmv *.webm *.gif; do
        if [ -f "$f" ]
        then
            mkdir -p Videos
            mv "$f" "Videos"
            echo "Moving $f to Videos..."
        fi
    done

    for f in *.zip *.rar *.tar *.gz *.xz *.7zip; do
        if [ -f "$f" ]
        then
            mkdir -p Archives
            mv "$f" "Archives"
            echo "Moving $f to Archives..."
        fi
    done

    for f in *; do
        if [ -f "$f" ] && [ "$f" != script.sh ]
        then
            mkdir -p Others
            mv "$f" "Others"
            echo "Moving $f to Others..."
        fi
    done
}

if [ $1 ]
then
    if [ -d "$1" ]
    then
        cd "$1"
        run
        echo -e '\033[0;36mProcess Completed...'
    else     
        echo -e '\033[0;31mNo such directory'
    fi
else
    run
    echo -e '\033[0;36mProcess Completed...'
fi


#!/bin/bash

echo "=== התקנת Sn0int - מסגרת עבודה חצי-אוטומטית ל-OSINT ==="
echo "בחר את מערכת ההפעלה שלך:"
echo "1. Debian/Ubuntu/Kali"
echo "2. Arch Linux"
echo "3. MacOS (באמצעות Homebrew)"
echo "4. Alpine"
echo "5. OpenBSD"
echo "6. Docker"

read -p "הכנס את מספר האפשרות: " os_choice

case $os_choice in
    1)
        echo "מתקין ב-Debian/Ubuntu/Kali..."
        sudo apt install -y curl sq
        curl -sSf https://apt.vulns.sexy/kpcyrd.pgp | sq dearmor | sudo tee /etc/apt/trusted.gpg.d/apt-vulns-sexy.gpg > /dev/null
        echo deb http://apt.vulns.sexy stable main | sudo tee /etc/apt/sources.list.d/apt-vulns-sexy.list
        sudo apt update
        sudo apt install -y sn0int
        ;;
    2)
        echo "מתקין ב-Arch Linux..."
        sudo pacman -S sn0int
        ;;
    3)
        echo "מתקין ב-MacOS..."
        brew install sn0int
        ;;
    4)
        echo "מתקין ב-Alpine..."
        apk add sn0int
        ;;
    5)
        echo "מתקין ב-OpenBSD..."
        pkg_add sn0int
        ;;
    6)
        echo "הפעלה באמצעות Docker..."
        mkdir -p "$PWD/.cache" "$PWD/.data"
        docker run --rm --init -it -v "$PWD/.cache:/cache" -v "$PWD/.data:/data" ghcr.io/kpcyrd/sn0int
        ;;
    *)
        echo "בחירה לא תקינה, יציאה..."
        exit 1
        ;;
esac

echo "Sn0int הותקן בהצלחה! הפעל באמצעות הפקודה 'sn0int'"
echo "למידע נוסף והוראות שימוש: https://sn0int.readthedocs.io/"

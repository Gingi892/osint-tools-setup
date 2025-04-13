#!/bin/bash

echo "=== התקנת TorBot - כלי OSINT ל-Dark Web ==="

# וודא שגיט מותקן
if ! command -v git &> /dev/null; then
    echo "Git אינו מותקן. מתקין..."
    sudo apt update
    sudo apt install -y git
fi

# וודא ש-Python3 וכלי פיתוח מותקנים
if ! command -v python3 &> /dev/null; then
    echo "Python3 אינו מותקן. מתקין..."
    sudo apt update
    sudo apt install -y python3 python3-pip python3-venv
fi

# הורד את המאגר
echo "מוריד את TorBot..."
git clone https://github.com/DedSecInside/TorBot.git
cd TorBot

# צור סביבה וירטואלית
echo "יוצר סביבה וירטואלית..."
python3 -m venv venv
source venv/bin/activate

# התקן תלויות
echo "מתקין תלויות..."
pip install -r requirements.txt

echo "TorBot הותקן בהצלחה!"
echo "הפעל באמצעות הפקודות הבאות:"
echo "cd TorBot"
echo "source venv/bin/activate"
echo "python3 torbot.py -h"

echo "\nלדוגמה, כדי לבצע סריקה בסיסית:"
echo "python3 torbot.py -u http://zqktlwiuavvvqqt4ybvgvi7tyo4hjl5xgfuvpdf6otjiycgwqbym2qad.onion"

echo "\nשים לב: עליך להתקין ולהפעיל את Tor Browser או שירות Tor לפני שימוש בכלי"

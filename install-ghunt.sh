#!/bin/bash

echo "=== התקנת GHunt - מסגרת Google תוקפנית ==="

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
echo "מוריד את GHunt..."
git clone https://github.com/mxrch/GHunt
cd GHunt

# צור סביבה וירטואלית
echo "יוצר סביבה וירטואלית..."
python3 -m venv venv
source venv/bin/activate

# התקן תלויות
echo "מתקין תלויות..."
pip install -r requirements.txt

echo "GHunt הותקן בהצלחה!"
echo "הפעל באמצעות הפקודות הבאות:"
echo "cd GHunt"
echo "source venv/bin/activate"
echo "python3 ghunt.py email user@example.com"

echo "\nהוראות שימוש מלאות:"
echo "1. תחילה יש להגדיר קובצי cookie בפעם הראשונה: python3 ghunt.py login"
echo "2. לאחר מכן ניתן לחפש לפי אימייל: python3 ghunt.py email user@example.com"
echo "3. או לחפש לפי שם משתמש: python3 ghunt.py gaia username123"

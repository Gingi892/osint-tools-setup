# התקנת כלי OSINT מובילים

מאגר זה מכיל סקריפטים להתקנה קלה של כלי OSINT (Open Source Intelligence) פופולריים.

## הכלים הכלולים

### 1. sn0int
מסגרת עבודה חצי-אוטומטית ל-OSINT עם מנהל חבילות. מאפשרת איסוף מידע ממגוון מקורות כגון certificate transparency logs, passive DNS, שרתי PGP ועוד.

### 2. TorBot
כלי OSINT המיועד למחקר ב-Dark Web. מאפשר סריקה ואיסוף מידע מאתרי .onion ברשת Tor.

### 3. GHunt
מסגרת לחיפוש מידע על משתמשי Google. מאפשר איסוף נתונים מחשבונות Google על בסיס כתובת אימייל או מזהה משתמש.

## הוראות התקנה

1. הורד את המאגר הזה לשרת שלך:
```bash
git clone https://github.com/Gingi892/osint-tools-setup.git
cd osint-tools-setup
```

2. הפוך את הסקריפטים לניתנים להרצה:
```bash
chmod +x install-*.sh
```

3. הרץ את סקריפט ההתקנה הרצוי:
```bash
./install-sn0int.sh
./install-torbot.sh
./install-ghunt.sh
```

## הערות חשובות

- עבור TorBot, צריך להתקין ולהפעיל שירות Tor או Tor Browser לפני השימוש בכלי
- עבור GHunt, צריך להגדיר קובצי cookie בפעם הראשונה באמצעות הפקודה `python3 ghunt.py login`
- בעת השימוש בכלים אלה, יש לוודא שפעולותיך עומדות בחוקים ובמדיניות האתר הרלוונטי

## דרישות מערכת

- Linux (Ubuntu/Debian/Kali מומלץ) או MacOS
- Python 3.6+
- Git
- pip
- venv (לסביבות וירטואליות של Python)

## קישורים למידע נוסף

- [sn0int Documentation](https://sn0int.readthedocs.io/)
- [TorBot GitHub](https://github.com/DedSecInside/TorBot)
- [GHunt GitHub](https://github.com/mxrch/GHunt)

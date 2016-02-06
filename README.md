#PHP respect/validation exception messages translation with gettext

##Available translations
- French

##How to create  a new translation
Composer is needed.

``` Bash
composer install
./extract.sh <translation_name>
```

You'll end up with three generated files :
- api.txt : contains file & string associated ( in case you need a central file to search a context while translating )
- gettext.php : a PHP file containing only the gettext calls ( needed by php2po )
- pot/<translation_name>.pot : the file ready to translate from english

I used a combination of POedit and manual/regexp search & replace to accelerate the translation of (numerous) repetitive words.  
The end result may not be perfect yet, and there might be some expressions missing. Don't hesitate to send me a better grep/extracting method for extract.sh.

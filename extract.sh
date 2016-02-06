#!/bin/sh

echo "Downloading respect/validation exceptions strings"
rm -rf ./Exceptions
svn export https://github.com/Respect/Validation/trunk/library/Exceptions
echo "Extracting strings"
grep -REo "'[^$%]{15,}'" Exceptions > api.txt
echo "<?php " > gettext.php
grep -REoh "'[^$%]{15,}'" api.txt | sed -e "s/\(.*\)/_(\1);/" >> gettext.php
php vendor/bin/gettext-extractor.php -f gettext.php > pot/$1.pot
echo "Strings extracted into pot/$1.pot"
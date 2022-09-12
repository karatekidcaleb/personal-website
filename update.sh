#!/usr/bin/env bash
shopt -s extglob
rm -fr !("composer.json"|"s3test.php"|"composer.lock"|"vendor"|"update.sh")
git clone https://github.com/karatekidcaleb/personal-website.git
cd personal-website
cp -r !(*.md) ..
cd ..
rm -fr personal-website
echo "Webserver updated, exit status:" $?
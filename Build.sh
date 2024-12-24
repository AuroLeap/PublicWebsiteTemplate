#!/bin/ash
echo Starting build script...
SCRIPTPATH=$(dirname "$SCRIPT")
echo Deleting old build directory if it exists
rm -r $SCRIPTPATH/build
echo "$SCRIPTPATH"
echo Copying root assets so github readme file can be embedded into website file.
cp -R -a $SCRIPTPATH/images/. $SCRIPTPATH/AuroLeap/modules/ROOT/images/
cp $SCRIPTPATH/readme.adoc $SCRIPTPATH/AuroLeap/modules/ROOT/pages/readme.adoc
ls $SCRIPTPATH/AuroLeap/modules/ROOT/pages/
npm i antora
npm i @antora/lunr-extension
npm i asciidoctor-kroki
npx antora antora-playbook.yml
rm $SCRIPTPATH/AuroLeap/modules/ROOT/pages/readme.adoc
for file in $SCRIPTPATH/images/*
do
	name=`basename $file`
	rmpath=$SCRIPTPATH/AuroLeap/modules/ROOT/images/$name
	echo Removing copied asset "$rmpath"
	rm -r "$rmpath"
done
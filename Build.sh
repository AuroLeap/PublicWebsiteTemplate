#!/bin/ash
SCRIPTPATH=$(dirname "$SCRIPT")
echo "$SCRIPTPATH"
echo Copying root assets so github readme file can be embedded into website file.
cp -R -a $SCRIPTPATH/images/. $SCRIPTPATH/AuroLeap/modules/ROOT/images/
cp $SCRIPTPATH/README.adoc $SCRIPTPATH/AuroLeap/modules/ROOT/pages/README.adoc
npm i antora
npm i @antora/lunr-extension
npm i asciidoctor-kroki
npx antora antora-playbook.yml
rm ./AuroLeap/modules/ROOT/pages/README.adoc
for file in ./images/*
do
	name=`basename $file`
	rmpath=$SCRIPTPATH/AuroLeap/modules/ROOT/images/$name
	echo Removing copied asset "$rmpath"
	rm -r "$rmpath"
done
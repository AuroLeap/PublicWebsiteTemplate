#!/bin/ash
cd "$(dirname "$0")"
echo Copying root assets so github readme file can be embedded into website file.
cp -R -a ./images/. ./AuroLeap/modules/ROOT/images/
cp ./README.adoc ./AuroLeap/modules/ROOT/pages/README.adoc
npm i antora
npm i @antora/lunr-extension
npm i asciidoctor-kroki
npx antora antora-playbook.yml
rm ./AuroLeap/modules/ROOT/pages/README.adoc
for file in ./images/*
do
	name=`basename $file`
	rmpath=./AuroLeap/modules/ROOT/images/$name
	echo Removing copied asset "$rmpath"
	rm -r "$rmpath"
done
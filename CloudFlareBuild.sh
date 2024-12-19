#!/bin/ash
cp -R -a ./images/. ./AuroLeap/modules/ROOT/images
cp ./README.adoc ./AuroLeap/modules/ROOT/pages/README.adoc
npm i antora
npm i @antora/lunr-extension
npm i asciidoctor-kroki
npx antora antora-playbook.yml
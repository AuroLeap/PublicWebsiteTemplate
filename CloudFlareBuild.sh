#!/bin/ash
#cp -R -a ./rootimages ./AuroLeap/modules/ROOT/
#cp -R -a ./rootimages ./AuroLeap/modules/ROOT/pages/
cp -R -a ./images/. ./AuroLeap/modules/ROOT/images/
cp ./README.adoc ./AuroLeap/modules/ROOT/pages/README.adoc
npm i antora
npm i @antora/lunr-extension
npm i asciidoctor-kroki
npx antora antora-playbook.yml
rm ./AuroLeap/modules/ROOT/pages/README.adoc
#rm ./AuroLeap/modules/ROOT/pages/README.adoc
#cd new-files ; find . -exec rm -rf path/to/other-directory/{} \;
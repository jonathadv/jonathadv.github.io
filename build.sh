#/bin/bash

set -eu -o pipefail

DEST_DIR='/tmp/hugo-build'
FILES_TO_REMOVE='404.html  apple-touch-icon.png  browserconfig.xml
CNAME  custom  favicon-16x16.png  favicon.ico  index.html  js
mstile-150x150.png  robots.txt sitemap.xml about blog categories
css favicon-32x32.png img index.xml manifest.json projects safari-pinned-tab.svg  tags'

hugo -d ${DEST_DIR}

git checkout master
sleep 1
rm -rf ${FILES_TO_REMOVE}

mv -fv ${DEST_DIR}/* .

git add -A

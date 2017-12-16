#!/bin/bash

current_dir="${PWD}"

hugo

mv "${current_dir}/docs/pescar/main/index.html" "${current_dir}/docs/pescar/"
rm -rf "${current_dir}/docs/pescar/main"
sed -i 's|/main/|/|g' "${current_dir}/docs/pescar/index.html"

cp "404.html" "CNAME" "README.md" "${current_dir}/docs"

git checkout master

if [[ -d "${current_dir}/docs" && "${current_dir}/posts" ]]; then
    rm -rf $(ls ${current_dir} | sed 's/docs//g' | tr '\n' ' ')
fi

mv ${current_dir}/docs/* .

rmdir "docs"
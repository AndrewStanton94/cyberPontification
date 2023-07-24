#!/bin/bash

for file in md/*; do
  outputPath=$(echo "${file}" | sed 's/^md/docs/g' | sed 's/md$/html/g')
  echo "From ${file} to ${outputPath}"
  pandoc --from markdown \
    --standalone \
    --output "${outputPath}" \
    --to html \
    --mathml \
    --table-of-contents \
    --css 'https://cdn.jsdelivr.net/npm/@picocss/pico@1/css/pico.min.css' \
    --include-before-body 'partials/beforeBody-main.html' \
    --include-after-body 'partials/afterBody-main.html' \
    "${file}"
done


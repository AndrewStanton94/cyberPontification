#!/bin/bash

rsync --verbose --progress --human-readable \
  --update --recursive --delete \
  /home/andrew/Dropbox/Vault/work/writing/  \
  /home/andrew/Dropbox/websites/cyberPontification/md

mv ./md/cyberPontificationIndex.md ./md/index.md

for file in md/*; do
  echo "${file}"
  # Remove title as that is generated from the metadata
  sed -i '/^# .*$/d' "${file}"

  # Convert Obsidian links with titles into URL links
  sed -i -r 's/\[\[(.*?)\|(.*?)\]\]/[\2](\/\1.html)/g' "${file}"
done

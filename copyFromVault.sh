#!/bin/bash

rsync --verbose --progress --human-readable \
  --update --recursive --delete \
  /home/andrew/Dropbox/Vault/work/writing/  \
  /home/andrew/Dropbox/websites/cyberPontification/md

mv ./md/cyberPontificationIndex.md ./md/index.md

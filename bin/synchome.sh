#!/bin/bash
LOCKFILE=/tmp/synchome.lock
if [[ -e $LOCKFILE ]]; then 
  exit
else
  touch /tmp/synchome.lock
fi

while [ 1 ]; do
    cd
    echo `date` >> .synclog
    git commit --untracked-files=no -a -m "auto upload `date`" 2>&1 >> .synclog 
    git pull 2>&1 >> .synclog
    git push origin master 2>&1 >> .synclog
    sleep 300
done
# clean up
rm $LOCKFILE

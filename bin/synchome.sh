#!/bin/bash
running=`ps aux | grep synchome.sh | grep -v grep | wc -l`
echo $running
if [ $running -lt 3 ]; then
    while [ 1 ]; do
        cd
        echo `date` >> .synclog
#        git add . 2>&1 >> .synclog
        git commit -a -m "auto upload" 2>&1 >> .synclog
        git pull 2>&1 >> .synclog
        git push origin master 2>&1 >> .synclog
        sleep 600
    done
else
    echo "synchome already running"
fi

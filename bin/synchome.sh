#!/bin/bash
running=`ps aux | grep synchome.sh | grep -v grep | wc -l`
echo $running
if [ $running -lt 3 ]; then
    while [ 1 ]; do
        cd
        echo `date` >> .synclog
        git commit --untracked-files=no -a -m "auto upload `date`" 2>&1 >> .synclog 
        git pull 2>&1 >> .synclog
        git push origin master 2>&1 >> .synclog
        sleep 300
    done
#else
    #echo "synchome already running"
fi

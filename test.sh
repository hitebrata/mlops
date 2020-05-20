#!/bin/sh

COMMAND='nohup python3 -u CNN_cat_and_dog_old.py run'
LOGFILE=restart.txt

writelog() {
          now=`date`
            echo "$now $*" >> $LOGFILE
            }

writelog "Starting"
while true ; do
  $COMMAND >> py.log &
    writelog "Exited with status $?"
      writelog "Restarting"
      done

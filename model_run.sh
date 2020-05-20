#!/bin/bash
X=$(grep "val_accuracy" tensor.log | awk '{print $NF}')
echo "$X"
Y=${X:2:2}
echo "$Y"
if [ "$Y <= 85" ] 
then
exit 1
else
echo "try again"
fi

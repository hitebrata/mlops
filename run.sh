#!/bin/bash
echo "preparing the CNN model"
nohup python3 -u ./home/CNN_cat_and_dog_old.py > /home/output.log



echo "echecking the model accuracy"


X=$(grep "val_accuracy" /home/output.log | awk '{print $NF}')
echo "$X"
Y=${X:2:2}
echo "$Y"
if [ "$Y <= 85" ]
then
http://35.193.7.112:8080/job/job3/build?token=1176263a616dcf06a723d56479a4e4034d
else
echo "try again"
fi

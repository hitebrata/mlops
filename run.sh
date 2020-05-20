#!/bin/bash
echo "preparing the CNN model"
#nohup python3 -u ./CNN_cat_and_dog.py > output.log &
python3 /home/CNN_cat_and_dog_old.py > /home/tensor.log 2>&1

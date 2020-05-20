#!/bin/bash
sed -i '21i model.add(Convolution2D(filters=32, kernel_size=(3,3), activation='relu',))' /mnt/d/kubernets/CNN_cat_and_dog_old.py
sed -i '26i model.add(Dense(units=64, activation='relu'))' /mnt/d/kubernets/CNN_cat_and_dog_old.py
sed -i 's/epochs=25/epochs=10/g' /mnt/d/kubernets/CNN_cat_and_dog_old.py

#!/bin/bash
sed -i '21i model.add(Convolution2D(filters=32, kernel_size=(3,3), activation='relu',))' /database/CNN_cat_and_dog_old.py
sed -i '26i model.add(Dense(units=64, activation='relu'))' /database/CNN_cat_and_dog_old.py
sed -i 's/epochs=25/epochs=10/g' /database/CNN_cat_and_dog_old.py
sed -i 's/cnn_dataset/cnn_dataset_1/g' /database/CNN_cat_and_dog_old.py

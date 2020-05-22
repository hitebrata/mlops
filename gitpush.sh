#~/bin/bash
sudo sed -i "21i model.add(Convolution2D(filters=32, kernel_size=(3,3), activation='relu',))" /database/CNN_cat_and_dog_old.py
sudo sed -i "25i model.add(Dense(units=64, activation='relu'))" /database/CNN_cat_and_dog_old.py
sudo sed -i "s/cnn_dataset/cnn_dataset_1/g" /database/CNN_cat_and_dog_old.py
sudo sed -i "s/epochs=1/epochs=1/g" /database/CNN_cat_and_dog_old.py
sudo touch /database/2ndbuild.txt;
sudo cd /database; sudo git add 2ndbuild.txt;
sudo cd /database; sudo git commit . -m "replace dddcommit";
sudo cd /database; sudo git push;

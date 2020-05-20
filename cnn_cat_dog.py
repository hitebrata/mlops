#!/usr/bin/env python
# coding: utf-8

# In[1]:


from keras.layers import Convolution2D


# In[2]:


from keras.layers import MaxPooling2D


# In[3]:


from keras.layers import Flatten


# In[4]:


from keras.layers import Dense


# In[5]:


from keras.models import Sequential


# In[6]:


model = Sequential()


# In[7]:


model.add(Convolution2D(filters=32, 
                        kernel_size=(3,3), 
                        activation='relu',
                   input_shape=(64, 64, 3)
                       ))


# In[8]:


model.summary()


# In[9]:


model.add(MaxPooling2D(pool_size=(2, 2)))


# In[10]:


model.add(Convolution2D(filters=32, 
                        kernel_size=(3,3), 
                        activation='relu',
                       ))


# In[11]:


model.add(MaxPooling2D(pool_size=(2, 2)))


# In[12]:


model.add(Convolution2D(filters=32, 
                        kernel_size=(3,3), 
                        activation='relu',
                       ))


# In[13]:


model.summary()


# In[14]:


model.add(Flatten())


# In[15]:


model.summary()


# In[16]:


model.add(Dense(units=128, activation='relu'))
model.add(Dense(units=64, activation='relu'))


# In[17]:


model.summary()


# In[18]:


model.add(Dense(units=1, activation='sigmoid'))


# In[19]:


model.summary()


# In[20]:


model.compile(optimizer='adam', loss='binary_crossentropy', metrics=['accuracy'])


# In[21]:


from keras_preprocessing.image import ImageDataGenerator


# In[ ]:





# In[ ]:


train_datagen = ImageDataGenerator(
        rescale=1./255,
        shear_range=0.2,
        zoom_range=0.2,
        horizontal_flip=True)
test_datagen = ImageDataGenerator(rescale=1./255)
training_set = train_datagen.flow_from_directory(
        'cnn_dataset_1/training_set/',
        target_size=(64, 64),
        batch_size=32,
        class_mode='binary')
test_set = test_datagen.flow_from_directory(
        'cnn_dataset_1/test_set/',
        target_size=(64, 64),
        batch_size=32,
        class_mode='binary')
model.fit(
        training_set,
        steps_per_epoch=8000,
        epochs=10,
        validation_data=test_set,
        validation_steps=800)


# In[ ]:


model.save('my_model.h5')


# In[ ]:


from keras.models import load_model


# In[ ]:


m = load_model('my_model.h5')


# In[ ]:


from keras.preprocessing import image


# In[ ]:


test_image = image.load_img('cnn_dataset_1/single_prediction/cat_or_dog_2.jpg', 
               target_size=(64,64))


# In[ ]:


#type(test_image)


# In[ ]:


#test_image


# In[ ]:


test_image = image.img_to_array(test_image)


# In[ ]:


#type(test_image)


# In[ ]:


test_image.shape


# In[ ]:


import numpy as np 


# In[ ]:


test_image = np.expand_dims(test_image, axis=0)


# In[ ]:


test_image.shape


# In[ ]:





# In[ ]:


result = m.predict(test_image)


# In[ ]:


result


# In[ ]:


if result[0][0] == 1.0:
    print('dog')
else:
    print('cat')


# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





# In[ ]:





from tensorflow import keras
import matplotlib.pyplot as plt
import tensorflow as tf

from preprocessing import preprocess_dataset
import WakeMeMeta

path = "/Users/tanuj/PycharmProjects/WakeMe/WakeMeTestApp/models/fb_wake_test.h5"

model = keras.models.load_model(path)

AUTOTUNE = tf.data.AUTOTUNE

sample_file = "/Users/tanuj/PycharmProjects/WakeMe/WakeMeTestApp/test_audio_files/xx.wav"

sample_ds = preprocess_dataset([str(sample_file)])

for spectrogram, label in sample_ds.batch(1):
    prediction = model(spectrogram)
    print(tf.nn.softmax(prediction[0]))
    plt.bar(WakeMeMeta.commands, tf.nn.softmax(prediction[0]))
    plt.title(f'Predictions for "{WakeMeMeta.commands[label[0]]}"')
    plt.show()

def predict(wav_file_path):
    #Needs to be wired-up
    sample_ds = preprocess_dataset([str(sample_file)])
    for spectrogram, label in sample_ds.batch(1):
        prediction = model(spectrogram)
        print(tf.nn.softmax(prediction[0]))
        plt.bar(WakeMeMeta.commands, tf.nn.softmax(prediction[0]))
        plt.title(f'Predictions for "{WakeMeMeta.commands[label[0]]}"')
        plt.show()
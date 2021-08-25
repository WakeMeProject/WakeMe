from tensorflow import keras
import tensorflow as tf
from preprocessing import preprocess_dataset

default_model_path = "/Users/tanuj/PycharmProjects/WakeMe/WakeMeTestApp/models/fb_wake_test.h5"

def choose_model(model_file_path = default_model_path):
    global chosen_model
    chosen_model= ChosenModel(model_file_path)
    return chosen_model.model

def model_predict(wav_file_path, model):
    sample_ds = preprocess_dataset([str(wav_file_path)])
    for spectrogram, label in sample_ds.batch(1):
        prediction = model(spectrogram)
        np_label = tf.math.argmax(prediction[0]).numpy()
        return np_label

class ChosenModel:
    def __init__(self, path):
        self.model_path = path
        self.model = keras.models.load_model(self.model_path)
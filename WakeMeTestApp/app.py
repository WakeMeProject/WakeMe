import numpy as np
import WakeMeMeta
from flask import Flask, request, jsonify, render_template
from audio import record_to_file
from model import model_predict
from model import choose_model

app=Flask(__name__)#create instance on flask
i=0
@app.route('/')
def home():
    return render_template('index.html')

@app.route('/predict', methods=["POST"])
def predict(model):
    int_features=[int(x) for x in request.form.values()]
    final_features=[np.array(int_features)]
    prediction=model.predict(final_features)
    output=round(prediction[0],2)
    return render_template('index.html', prediction_text='Profit should be ${}'.format(output))

@app.route('/record_voice', methods=["POST"])
def record_voice():
    global i
    model = choose_model()
    path = "test_audio_files/test"+ str(i) + ".wav"
    record_to_file(path)
    predicted_text = "Wake Word not Detected"
    i = i +1
    predicted_output = WakeMeMeta.commands[model_predict(path,model)]
    if predicted_output==WakeMeMeta.commands[0]:
        predicted_text = "Wake Word Detected"
    return render_template("index.html",prediction_text = predicted_text)

@app.route('/predict_api', methods=["POST"])
def predict_api():
    path = record_voice()
    command_label = model_predict(path)
    prediction_text = "Wake word not detected"
    if(WakeMeMeta.commands[command_label] == WakeMeMeta[0]):
        prediction_text = "Wake word Detected"
    return render_template("index.html",prediction_text = prediction_text)

@app.route('/model_initialize_api', methods = ['"POST'])
def model_initialize():
    return None


if __name__ == "__main__":
    app.run(debug=True)


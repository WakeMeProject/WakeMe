import WakeMeMeta
from flask import Flask, request, render_template
from audio import record_to_file
from model import model_predict
from model import choose_model
from audio import record
import os
import boto3


app=Flask(__name__, template_folder="templates")#create instance on flask
i = 0


model1 = choose_model(model_file_path="models/house")
model3 = choose_model()




@app.route('/')
def home():
    return render_template('index.html', selection_text = "Waiting for Model Selection")


@app.route('/record_voice', methods=["POST"])
#The following method is for the real-time wake deployment and only works in the case of local deployment
# will output a wav to your current working directory
def record_voice():
    global i
    path = os.getcwd() + str(i) + "test.wav"
    predicted_text = "Wake Word not Detected"
    record_to_file(path)
    i = i +1
    predicted_output = WakeMeMeta.commands[model_predict(path,model)]
    print(path)
    if predicted_output==WakeMeMeta.commands[0]:
        predicted_text = "Wake Word Detected"
    return render_template("index.html",prediction_text = predicted_text, selection_text =model_name + " model initialized, ready for wake word detection")

@app.route('/model_selection', methods=["POST", "GET"])
def model_selection():
    global model
    global model_name
    model_name = request.form.get('models', None)
    if model_name =="House":
        model = model1
    else:
        model = model3

    return render_template("index.html",selection_text = model_name + " model initialized, ready for wake word detection")

@app.route('/wave_selection', methods=["POST", "GET"])
def wav_selection():
    predicted_text = "Wake Word not Detected"
    file = request.files["file"]
    object_name = file.filename
    s3_client = boto3.client('s3')
    response = s3_client.upload_file(file.filename, "<put in name of s3 bucket here>", object_name)
    predicted_output = WakeMeMeta.commands[model_predict(file.filename,model)]
    if predicted_output==WakeMeMeta.commands[0]:
        predicted_text = "Wake Word Detected"
    return render_template("index.html",prediction_text = predicted_text, selection_text =model_name + " model initialized, ready for wake word detection")


if __name__ == "__main__":
    app.run(host="0.0.0.0")



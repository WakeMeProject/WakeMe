import WakeMeMeta
from flask import Flask, request, render_template
from audio import record_to_file
from model import model_predict
from model import choose_model

app=Flask(__name__)#create instance on flask
i = 0
path = "test_audio_files/test"+ str(i) + ".wav"

model1 = choose_model()
model2 = choose_model()
model3 = choose_model()

model = model1



@app.route('/')
def home():
    return render_template('index.html', selection_text = "Waiting for Model Selection")


@app.route('/record_voice', methods=["POST"])
def record_voice():
    global i
    path = "test_audio_files/test"+ str(i) + ".wav"
    record_to_file(path)
    predicted_text = "Wake Word not Detected"
    i = i +1
    predicted_output = WakeMeMeta.commands[model_predict(path,model)]
    print(predicted_output)
    if predicted_output==WakeMeMeta.commands[0]:
        predicted_text = "Wake Word Detected"
    return render_template("index.html",prediction_text = predicted_text, selection_text =model_name + " model initialized, ready for wake word detection")

@app.route('/model_selection', methods=["POST", "GET"])
def model_selection():
    global model
    global model_name
    model_name = request.form.get('models', None)
    if model_name =="house":
        model = model1
    elif model_name == 'cat':
        model = model2
    else:
        model = model3

    return render_template("index.html",selection_text = model_name + " model initialized, ready for wake word detection")


if __name__ == "__main__":
    app.run(debug=True)



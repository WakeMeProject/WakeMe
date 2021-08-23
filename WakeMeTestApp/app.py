import numpy as np
from flask import Flask, request, jsonify, render_template
from audio import record_to_file

app=Flask(__name__)#create instance on flask

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
    record_to_file("test_audio_files/test.wav")
    prediction_text = "Wake word Detected"
    return render_template("index.html",prediction_text = prediction_text)


@app.route('/predict_api', methods=["POST"])
def predict_api(model):
    data=request.get_json(force=True)
    prediction=model.predict([np.array(list(data.values()))])
    output=prediction[0]
    return jsonify(output)

@app.route('/model_initialize_api', methods = ['"POST'])
def model_initialize():
    return None


if __name__ == "__main__":
    app.run(debug=True)


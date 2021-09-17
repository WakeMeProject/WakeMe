FROM python:3.7-slim-buster
COPY . /app
WORKDIR /app
RUN apt-get --quiet update --yes && apt-get --quiet upgrade --yes \
    && apt-get install -yqq gcc libsndfile1 libasound-dev portaudio19-dev libportaudio2 libportaudiocpp0 ffmpeg \
    && pip install -r requirements.txt
EXPOSE 5000
CMD ["python", "app.py"]

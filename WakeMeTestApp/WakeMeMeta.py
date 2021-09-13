import pyaudio

THRESHOLD = 500
CHUNK_SIZE = 1024
SILENT_CHUNKS = 1 * 44100 / 1024  # about 1sec
FORMAT = pyaudio.paInt16
FRAME_MAX_VALUE = 2 ** 15 - 1
NORMALIZE_MINUS_ONE_dB = 10 ** (-1.0 / 20)
RATE = 16000
CHANNELS = 1
TRIM_APPEND = RATE / 4

commands = ['fourthbrain','notfourthbrain']
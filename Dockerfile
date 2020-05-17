FROM ucsdets/scipy-ml-notebook

RUN pip install pillow
RUN pip install pytesseract
RUN pip install scenedetect
RUN pip install plotly
RUN pip install librosa
RUN pip install moviepy
RUN pip install SpeechRecognition
RUN pip install pydub

USER root

RUN apt-get -y install tesseract-ocr

USER $NB_UID:$NB_GID

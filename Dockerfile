FROM ucsdets/scipy-ml-notebook

RUN pip install pillow
RUN pip install pytesseract
RUN pip install scenedetect --user
RUN pip install plotly --user
RUN pip install psutil
RUN pip install librosa --user
RUN pip install moviepy
RUN pip install SpeechRecognition
RUN pip install pydub

USER root

RUN apt-get -y install tesseract-ocr
MAINTAINER Rafael Roman "rafael@notastica.org"

RUN apt-get update \
    && apt-get -y upgrade \
    && apt-get install -y tesseract-ocr \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
RUN conda install -c plotly plotly-orca==1.2.1

USER $NB_UID:$NB_GID

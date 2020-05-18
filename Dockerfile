FROM ucsdets/scipy-ml-notebook

RUN pip install pillow
RUN pip install pytesseract
RUN pip install scenedetect
RUN pip install plotly
RUN pip install psutil
RUN pip install librosa
RUN pip install moviepy
RUN pip install SpeechRecognition
RUN pip install pydub

USER root

RUN apt-get -y install tesseract-ocr
RUN conda install -c plotly plotly-orca==1.2.1

USER $NB_UID:$NB_GID

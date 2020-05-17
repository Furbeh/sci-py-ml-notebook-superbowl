FROM ucsdets/scipy-ml-notebook

RUN pip install pillow
RUN pip install pytesseract
RUN pip install scenedetect
RUN pip install plotly

USER root

RUN apt-get -y install tesseract-ocr

USER $NB_UID:$NB_GID

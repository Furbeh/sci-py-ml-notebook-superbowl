FROM ucsdets/scipy-ml-notebook

RUN apt-get -y install tesseract-ocr
RUN pip install pillow
RUN pip install pytesseract
RUN pip install scenedetect
RUN pip install plotly

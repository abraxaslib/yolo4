FROM fearoht/miniconda:latest
WORKDIR /yolo

RUN pip install --upgrade pip
RUN pip install Cython
RUN pip install numpy
RUN pip install tensorflow==1.15
RUN pip install opencv-python

RUN git clone https://github.com/riclombar/Instalacion_YOLO
RUN cd Instalacion_YOLO \ 
    &&  pip install . \
    && python setup.py build_ext --inplace
RUN apt update && apt install libgl1-mesa-glx -y

RUN cd Instalacion_YOLO && mkdir bin




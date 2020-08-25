FROM fearoht/miniconda:latest
RUN pip install Cython
RUN pip install numpy
RUN pip install tensorflow
RUN pip install opencv-python
RUN git clone https://github.com/riclombar/Instalacion_YOLO
RUN cd Instalacion_YOLO \ 
    &&  pip install . \
    && python setup.py build_ext --inplace

RUN pip install https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-1.12.0-cp36-cp36m-linux_x86_64.whl
CMD ["flow"]

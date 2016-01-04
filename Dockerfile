FROM continuumio/miniconda

# FROM ubuntu:14.04
RUN DEBIAN_FRONTEND=noninteractive apt-get update -y
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y build-essential libncurses5-dev libreadline-dev
RUN which conda
RUN conda install pip patchelf -y
ENV SRC /src
RUN mkdir -p $SRC
RUN git clone https://github.com/conda/conda.git $SRC/conda
RUN pip install -e $SRC/conda/
RUN git clone https://github.com/alexbw/conda-build.git $SRC/conda-build
RUN pip install -e $SRC/conda-build/
ADD . /recipes
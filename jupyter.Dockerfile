FROM nvidia/cuda:11.8.0-cudnn8-runtime-ubuntu20.04 AS jupyter-base
WORKDIR /
RUN apt update && apt install -y --no-install-recommends \
    git build-essential \
    python3-dev python3-pip python3-setuptools
RUN pip3 -q install pip --upgrade
RUN pip3 install jupyter numpy pandas torch torchvision matlibplot tensorboardX

FROM jupyter-base
RUN pip3 install transformers barbar
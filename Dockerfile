FROM pytorch/pytorch:1.6.0-cuda10.1-cudnn7-devel

RUN apt-get clean \
        && apt-get update \
        && apt-get install -y ffmpeg git curl sox libsm6 libxrender1 libfontconfig1 \
        && apt-get -y autoremove

WORKDIR /content

# Install python requirements
ADD requirements.txt requirements.txt
RUN pip install -r requirements.txt
COPY . .

CMD ["/bin/bash"]
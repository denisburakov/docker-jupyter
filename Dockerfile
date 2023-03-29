FROM python:3.8

EXPOSE 8888

RUN apt-get update && apt-get install -y cmake && \
    pip install --no-cache-dir jupyterlab && \
    useradd -ms /bin/bash lab && \
    mkdir /home/lab/notebooks

RUN git clone --branch v0.15.0 https://github.com/guillermo-navas-palencia/optbinning.git && \
    cd optbinning && \
    python setup.py install && \
    cd .. && \
    rm -rf optbinning

COPY requirements.txt .

RUN python -m pip install --upgrade pip && \
    pip install -r requirements.txt

USER lab

WORKDIR /home/lab/notebooks

CMD ["jupyter", "lab", "--ip=0.0.0.0"]
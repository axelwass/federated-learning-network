FROM python:3.8-slim

ENV LANG=C.UTF-8 LC_ALL=C.UTF-8

RUN apt-get update --fix-missing && \
apt-get install -y build-essential && \
apt-get clean && \
rm -rf /var/lib/apt/lists/*

RUN pip install --no-cache-dir torch==1.7.1+cpu torchvision==0.8.2+cpu fastai python-dotenv aiohttp[speedups] flask -f https://download.pytorch.org/whl/torch_stable.html

RUN pip install --no-cache-dir tensorflow

WORKDIR /federated-learning-network/
COPY . node
COPY ./docker-client-config.py node/config.py

RUN apt-get purge -y --auto-remove build-essential

WORKDIR /federated-learning-network/node

EXPOSE 5000
CMD ["/usr/local/bin/flask", "run"]




## Based on an docker image with spark, zeppelin and some basic Data Science
## python libs
FROM dylanmei/zeppelin:latest
MAINTAINER Anderson Santos anderson@gruponeuro.com.br

RUN apt-get update && apt-get install -y \
  build-essential \
  pkg-config \
  autoconf \
  libtool \
  python3-dev \
  && rm -rf /var/lib/apt/lists/*

RUN pip install \
  ijson \
  matplotlib \
  datetime \
  folium \
  tweepy \
  pandas \
  sklearn \
  networkx \
  igraph \
  seaborn \
  nltk \
  gensim \
  wordcloud

COPY python-deps.py /tmp/
RUN python3 /tmp/python-deps.py
RUN rm /tmp/python-deps.py

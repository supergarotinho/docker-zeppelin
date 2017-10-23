## Based on dylanmei/zeppelin and gettyimages/spark
# FROM debian:stretch
#FROM debian:jessie
FROM apache/zeppelin:0.7.2
MAINTAINER Anderson Santos anderson@gruponeuro.com.br

# Usefull Python libs and deps
RUN apt-get update && \
    apt-get install -y python3-pip && \
    pip3 install --upgrade pip

RUN pip3 install \
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
    wordcloud \
    numpy \
    pandasql \
    scipy \
    palettable

# Download corpus and models dependencies
COPY python-deps.py /tmp/
RUN python3 /tmp/python-deps.py \
  && rm /tmp/python-deps.py

# Set python3 for spark workers
ENV PYSPARK_PYTHON=/usr/bin/python3

# Change the zeppelin interpreter for python3 - bellow are the changes
# RUN sed -i "s/^\([ \t]*\"zeppelin\.python\":\).*/\1 \"python3\"\,/" /zeppelin/conf/interpreter.json
# RUN sed -i "s/^\([ \t]*\"zeppelin\.pyspark\.python\":\).*/\1 \"python3\"\,/" /zeppelin/conf/interpreter.json
COPY interpreter.json /zeppelin/conf/interpreter.json

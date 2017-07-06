## Based on dylanmei/zeppelin and gettyimages/spark
# FROM debian:stretch
#FROM debian:jessie
FROM apache/zeppelin:0.7.2
MAINTAINER Anderson Santos anderson@gruponeuro.com.br

# Usefull Python libs and deps
COPY python-deps.py /tmp/
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
    wordcloud \
    numpy \
    pandasql \
    scipy

RUN python /tmp/python-deps.py \
  && rm /tmp/python-deps.py

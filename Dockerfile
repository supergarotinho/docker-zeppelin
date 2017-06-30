## Based on an docker image with spark, zeppelin and some basic Data Science
## python libs
FROM dylanmei/zeppelin:latest
MAINTAINER Anderson Santos anderson@gruponeuro.com.br

RUN apt-get update && apt-get install -y \
  build-essential \
  autoconf \
  libtool \
  pkg-config \
  python-opengl \
  python-imaging \
  python-pyrex \
  python-pyside.qtopengl \
  idle-python2.7 \
  qt4-dev-tools \
  qt4-designer \
  libqtgui4 \
  libqtcore4 \
  libqt4-xml \
  libqt4-test \
  libqt4-script \
  libqt4-network \
  libqt4-dbus \
  python-qt4 \
  python-qt4-gl \
  libgle3 \
  python-dev \
  python3-dev \
  && rm -rf /var/lib/apt/lists/*

RUN pip install ijson matplotlib datetime folium tweepy sklearn networkx igraph seaborn nltk gensim
RUN pip install wordcloud

COPY python-deps.py /tmp/
RUN python3 /tmp/python-deps.py
RUN rm /tmp/python-deps.py

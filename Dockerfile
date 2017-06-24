## Based on an docker image with spark, zeppelin and some basic Data Science
## python libs
FROM dylanmei/zeppelin:latest
MAINTAINER Anderson Santos anderson@gruponeuro.com.br

pip install ijson matplotlib datetime folium tweepy sklearn nltk gensim networkx igraph seaborn

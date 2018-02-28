# Docker image of zeppelin notebook &nbsp; [![Tweet](https://camo.githubusercontent.com/83d4084f7b71558e33b08844da5c773a8657e271/68747470733a2f2f696d672e736869656c64732e696f2f747769747465722f75726c2f687474702f736869656c64732e696f2e7376673f7374796c653d736f6369616c)](https://twitter.com/intent/tweet?text=Execute%20zeppelin%20notebook%20with%20supergarotinho%2Fzeppelin%20image!&amp;url=https://www.gruponeuro.com.br&amp;via=supergarotinho&amp;hashtags=docker,bash,test,testing,report,coverage,shunit2,kcov)

**Fun data science with zeppelin and docker**


[![Price](https://img.shields.io/badge/price-FREE-0098f7.svg)](https://github.com/supergarotinho/docker-zeppelin/blob/master/LICENSE)
[![Build Status](https://dockerbuildbadges.quelltext.eu/status.svg?organization=supergarotinho&repository=zeppelin)](https://hub.docker.com/r/supergarotinho/zeppelin/)
[![Docker Stars](https://img.shields.io/docker/stars/supergarotinho/zeppelin.svg)](https://hub.docker.com/r/supergarotinho/zeppelin/)
[![Docker Pulls](https://img.shields.io/docker/pulls/supergarotinho/zeppelin.svg)](https://hub.docker.com/r/supergarotinho/zeppelin/)
[![License: BSD-3](https://img.shields.io/badge/license-BSD3-blue.svg)](https://github.com/supergarotinho/docker-bashtest/blob/master/LICENSE)
![Contributions welcome](https://img.shields.io/badge/contributions-welcome-orange.svg)

> Built with ❤︎ by [Anderson Santos](https://br.linkedin.com/in/andersonrss) and [contributors](https://github.com/supergarotinho/docker-zeppelin/graphs/contributors)

**DockerHub repository:** https://hub.docker.com/r/supergarotinho/zeppelin/

## Table of contents

- [Features](#features)
- [Getting Started](#getting-started)
- [Built With](#built-with)
- [Authors](#authors)
- [Community](#community)
- [License](#license)
- [Acknowledgments](#acknowledgments)

## Features

* Spark -  2.1.1
* zeppelin - 0.7.1
	* spark
	* shell
	* angular
	* markdown
	* postgresql
	* jdbc
	* python
	* hbase
	* elasticsearch
* Python libs:
	* Python 3.5
	* **Data**
 		* NumPy
 		* pandas
 		* PandaSQL
	* **ML and Math**
		* sklearn
		* SciPy
	* **Visualization** 	
		* matplotlib
		* seaborn
		* folium (GeoVisualization)
		* wordcloud
	* **Util**
		* ijson
		* datetime
		* tweepy
	* **NLP**
		* **nltk**
			* **punkt** - sentence segmentation
			* **stopwords**
			* **rslp** - lemmatizer da Viviane Orengo
			* **floresta** - Corpus Floresta Sint?tica for PT_BR
		* gensim (Topic and language modelling)
	* **Graphs**
		* networkx
		* igraph

### Getting Started

You can enter at the directory that you want to save your notebooks and run:

```bash
docker run --rm -d -p 8080:8080 -v $PWD:/notebook -e ZEPPELIN_NOTEBOOK_DIR='/notebook' supergarotinho/zeppelin
```

## Built With

* [Zeppelin](https://zeppelin.apache.org/) - The notebook
* [Spark](https://spark.apache.org/) - The distributed in-memory framework

## Authors

* **Anderson Santos** - *Initial work* - [supergarotinho](https://github.com/supergarotinho)

See also the list of [contributors](https://github.com/sueprgarotinho/docker-zeppelin/contributors) who participated in this project.

## License

This project is licensed under the BSD-3 License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* From zeppelin official image: apache/zeppelin:0.7.2

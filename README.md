## Docker image of zeppelin notebook

### Main features

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

### How to use it with Docker

```bash
docker run --rm -d -p 8080:8080 -v $PWD:/notebook -e ZEPPELIN_NOTEBOOK_DIR='/notebook' supergarotinho/zeppelin
```

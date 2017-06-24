## Docker image of zeppelin notebook

### Main features

* Spark
* zeppelin
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
  * Python 3.4
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
  * **Util**
		* ijson
		* datetime
		* tweepy 
  * **NLP** 
		* nltk 
		* gensim (Topic and language modelling)
  * **Graphs** 
		* networkx 
		* igraph 

### How to use it with Docker

```bash
docker run --rm -d -p 8080:8080 -v $(pwd):/usr/zeppelin/notebook -e USERID=$UID supergarotinho/zeppelin
```

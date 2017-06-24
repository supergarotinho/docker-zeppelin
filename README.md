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
  * NumPy
  * PandaSQL
  * SciPy

  * matplotlib

### How to use it with Docker

```bash
docker run --rm -d -p 8080:8080 -v $(pwd):/usr/zeppelin/notebook -e USERID=$UID supergarotinho/zeppelin
```

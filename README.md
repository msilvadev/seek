<div>
       <p align="center"> 
              <img src="docs/micronaut.png" width="300" height="100">
              <img src="docs/quarkus.png" width="300" height="100">
              <img src="docs/spring.png" width="270" height="130">
              <img src="docs/es.png" width="300" height="200">
       </p>
</div>

#

![author](https://img.shields.io/badge/author-matheus-red.svg)
[![](https://img.shields.io/badge/java-v17-blue.svg)]()
[![](https://img.shields.io/badge/gradle-v7.2-blue.svg)]()

<h1 align="center"> SEEK </h1>

Project to understand and apply:
* Elasticsearch
* Build CI pipeline - Jenkins
* Aws Lambda - Serverless
* Compare cold start and memory footprint between
  * [Spring Boot](https://spring.io/projects/spring-boot)
  * [Micronaut](https://micronaut.io/)
  * [Quarkus](https://quarkus.io/)



<h2 align="center"> Run Elasticsearch - Docker local </h2>

Download Elasticsearch docker image:
```bash
docker pull docker.elastic.co/elasticsearch/elasticsearch
```

Start docker container with Elasticsearch image:
```bash
docker run --restart=always -d --name elasticsearch -p 9200:9200 -e "http.host=0.0.0.0" -e "transport.host=127.0.0.1" docker.elastic.co/elasticsearch/elasticsearch:5.5.2
```
* — restart=always : Its container goes up whenever the Docker daemon stops for some reason
* -d : Run in background
* — name elasticsearch : Container name
* -p 9200:9200 : Ports mapped from our host with the container

If everything went well:

> http://localhost:9200/

You will see a json like this
````json
{
  "name" : "0f18e55fd6c3",
  "cluster_name" : "docker-cluster",
  "cluster_uuid" : "VhaVysx9SuKPfoXLeMLuTg",
  "version" : {
    "number" : "7.15.2",
    "build_flavor" : "default",
    "build_type" : "docker",
    "build_hash" : "93d5a7f6192e8a1a12e154a2b81bf6fa7309da0c",
    "build_date" : "2021-11-04T14:04:42.515624022Z",
    "build_snapshot" : false,
    "lucene_version" : "8.9.0",
    "minimum_wire_compatibility_version" : "6.8.0",
    "minimum_index_compatibility_version" : "6.0.0-beta1"
  },
  "tagline" : "You Know, for Search"
}
````

<h2 align="center"> Jenkins Blue Ocean </h2>
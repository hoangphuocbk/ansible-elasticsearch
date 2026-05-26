#!/bin/bash

elastic_version="9.2.3"
elastic_major_minor=$(echo "$elastic_version" | cut -d '.' -f 1,2)
download_folder="/tmp"

wget https://raw.githubusercontent.com/elastic/elasticsearch/refs/heads/${elastic_major_minor}/distribution/src/config/log4j2.properties -P ${download_folder}
wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-${elastic_version}-amd64.deb -P ${download_folder}

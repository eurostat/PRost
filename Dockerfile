# Copyright (c) Jupyter Development Team.
# Distributed under the terms of the Modified BSD License.
FROM jupyter/datascience-notebook:87210526f381

MAINTAINER Jupyter Project <jupyter@googlegroups.com>

USER root

# R pre-requisites
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    fonts-dejavu \
    gfortran \
    gnupg \
    gcc && apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN echo "update.packages()" >> /tmp/install.R && \
    echo "install.packages(c('rJava','rdbnomics','ggrepel','ggraph','ggiraph','ggnetwork','ggTimeSeries','plotrix','tmap','rsdmx','leaflet','shinyjs','TSsdmx','TSdbi','timeSeries','RJDemetra','eurostat','flagr'),repos='https://cloud.r-project.org')" >> /tmp/install.R && \
    echo "devtools::install_github('eurostat/restatapi');" >> /tmp/install.R && \
    Rscript /tmp/install.R
    


USER $NB_USER


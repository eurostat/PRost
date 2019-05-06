# Copyright (c) Jupyter Development Team.
# Distributed under the terms of the Modified BSD License.
FROM jupyter/datascience-notebook:87210526f381

MAINTAINER Jupyter Project <jupyter@googlegroups.com>

USER root
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    apt-utils \ 
    software-properties-common && \
    add-apt-repository ppa:marutter/c2d4u3.5 && \
    apt-get update && \
    apt-get upgrade

RUN apt-get install -y --no-install-recommends \
    fonts-dejavu \
    gfortran \
    java-common \
    build-essential \
    libudunits2-0 \
    libudunits2-dev \
    libgdal20 \
    gdal-bin \
    gdal-data \
    libgdal-dev \
    libssl-dev \
    libssh2-1 \
    libssh2-1-dev \
    libgeos-3.6.2 \
    libproj12 \
    proj-bin \
    libproj-dev \
    libpoppler73 \
    poppler-utils \
    libpoppler-dev \
    libgit2-dev \
    gnupg \
    libtool \ 
    libunwind-dev \
    libzmq3-dev \
    libcairo2-dev \
    libopenblas-base \
    libopenblas-dev \
    libexpat1-dev \
    libpq-dev \
    libsqlite3-dev \
    postgis \
    r-base-dev \
    r-cran-devtools \
    r-cran-eurostat \
    r-cran-ggrepel \
    r-cran-ggraph \
    r-cran-rjdemetra \
    r-cran-rjava \
    r-cran-rjson \
    r-cran-tmap \
    gdb \
    valgrind \
    mc \
    gcc && apt-get clean && \
    rm -rf /var/lib/apt/lists/*

 
#RUN echo "update.packages(repos='https://cloud.r-project.org')" >> /tmp/install.R && \
RUN echo "install.packages(c('restatapi','rdbnomics','TSsdmx','ggiraph','ggnetwork','ggTimeSeries','plotrix','rsdmx','shinyjs','TSdbi','timeSeries','flagr','ggdemetra'),repos='https://cloud.r-project.org')" >> /tmp/install.R && \
#    echo "devtools::install_github('eurostat/restatapi');" >> /tmp/install.R && \
    Rscript /tmp/install.R
    
USER $NB_USER


RUN wget https://raw.githubusercontent.com/eurostat/PRost/master/notebooks/eurostat_database_test.ipynb && \ 
    wget https://raw.githubusercontent.com/eurostat/PRost/master/notebooks/eurostat_flagr_test.ipynb && \ 
    wget https://raw.githubusercontent.com/eurostat/PRost/master/notebooks/eurostat_package_tutorial.ipynb 
   

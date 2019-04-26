# Copyright (c) Jupyter Development Team.
# Distributed under the terms of the Modified BSD License.
FROM jupyter/datascience-notebook:87210526f381

MAINTAINER Jupyter Project <jupyter@googlegroups.com>

USER root

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    fonts-dejavu \
    gfortran \
    java-common \
    build-essential \
    gnupg \
    mc \
    apt-utils \
    software-properties-common \
    gcc && apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN conda install --quiet --yes \
    'r-rjava' && \
     conda clean -tipsy && \
     fix-permissions $CONDA_DIR && \
     fix-permissions /home/$NB_USER

#RUN echo "update.packages(repos='https://cloud.r-project.org')" >> /tmp/install.R && \
RUN echo "install.packages(c('rdbnomics','ggrepel','ggraph','ggiraph','ggnetwork','ggTimeSeries','plotrix','tmap','rsdmx','leaflet','shinyjs','TSsdmx','TSdbi','timeSeries','RJDemetra','eurostat','flagr'),repos='https://cloud.r-project.org')" >> /tmp/install.R && \
#    echo "devtools::install_github('eurostat/restatapi');" >> /tmp/install.R && \
    Rscript /tmp/install.R
    
USER $NB_USER


RUN wget https://raw.githubusercontent.com/eurostat/PRost/master/notebooks/eurostat_database_test.ipynb && \ 
    wget https://raw.githubusercontent.com/eurostat/PRost/master/notebooks/eurostat_flagr_test.ipynb && \ 
    wget https://raw.githubusercontent.com/eurostat/PRost/master/notebooks/eurostat_package_tutorial.ipynb 
   

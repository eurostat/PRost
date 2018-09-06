# Copyright (c) Jupyter Development Team.
# Distributed under the terms of the Modified BSD License.
FROM jupyter/scipy-notebook

LABEL maintainer="Jupyter Project <jupyter@googlegroups.com>"

USER root


# R pre-requisites
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    fonts-dejavu \
    tzdata \
    gfortran \
    libudunits2-0 \
    libudunits2-dev \
    gnupg \
    python-rpy2 \
    python3-rpy2 \
    libssl-dev \
    libgdal-dev \
    libssh2-1 \
    libssh2-1-dev \
    libgit2-26 \
    libgit2-dev \
    libunwind-dev \
    libzmq3-dev \
    gcc \
    build-essential \
    apt-utils \
    software-properties-common

# Add the CRAN repository to apt sources
# RUN gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys E084DAB9 && \
#    gpg -a --export E084DAB9 | apt-key add - && \
#    add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu bionic-cran35/'

# install R
RUN apt-get update && \
    apt-get install -y \
    r-base \
    r-base-core \
    r-base-dev \
    r-cran-plyr \
    r-cran-rsqlite \
    r-cran-caret \
    r-cran-ggplot2 \
    r-cran-ggrepel \
    r-cran-ggraph \
    r-cran-ggiraph \
    r-cran-ggnetwork \
    r-cran-ggTimeSeries \        
    r-cran-reshape2 \
    r-cran-rcurl \
    r-cran-crayon \
    r-cran-rjson \
    r-cran-jsonlite \
    r-cran-base64enc \
    r-cran-e1071 \
    r-cran-stringr \
    r-cran-stringi \
    r-cran-rcpp \
    r-cran-rjava \
    r-cran-randomforest && apt-get clean && \
    rm -rf /var/lib/apt/lists/*




# R packages including IRKernel which gets installed globally.
# RUN conda install --quiet --yes \
 #    'rpy2=2.8*' \
 #    'r-base=3.4.1' \
 #    'r-irkernel=0.8*' \
 #    'r-plyr=1.8*' \
 #    'r-devtools=1.13*' \
 #    'r-tidyverse=1.1*' \
 #    'r-shiny=1.0*' \
 #    'r-rmarkdown=1.8*' \
 #    'r-forecast=8.2*' \
 #    'r-rsqlite=2.0*' \
 #    'r-reshape2=1.4*' \
 #    'r-nycflights13=0.2*' \
 #    'r-caret=6.0*' \
 #    'r-rcurl=1.95*' \
 #    'r-crayon=1.3*' \
 #    'r-randomforest=4.6*' \
 #    'r-htmltools=0.3*' \
 #    'r-sparklyr=0.7*' \
 #    'r-htmlwidgets=1.0*' \
 #    'r-hexbin=1.27*' && \
 #    conda clean -tipsy && \
 #    fix-permissions $CONDA_DIR && \
 #    fix-permissions /home/$NB_USER


RUN echo "install.packages('devtools',repos='https://cloud.r-project.org');"  > /tmp/install.R && \
    echo "devtools::install_github('IRkernel/IRkernel');" >> /tmp/install.R && \
    echo "install.packages('eurostat',repos='https://cloud.r-project.org')" >> /tmp/install.R && \
    Rscript /tmp/install.R

USER $NB_UID

RUN echo "IRkernel::installspec();" > install.R && \
    Rscript install.R



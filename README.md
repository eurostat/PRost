PRestat
=======

Python and R services to access and handle Eurostat data
---


**TODO**

Add `R` package `eurostat` to the service (Dockerfile).

**Test**

Current Dockerfile is an extension of the `Jupyter Data Science Stack`.
You can run a notebook with both `R` and `Python` installed here: https://mybinder.org/v2/gh/eurostat/PRestat/master.

**<a name="Sources"></a>Data sources**

* EU open data initiatives: [pan-European public data infrastructure](http://data.europa.eu).
* Eurostat database: [online catalog](http://ec.europa.eu/eurostat/data/database) and [bulk download facility](http://ec.europa.eu/eurostat/estat-navtree-portlet-prod/BulkDownloadListing).
* Eurostat web-services: access to [JSON and unicode data](http://ec.europa.eu/eurostat/web/json-and-unicode-web-services/about-this-service), the [REST API](http://ec.europa.eu/eurostat/web/json-and-unicode-web-services/getting-started/rest-request) with its [query builder](http://ec.europa.eu/eurostat/web/json-and-unicode-web-services/getting-started/query-builder).

**<a name="Software"></a>Software resources and services**

* Package [_eurostat_ `R`](http://ropengov.github.io/eurostat) to access open data from Eurostat.
* `Jupyter` notebook [docker stack](https://github.com/jupyter/docker-stacks), in particular the [R stack](https://github.com/jupyter/docker-stacks/tree/master/r-notebook) and the [Data Science stack](https://jupyter-docker-stacks.readthedocs.io/en/latest/index.html). Note also list of [existing images](https://jupyter-docker-stacks.readthedocs.io/en/latest/using/selecting.html#jupyter-datascience-notebook), [get started](https://docs.docker.com/get-started/) and [how-to](https://www.dataquest.io/blog/docker-data-science/).
* [Binder environment](https://mybinder.org/) to run `Jupyter` notebooks. See the [how-to](https://blog.jupyter.org/binder-2-0-a-tech-guide-2017-fd40515a3a84).

**<a name="References"></a>References**

* Lahti L., Huovari J., Kainu M., and Biecek, P. (2017): [**Retrieval and analysis of Eurostat open data with the eurostat package**](https://journal.r-project.org/archive/2017/RJ-2017-019/RJ-2017-019.pdf), _The R Journal_, 9(1):385-392.
* [How to Dockerize an `R Shiny` App](https://towardsdatascience.com/how-to-dockerize-an-r-shiny-app-part-1-d4267659312a).
* [Generating Dockerfiles for reproducible research with `R`](https://o2r.info/2017/05/30/containerit-package/).
* [Dockerfile basics and best practices](https://docs.datascience.com/en/master/appendix-1/dockerfile-basics-and-best-practices-1.html).


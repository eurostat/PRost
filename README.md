PRost
=======

Python and R for official statistics: self-contained services to access and handle _Eurostat_ data
---

The project `PRost` is part of the Methodological Network initiative on user interfaces to _Eurostat_ online database.

**Quick start**

**Launch a notebook running both `R` and `Python`: [![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/eurostat/PRost/master) with packages already installed to access Eurostat database!**

**Examples**

Run your own script into a notebook, like in the examples below:

* a [quick and dirty notebook](https://nbviewer.jupyter.org/github/eurostat/PRost/blob/master/notebooks/eurostat_package_tutorial.ipynb) reproducing the tutorial for `R eurostat` package.
* an empty [R test notebook](https://mybinder.org/v2/gh/eurostat/prost/master?filepath=eurostat_database_test.ipynb) with the  `eurostat`, `rdbnomics`,`restatapi` and `TSsdmx` packages to retrieve data from Eurostat database
* a [notebook](https://mybinder.org/v2/gh/eurostat/prost/master?filepath=eurostat_flagr_test.ipynb) to test the [`flagr`](https://github.com/eurostat/flagr) package
* ...

**Notes**

This contribution advocates for widening the use of Open Source Software (OSS) , "beyond just `R`", to: 
* support new modes for production of official statistics,
* create new ways to share official statistics

in a constantly evolving data ecosystem,

While `R` is currently the leading OSS within the statistical community, and the most widespread in statistical organisations, it is believed that one should not focus on isolated OSS, instead it should be possible to implement statistical methods in whatever OSS that fit best and integrate them seamlessly into the statistical production system. 

Today's technological solutions, _e.g._ flexible APIs (_e.g._, _Eurostat_ REST API), interactive notebooks (_e.g._, `Jupyter` notebook) and virtualised containers (_e.g._, `docker`), can support an approach where algorithms are delivered as – portable, scalable, harmonised and encapsulated – services regardless of the software used. 

The notebooks are running on the [binder](https://mybinder.org/) platform, which automatically turns the `Dockerfile` in this repository into an interactive notebook. Current `Dockerfile` is an extension of the [`Jupyter Data Science Stack`](https://hub.docker.com/r/jupyter/datascience-notebook/).

**<a name="Sources"></a>Data sources**

* EU open data initiatives: [pan-European public data infrastructure](http://data.europa.eu).
* Eurostat database: [online catalog](http://ec.europa.eu/eurostat/data/database) and [bulk download facility](http://ec.europa.eu/eurostat/estat-navtree-portlet-prod/BulkDownloadListing).
* Eurostat web-services: access to [JSON and unicode data](http://ec.europa.eu/eurostat/web/json-and-unicode-web-services/about-this-service), the [REST API](http://ec.europa.eu/eurostat/web/json-and-unicode-web-services/getting-started/rest-request) with its [query builder](http://ec.europa.eu/eurostat/web/json-and-unicode-web-services/getting-started/query-builder).

**<a name="Software"></a>Software resources and services**

* Package [_eurostat_ `R`](http://ropengov.github.io/eurostat) to access open data from Eurostat.
* `Jupyter` notebook [docker stack](https://github.com/jupyter/docker-stacks), in particular the [R stack](https://github.com/jupyter/docker-stacks/tree/master/r-notebook) and the [Data Science stack](https://jupyter-docker-stacks.readthedocs.io/en/latest/index.html). Note also list of [existing images](https://jupyter-docker-stacks.readthedocs.io/en/latest/using/selecting.html#jupyter-datascience-notebook), [get started](https://docs.docker.com/get-started/) and [how-to](https://www.dataquest.io/blog/docker-data-science/).
* [Binder environment](https://mybinder.org/) to run `Jupyter` notebooks. See the [how-to](https://blog.jupyter.org/binder-2-0-a-tech-guide-2017-fd40515a3a84).

**Other**

* A [cool notebook](https://github.com/CHesseling/Eurostat_NUTS2_mapping/blob/master/Eurostat%20API%20GeoPandas.ipynb) showing how to represent _Eurostat_ NUTS data over a map using _Python_ package [_eurostat-api-client_](https://github.com/opus-42/eurostat-api-client).

**About**

<table align="center">
    <tr> <td align="left"><i>status</i></td> <td align="left">since 2018 &ndash; <b>on-going</b></td></tr> 
    <tr> <td align="left"><i>contributors</i></td> 
    <td align="left" valign="middle">
<a href="https://github.com/mmatyi"><img src="https://github.com/mmatyi.png" width="40"></a>
<a href="https://github.com/gjacopo"><img src="https://github.com/gjacopo.png" width="40"></a>
<a href="https://github.com/reisfe"><img src="https://github.com/reisfe.png" width="40"></a>
<a href="https://github.com/oloski"><img src="https://github.com/oloski.png" width="40"></a>
</td> </tr> 
    <tr> <td align="left"><i>license</i></td> <td align="left"><a href="https://joinup.ec.europa.eu/sites/default/files/eupl1.1.-licence-en_0.pdfEUPL">EUPL</a> </td> </tr> 
</table>

**<a name="References"></a>References**

* Boettiger C. and Eddelbuettel D. (2018): [**An introduction to Rocker: Docker containers for R**](https://journal.r-project.org/archive/2017/RJ-2017-065/RJ-2017-065.pdf), _The R Journal_, 9(2):527-536.
* Grazzini J., Museux J.-M. and Hahn M. (2018): [**Empowering and interacting with statistical produsers: A practical example with Eurostat data as a service**](https://www.researchgate.net/publication/325973362_Empowering_and_interacting_with_statistical_produsers_a_practical_example_with_Eurostat_data_as_a_service), in Proc. _Conference of European Statistics Stakeholders_, doi:[10.5281/zenodo.3240557](https://doi.org/10.5281/zenodo.3240557).
* Beaulieu-Jones B.K. and Greene C.S. (2017): [**Reproducibility of computational workflows is automated using continuous analysis**](https://www.nature.com/articles/nbt.3780.pdf), _Nature Biotechnology_, 35:342–346, doi:[10.1038/nbt.3780](https://doi.org/10.1038/nbt.3780). 
* Lahti L., Huovari J., Kainu M., and Biecek, P. (2017): [**Retrieval and analysis of Eurostat open data with the eurostat package**](https://journal.r-project.org/archive/2017/RJ-2017-019/RJ-2017-019.pdf), _The R Journal_, 9(1):385-392.
* Marwick B., Boettiger C., and Mullen L. (2017): [**Packaging data analytical work reproducibly using R (and friends)**](https://peerj.com/preprints/3192.pdf), _The American Statistician_, doi:[10.1080/00031305.2017.1375986](https://doi.org/10.1080/00031305.2017.1375986).
* Piccolo S.R. and Frampton M.B. (2016): [**Tools and techniques for computational reproducibility**](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4940747/pdf/13742_2016_Article_135.pdf), Gigascience, 5(1):30, doi:[10.1186/s13742-016-0135-4](https://doi.org/10.1186/s13742-016-0135-4).
* Boettiger C. (2015): [**An introduction to Docker for reproducible research**](http://arxiv.org/abs/1410.0846), _ACM SIGOPS Operating Systems Review_, Special Issue on Repeatability and Sharing of Experimental Artifacts, 49(1):71-79, doi:[10.1145/2723872.2723882](https://doi.org/10.1145/2723872.2723882).
* [How to Dockerize an `R Shiny` App](https://towardsdatascience.com/how-to-dockerize-an-r-shiny-app-part-1-d4267659312a).
* [Generating Dockerfiles for reproducible research with `R`](https://o2r.info/2017/05/30/containerit-package/).
* [Dockerfile basics and best practices](https://docs.datascience.com/en/master/appendix-1/dockerfile-basics-and-best-practices-1.html).


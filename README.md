PRost
=======

Python and R for official statistics: self-contained services to access and handle _Eurostat_ data
---

This project is part of the Methodological Network initiative on user interfaces to _Eurostat_ online database.

<table align="center">
    <tr> <td align="left"><i>status</i></td> <td align="left">since 2018 &ndash; <b>on-going</b></td></tr> 
    <tr> <td align="left"><i>contributors</i></td> 
    <td align="left" valign="middle">
<a href="https://github.com/gjacopo"><img src="https://github.com/mmatyi.png" width="40"></a>
<a href="https://github.com/gjacopo"><img src="https://github.com/gjacopo.png" width="40"></a>
<a href="https://github.com/gjacopo"><img src="https://github.com/reisfe.png" width="40"></a>
<a href="https://github.com/gjacopo"><img src="https://github.com/oloski.png" width="40"></a>
</td> </tr> 
    <tr> <td align="left"><i>license</i></td> <td align="left"><a href="https://joinup.ec.europa.eu/sites/default/files/eupl1.1.-licence-en_0.pdfEUPL">EUPL</a> </td> </tr> 
</table>

**Run**

[**Launch a notebook with both `R` and `Python`**](https://mybinder.org/v2/gh/eurostat/PRost/master) installed together with the [`R eurostat`](https://cran.r-project.org/web/packages/eurostat/index.html) package.

**Examples**

Run your own script into a notebook, like in the examples below:

* a [quick and dirty notebook](https://nbviewer.jupyter.org/github/eurostat/PRost/blob/master/notebooks/eurostat_package_tutorial.ipynb) reproducing the tutorial for `R eurostat` package.
* an [R test notebook](https://mybinder.org/v2/gh/eurostat/prost/master?filepath=eurostat_package_test.ipynb) 
* a [notebook](https://mybinder.org/v2/gh/eurostat/prost/master?filepath=eurostat_flagr_test.ipynb) to test the [`flagr`](https://github.com/eurostat/flagr) package
* ...

**Notes**

The notebook is running on the [binder](https://mybinder.org/) platform, which automatically turns the `Dockerfile` in this repository into an interactive notebook.

Current `Dockerfile` is an extension of the `Jupyter Data Science Stack`.

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


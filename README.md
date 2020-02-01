<img src="inst/rstudio/templates/project/plungr.png" width="180px" align="right" style="margin-top:10px; margin-bottom:30px; margin-left:20px; clear:left;"/>

<!-- badges: start -->
[![Lifecycle: experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)
[![Travis build status](https://travis-ci.org/ozean12/plungr.svg?branch=master)](https://travis-ci.org/ozean12/plungr)
[![Codecov test coverage](https://codecov.io/gh/ozean12/plungr/branch/master/graph/badge.svg)](https://codecov.io/gh/ozean12/plungr?branch=master)
[![CRAN status](https://www.r-pkg.org/badges/version/plungr)](https://CRAN.R-project.org/package=plungr)
<!-- badges: end -->

# plungr 

`plungr` (/ˈplʌn(d)ʒə/) is an opinionated RStudio project template for 
building [Plumber](https://github.com/rstudio/plumber) APIs as packages.

Building your API as a package has some benefits:
  
* Use `testthat` to test your functions and the API itself
* Document every function and every endpoint
* Easier integration with CI/CD services like Travis or Jenkins
* Functions are reusable outside of the API project

## Using plungr

Install the development version of `plungr` with:
```r
# install.packages("remotes")
remotes::install_github("ozean12/plungr")
```

## Acknowledgments

Plungr wouldn't exist without the original efforts of the [golem](https://github.com/ThinkR-open/golem) package.

@juliasilge wrote a [post](https://community.rstudio.com/t/plumber-api-and-package-structure/18099) on RStudio community that gave us the idea.
There you can find further information about the topic of packaging Plumber APIs.

## Contributing

PRs, issues and ideas are welcome!

Please note that the `plungr` project is released with a
[Contributor Code of Conduct](CODE_OF_CONDUCT.md).
By contributing to this project, you agree to abide by its terms.

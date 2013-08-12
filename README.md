MatrixPLS
============================

   **MatrixPLS** is a matrix based implementation of Partial Least Squares Path Modeling
   algorithm. The matrix based implementation is computationally more efficient than 
   existing PLS implementation (plspm and semPLS) and does not require raw data but
   calculates the PLS estimates from a covariance matrix. The package is designed 
   towards Monte Carlo simulations with simsem.
   
   MatrixPLS is currently under development and not suitable for end-users.
   
## Development

MatrixPLS has three development targets or main requirements

1. MatrixPLS should be able to estimate all relevant [vignettes from simsem](https://github.com/simsem/simsem/wiki/Vignette)
2. MatrixPLS works as drop-in replacement for the most recent version of [plspm](http://cran.r-project.org/web/packages/plspm/)
3. MatrixPLS works as drop-in replacement for the most recent version of [plsSEM](http://cran.r-project.org/web/packages/semPLS/)

All simsem vignettes shoul work by just replacing the call to sim with a call to matrixpls.sim. Compatibility with plspm and semPLS should be as easy as substuting the calls to plspm function with matrixpls.plspm and semPLS with matrixpls.semPLS.

MatrixPLS uses test driven development with [Runit](http://cran.r-project.org/web/packages/RUnit/). This means that the tests are written first and then software is implemented to conform with the tests.

Useful links:

[http://www.r-bloggers.com/tips-for-r-package-creation/]
[https://github.com/hadley/devtools/wiki]
[http://stackoverflow.com/questions/7297458/how-to-develop-a-package-in-r]

## Requirements and Installation

To install the latest development version of **MatrixPLS** from github (using the package "devtools"), run in your R console:
```
# install.packages("devtools") 
library(devtools)
install_github('matrixpls', username='mronkko')
```

To check out the source code and install from local copy, run the following shell commands

```
git clone https://github.com/mronkko/matrixpls.git
R CMD BUILD matrixpls
R CMD CHECK matrixpls_0.0.1.tar.gz
R CMD INSTALL matrixpls_0.0.1.tar.gz
```

Author Contact
--------------
Mikko Rönkkö (mikko.ronkko@aalto.fi)

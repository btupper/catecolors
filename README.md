# glasbey

Discrete 256-color table devised by Glasbey et al suitable for catagorical coloring.

### References:

Glasbey, Chris, et al. "Colour displays for categorical images." Color Research & Application 32.4 (2007): 304-309.

Adpated from an implementation in ImageJ by Gabrial Landini \url{http://www.dentistry.bham.ac.uk/landinig/software/software.html}

### Installation

It's fairly easy to install using Hadley Wickham's [devtools](http://cran.r-project.org/web/packages/devtools/index.html).

```r
library(devtools)
install_github('btupper/glasbey')
```

### Usage

```r
library(glasbey)
plot(1:10, pch = 19, col = glasbey(11:20))
show_glasbey()
```

# glasbey

Discrete 256-color table devised by Glasbey et al suitable for catagorical coloring.

### References:

Glasbey, Chris, et al. ["Colour displays for categorical images."](http://onlinelibrary.wiley.com/doi/10.1002/col.20327/abstract) Color Research & Application 32.4 (2007): 304-309.

Adpated from an implementation in ImageJ by [Gabriel Landini](http://www.dentistry.bham.ac.uk/landinig/software/software.html)

Also on the ImageJ [wiki](http://imagej.net/Glasbey)

### Installation

It's fairly easy to install using Hadley Wickham's [devtools](http://cran.r-project.org/web/packages/devtools/index.html).

```r
library(devtools)
install_github('btupper/glasbey')
```

### Usage

```r
library(glasbey)
plot(1:10, pch = 19, col = glasbey(11:20), cex = 3)
show_glasbey()
```

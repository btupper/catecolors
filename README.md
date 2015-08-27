# catacolors

Color tables gleaned from various sources that are suitable for displaying catagorical (qualitative) colors.


### Color tables included

Glasbey: (GLASBEYLUT) Discrete 256-color table devised by Glasbey et al suitable for catagorical coloring.
Watlington: (WADLUT) JA Watlington (Wad's) Optimum 16 color palette
Kelly: (KELLYLUT) KL Kelly's Twenty-two colors of maximum contrast
Boynton: (BOYNTONLUT) RM Boynton's Eleven colors that are almost never confused

### References:

##### Glasbey (GLASBEYLUT)

    + Glasbey, Chris, et al. ["Colour displays for categorical images."](http://onlinelibrary.wiley.com/doi/10.1002/col.20327/abstract) Color Research & Application 32.4 (2007): 304-309.

    + Adpated from an implementation in ImageJ by [Gabriel Landini](http://www.dentistry.bham.ac.uk/landinig/software/software.html)

    + Also see ImageJ [wiki](http://imagej.net/Glasbey)

![image](https://github.com/btupper/catacolors/blob/master/inst/glasbey.png)

##### Watlington (WADLUT)

    + Watlington's personal [webpage](http://alumni.media.mit.edu/~wad/color/palette.html)

![image](https://github.com/btupper/catacolors/blob/master/inst/watlington.png)   
 
##### Kelly (KELLYLUT)
    
    + K. L. Kelly. Twenty two colors of maximum contrast. Color Engineering, 3:26{27}, 1965.
    
    + http://www.iscc.org/pdf/PC54_1724_001.pdf
    
    + A [post](http://stackoverflow.com/questions/470690/how-to-automatically-generate-n-distinct-colors) by Ohad Schneider

![image](https://github.com/btupper/catacolors/blob/master/inst/kelly.png)

##### Boynton (BOYNTONLUT)

    + Robert M. Boynton. [Eleven Colors That Are Almost Never Confused.](http://spie.org/Publications/Proceedings/Paper/10.1117/12.952730) In SPIE Proc. #1077 - Human Vision, Visual Processing, and Digital Display, pages 322-332, Bellingham, WA, 1989. SPIE. 

    + A [post](http://stackoverflow.com/questions/470690/how-to-automatically-generate-n-distinct-colors) by Ohad Schneider

![image](https://github.com/btupper/catacolors/blob/master/inst/boynton.png)

### Installation

It's fairly easy to install using Hadley Wickham's [devtools](http://cran.r-project.org/web/packages/devtools/index.html).

```r
library(devtools)
install_github('btupper/catacolors')
```

### Usage

```r
library(catacolors)
plot(1:10, pch = 19, col = glasbey(11:20), cex = 3)
show_glasbey()
```




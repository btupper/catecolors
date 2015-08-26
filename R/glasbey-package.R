# glasbey-package.R

#' Discrete 256-color table devised by Glasbey et al suitable for catagorical coloring.
#'
#' Glasbey, Chris, et al. "Colour displays for categorical images." 
#' Color Research & Application 32.4 (2007): 304-309.
#' 
#' Here is an implementation in ImageJ by Gabriel Landini 
#' \url{http://www.dentistry.bham.ac.uk/landinig/software/software.html}
#'
#' @name glasbey-package
#' @docType package
NULL

#' Glasbey's colors specified in hexidecimal strings and rgb
#'
#' @format A 4 variable 256 row data frame color specifications containing
#'    \describe{
#'       \item{hex}{hexidecimal string color value}
#'       \item{red}{Red value scaled 0-255}
#'       \item{green}{Green value scaled 0-255}
#'       \item{blue}{Blue value scaled 0-255}
#'    }   
#' @source adapted from \href{http://www.dentistry.bham.ac.uk/landinig/software/software.html}{Gabrial Landini's} work with ImageJ
"GLASBEYLUT"

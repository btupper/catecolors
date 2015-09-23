# catecolors-package.R


#' Color tables for displaying categorical data including Glasbey's (256 colors), Wad's (16 colors), Kelly's (22 colors) and Boynton's (11 colors)
#'
#' @name catecolors
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
#' @source adapted from \href{# http://stackoverflow.com/questions/470690/how-to-automatically-generate-n-distinct-colors}{Gabrial Landini's} work with ImageJ
"GLASBEYLUT"

#' Boynton's 11 colors specified in hexidecimal strings and rgb.
#'
#' @format A 4 variable 11 row data frame color specifications containing
#'    \describe{
#'       \item{hex}{hexidecimal string color value}
#'       \item{red}{Red value scaled 0-255}
#'       \item{green}{Green value scaled 0-255}
#'       \item{blue}{Blue value scaled 0-255}
#'    }   
#' @source adapted from \href{http://stackoverflow.com/questions/470690/how-to-automatically-generate-n-distinct-colors}{Ohad Schneider}
"BOYNTONLUT"

#' Kelly's 22 colors specified in hexidecimal strings and rgb.
#'
#' @format A 4 variable 22 row data frame color specifications containing
#'    \describe{
#'       \item{hex}{hexidecimal string color value}
#'       \item{red}{Red value scaled 0-255}
#'       \item{green}{Green value scaled 0-255}
#'       \item{blue}{Blue value scaled 0-255}
#'    }   
#' @source adapted from \href{http://stackoverflow.com/questions/470690/how-to-automatically-generate-n-distinct-colors}{Ohad Schneider}
"KELLYLUT"

#' Watlington's (Wad's) 16 colors specified in hexidecimal strings and rgb.
#'
#' @format A 4 variable 16 row data frame color specifications containing
#'    \describe{
#'       \item{hex}{hexidecimal string color value}
#'       \item{red}{Red value scaled 0-255}
#'       \item{green}{Green value scaled 0-255}
#'       \item{blue}{Blue value scaled 0-255}
#'    }   
#' @source adapted from \href{http://alumni.media.mit.edu/~wad/color/palette.html}{John A Watlinton}
"WADLUT"


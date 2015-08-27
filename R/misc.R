# misc.R

#' Retrieve one or more of color specifications as hex, rgb triplets or a data.frame
#'
#'
#' @export
#' @param LUT a color look-up table data frame.  See \code{link{GLASBEYLUT}}, 
#' \code{link{WADLUT}}, \code{link{KELLYLUT}} and \code{link{BOYNTONLUT}}.
#' @param index a vector of numeric or character indices to retrieve colors,
#' if missing then all are returned. If the look-up table has row names, then 
#' one can use those for indexing.
#' @param form character, either 'hex', 'rgb' or 'data.frame'
#' @param name logical, ignored if form is 'data.frame'
#' @return color values in the form specified
#' \describe{
#'    \item{hex}{a character vector of hexidecimal strings, this is the default}
#'    \item{rgb}{a 3-column matrix of red, green and blue values}
#'    \item{data.frame}{a 4 column data frame, see \code{\link{GLASBEYLUT}} }
#' }
#' @examples
#' lut <- get_lut(WADLUT, 3:16, form = 'hex', name = TRUE)
#' plot(3:16, pch = 19, col = lut, cex = 3)
get_lut <- function(LUT, index, 
   form = c("hex", "rgb", "data.frame")[1], name = FALSE){

   if (missing(LUT)) stop("LUT is required")
   if (name) nm <- rownames(LUT)
   if (missing(index)) index <- seq_len(nrows(LUT))
   form <- tolower(form[1])
   
   if (form == "hex"){
 
      x <- LUT[index,'hex']
      if (name) names(x) <- rownames(LUT)[index]
 
   } else if (form == "rgb"){
 
      x <- as.matrix(LUT[index, c('red', 'green', 'blue')])
      if (name) names(x) <- rownames(LUT)[index]
 
   } else {
 
      x <- LUT[index,]
 
   }

   x
}

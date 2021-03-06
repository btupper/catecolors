#' Retrieve one or more of Glasbey et al 256 color specifications as 
#' hex, rgb triplets or a data.frame
#'
#'
#' @export
#' @param index a vector of indices to retrieve if missing then all 256 are returned
#' @param ... further arguments for \code{\link{get_lut}}
#' @return color values in the form specified
#' \describe{
#'    \item{hex}{a character vector of hexidecimal strings, this is the default}
#'    \item{rgb}{a 3-column matrix of red, green and blue values}
#'    \item{data.frame}{a 4 column data frame, see \code{\link{GLASBEYLUT}} }
#' }
#' @examples
#'   plot(1:10, pch = 19, col = glasbey(11:20))
glasbey <- function(index, ...){
  if (missing(index)) index <- seq_len(nrow(GLASBEYLUT))
  get_lut(GLASBEYLUT, index, ...)
}


#' Show the Glasbey et al colors in a palette view
#'
#' @export
#' @param label logical, if TRUE then label each color with it's number
show_glasbey <- function(label = TRUE){
   x <- matrix(glasbey(), nrow = 16, ncol = 16, byrow = TRUE)
   plot(0:18, 0:18, typ = 'n', axes = FALSE, xlab = '', ylab = '', main = 'Glasbey 256-Color Table')
   x <- as.raster(x)
   x <- x[nrow(x):1, ]
   rasterImage(x, 1,1,17,17, interpolate = FALSE)
   if (label){
      col <- glasbey()[c(256, 1:255)]
      #col <- col[nrow(col):1, ]
      y <- 1:16
      text.cex <- 0.8
      txt <- 1:256
      x <- rep(1:16, time = 16)
      y <- rep(1:16, each = 16)
      text(x + 0.5 , y + 0.5, txt, col = col, cex = text.cex, adj = c(0.5, 0.5)) 
   } else {
      text(.25, 1:16 + 0.5, seq(from = 1, to = 256, by = 16))
      text(16.25, 1:16 + 0.5, seq(from = 16, to = 256, by = 16))
   }
   invisible(NULL)
}
   
   


#' Retrieve one or more color specifications as hex, rgb triplets or a data.frame
#'
#'
#' @export
#' @param index a vector of indices to retrieve if missing then all 256 are returned
#' @param form character specifies return type as 'hex', 'rgb' or 'data.frame'
#' @return color values in the form specified
#' \describe{
#'    \item{hex}{a character vector of hexidecimal strings, this is the default}
#'    \item{rgb}{a 3-column matrix of red, green and blue values}
#'    \item{data.frame}{a 4 column data frame, see \code{\link{GLASBEYLUT}} }
#' }
#' @examples
#'   plot(1:10, pch = 19, col = glasbey(11:20))
glasbey <- function(index, form = c("hex", "rgb", "data.frame")[1]){
   
  if (missing(index)) index <- seq_len(nrow(GLASBEYLUT))
   
   switch( tolower(form[1]),
      'hex' = GLASBEYLUT[index,'hex'],
      'rgb' = as.matrix(GLASBEYLUT[index,c('red', 'green', 'blue')]),
      GLASBEYLUT[index,]
   )
}


#' Show the colors in a palette view
#'
#' @export
#' @param label logical, if TRUE then label each color with it's number
show_glasbey <- function(label = TRUE){
   x <- matrix(glasbey(), nrow = 16, ncol = 16, byrow = TRUE)
   plot(0:18, 0:18, typ = 'n', axes = FALSE, xlab = '', ylab = '', main = 'Glasbey Color Table')
   x <- as.raster(x)
   x <- x[nrow(x):1, ]
   rasterImage(x, 1,1,17,17, interpolate = FALSE)
   if (label){
      col <- matrix(glasbey()[c(256, 1:255)], nrow = 16, ncol = 16, byrow = TRUE)
      col <- col[nrow(col):1, ]
      y <- 1:16
      text.cex <- 0.8
      for (i in 1:16) {
         text(i + 0.5 , y + 0.5, i*y, col = col[i,y], cex = text.cex, adj = c(0.5, 0.5)) 
      }
   } else {
      text(.25, 1:16 + 0.5, seq(from = 1, to = 256, by = 16))
   }
   invisible(NULL)
}
   
   


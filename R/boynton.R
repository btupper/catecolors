# boynton.R

#' Retrieve one or more of Boynton's 11 color specifications as hex, 
#'    rgb triplets or a data.frame
#'
#'
#' @export
#' @param index a vector of indices to retrieve if missing then all 11 are returned
#' Boynton's colors are named, so it is possible to specify by name or position index
#' @param ... further arguments for \code{\link{get_lut}}
#' @return color values in the form specified
#' \describe{
#'    \item{hex}{a character vector of hexidecimal strings, this is the default}
#'    \item{rgb}{a 3-column matrix of red, green and blue values}
#'    \item{data.frame}{a 4 column data frame, see \code{\link{BOYNTONLUT}} }
#' }
#' @examples
#'   plot(3:11, pch = 19, col = boynton(3:11))
boynton <- function(index, ...){
  if (missing(index)) index <- seq_len(nrow(BOYNTONLUT))
  get_lut(BOYNTONLUT, index, ...)
}

#' Show the colors in a palette view
#'
#' @export
show_boynton <- function(){
   on.exit(par(opar))
   opar <- par(no.readonly = TRUE)
   col <- boynton(name = TRUE)
   txt <- names(col)
   n <- length(col)
   w <- 2
   x <- matrix(unname(col), nrow = n, ncol = w)
   plot(c(1,w), c(1, n), typ = 'n', 
      axes = FALSE, xlab = '', ylab = '', 
      main = 'Boynton 11-Color Table')
   u <- par("usr")
   x <- as.raster(x)
   x <- x[nrow(x):1, , drop = FALSE]
   par(xpd = NA)
   rasterImage(x, 1,1,w,n+1, interpolate = FALSE)
   rect(1,1,w,n+1, border = 'black')
   col <- col[c(2:n, 1)]
   text.cex <- 0.8
   x <- rep((u[2]-u[1])/2 + u[1], n)
   y <- 1:n + 0.5
   text(x , y, txt, col = col, cex = text.cex, adj = c(0.5,0.5)) 
   invisible(NULL)
}
      
      
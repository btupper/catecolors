# kelly.R

# K. L. Kelly. Twenty two colors of maximum contrast. Color Engineering, 3:26{27, 1965.
# http://www.iscc.org/pdf/PC54_1724_001.pdf

#' Retrieve one or more of Kelly's 22 color specifications as hex, 
#'    rgb triplets or a data.frame
#'
#'
#' @export
#' @param index a vector of indices to retrieve if missing then all 22 are returned
#' Watlingtons colors are named, so it is possible to specify by name or position index
#' @param ... further arguments for \code{\link{get_lut}}
#' @return color values in the form specified
#' \describe{
#'    \item{hex}{a character vector of hexidecimal strings, this is the default}
#'    \item{rgb}{a 3-column matrix of red, green and blue values}
#'    \item{data.frame}{a 4 column data frame, see \code{\link{KELLYLUT}} }
#' }
#' @examples
#'   plot(2:22, pch = 19, col = kelly(2:22))
kelly <- function(index, ...){
  if (missing(index)) index <- seq_len(nrow(KELLYLUT))
  get_lut(KELLYLUT, index, ...)
}

#' Show the colors in a palette view
#'
#' @export
show_kelly <- function(){
   on.exit(par(opar))
   opar <- par(no.readonly = TRUE)
   col <- kelly(name = TRUE)
   txt <- names(col)
   n <- length(col)
   w <- 2
   h <- n/w
   x <- matrix(unname(col), nrow = h, ncol = w)
   plot(c(1,w), c(1, h), typ = 'n', 
      axes = FALSE, xlab = '', ylab = '', 
      main = 'Kelly 22-Color Table')
   u <- par("usr")
   x <- as.raster(x)
   x <- x[nrow(x):1, , drop = FALSE]
   rasterImage(x, 1,1,w,h, interpolate = FALSE)
   rect(1,1,w,h, border = 'black')
   col <- col[c(n, 1:(n-1))]
   par(xpd = NA)
   text.cex <- 0.8
   x <- rep((u[2]-u[1]) * c(0.25, 0.75) + u[1], each = h)
   y <- rep(seq(from = 1, to = (n/w)-1, length = n/w), times = w) + 0.5
   text(x , y, txt, col = col, cex = text.cex, adj = c(0.5,0.5)) 
   invisible(NULL)
}

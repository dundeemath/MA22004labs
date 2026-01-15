#' Plot a collection of confidence intervals
#'
#' Plots multiple confidence intervals on a common axis. Intervals that do not
#' contain the reference value `m` are highlighted.
#'
#' This function is designed for the MA22004 labs to visualise repeated
#' confidence intervals for a population mean.
#'
#' @param lo Numeric vector of lower confidence interval bounds.
#' @param hi Numeric vector of upper confidence interval bounds (same length as `lo`).
#' @param m Reference value to show as a vertical dashed line (typically the true mean).
#'
#' @return Invisibly returns `NULL`. Called for its side effect of producing a plot.
#'
#' @examples
#' set.seed(1)
#' lo <- rnorm(50, mean = -0.2, sd = 0.1)
#' hi <- lo + abs(rnorm(50, mean = 0.4, sd = 0.1))
#' plot_ci(lo, hi, m = 0)
#'
#' @importFrom graphics par plot abline axis points lines
#' @export
plot_ci <- function(lo, hi, m){
 par(mar=c(2, 1, 1, 1), mgp=c(2.7, 0.7, 0))
 k <- 50
 ci.max <- max(rowSums(matrix(c(-1*lo,hi),ncol=2)))

 xR <- m + ci.max*c(-1, 1)
 yR <- c(0, 41*k/40)

 plot(xR, yR, type='n', xlab='', ylab='', axes=FALSE)
 abline(v=m, lty=2, col='#00000088')
 axis(1, at=m, paste("true mean = ",round(m,2)), cex.axis=1.15)
 #axis(2)
 for(i in 1:k){
  x <- mean(c(hi[i],lo[i]))
  ci <- c(lo[i],hi[i])
  if(MA22004labs::contains(lo[i],hi[i],m)==FALSE){
   col <- "#F05133"
   points(x, i, cex=1.4, col=col)
   #		  points(x, i, pch=20, cex=1.2, col=col)
   lines(ci, rep(i, 2), col=col, lwd=5)
  }
  col <- 1
  points(x, i, pch=20, cex=1.2, col=col)
  lines(ci, rep(i, 2), col=col)
 }
}

#' Visualise residuals and sum of squares for a fitted line
#'
#' Produces a scatter plot of `y` versus `x` and fits a line either by:
#' (1) letting the user click two points on the plot, or
#' (2) fitting the least-squares regression line.
#'
#' The function then computes residuals and prints the sum of squared residuals.
#' Optionally, it draws "squares" whose side lengths correspond to residual sizes
#' as a visual demonstration of least squares.
#'
#' @param x Numeric vector of x-values.
#' @param y Numeric vector of y-values (same length as `x`).
#' @param showSquares Logical; if `TRUE`, draw squares illustrating squared residuals.
#' @param leastSquares Logical; if `TRUE`, fit the least-squares line using [stats::lm()].
#'
#' @return Invisibly returns a list containing:
#' \itemize{
#'   \item `model`: the fitted `lm` object
#'   \item `ss`: the residual sum of squares
#' }
#' The function is mainly used for its plot and printed output.
#'
#' @examples
#' set.seed(1)
#' x <- 1:10
#' y <- 1 + 0.5 * x + rnorm(10, sd = 0.5)
#' plot_ss(x, y, leastSquares = TRUE)
#'
#' @importFrom graphics plot points lines abline locator par
#' @importFrom stats lm predict
#' @export
plot_ss <- function(x, y, showSquares = FALSE, leastSquares = FALSE){
 plot(y~x, asp = 1)# xlab = paste(substitute(x)), ylab = paste(substitute(y)))

 if(leastSquares){
  m1 <- lm(y~x)
  y.hat <- m1$fit
 } else{
  cat("Click two points to make a line.")
  pt1 <- locator(1)
  points(pt1$x, pt1$y, pch = 4)
  pt2 <- locator(1)
  points(pt2$x, pt2$y, pch = 4)
  pts <- data.frame("x" = c(pt1$x, pt2$x),"y" = c(pt1$y, pt2$y))
  m1 <- lm(y ~ x, data = pts)
  y.hat <- predict(m1, newdata = data.frame(x))
 }
 r <- y - y.hat
 abline(m1)

 oSide <- x - r
 LLim <- par()$usr[1]
 RLim <- par()$usr[2]
 oSide[oSide < LLim | oSide > RLim] <- c(x + r)[oSide < LLim | oSide > RLim] # move boxes to avoid margins

 n <- length(y.hat)
 for(i in 1:n){
  lines(rep(x[i], 2), c(y[i], y.hat[i]), lty = 2, col = "blue")
  if(showSquares){
   lines(rep(oSide[i], 2), c(y[i], y.hat[i]), lty = 3, col = "orange")
   lines(c(oSide[i], x[i]), rep(y.hat[i],2), lty = 3, col = "orange")
   lines(c(oSide[i], x[i]), rep(y[i],2), lty = 3, col = "orange")
  }
 }

 SS <- round(sum(r^2), 3)
 cat("\r                                ")
 print(m1)
 cat("Sum of Squares: ", SS)
}

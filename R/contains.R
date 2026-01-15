#' Test whether a value lies inside an interval
#'
#' Returns `TRUE` if the value `m` lies between `lo` and `hi` (inclusive),
#' and `FALSE` otherwise. This helper is used by [MA22004labs::plot_ci()] to determine
#' whether an interval contains the reference value (typically the true mean).
#'
#' @param lo Lower endpoint of the interval.
#' @param hi Upper endpoint of the interval.
#' @param m Value to test.
#'
#' @return A logical scalar (`TRUE` or `FALSE`).
#'
#' @examples
#' contains(0, 1, 0.5)
#' contains(0, 1, 2)
#'
#' @export
contains <- function(lo,hi,m){
 if(m>= lo & m <= hi) return(TRUE)
 else return(FALSE)
}

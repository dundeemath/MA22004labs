#' @export
contains <- function(lo,hi,m){
 if(m>= lo & m <= hi) return(TRUE)
 else return(FALSE)
}

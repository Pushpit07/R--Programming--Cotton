#' Function to calculate mean
#'
#' @param vec 
#'
#' @return
#' @export
#'
#' @examples
#' myMean(1:10)
myMean <-
function(vec) {
  len <- length(vec)
  sm <- sum(vec)
  
  sm/len
}

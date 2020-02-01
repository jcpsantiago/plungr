#' Simple request logger
#'
#' @param req plumber request environment
#' @param res plumber response environment
#' 
#' @export
log_request <- function(req, res) {
  message("The path is ", req$PATH_INFO)

  plumber::forward()
}

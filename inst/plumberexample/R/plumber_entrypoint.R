#' Run the plungrexample API
#'
#' @param .host IP of the host, Default: 0.0.0.0
#' @param .port Which port to use for the API, Default: 8000
#' @param ... Options passed to \code{plumber::plumb()$run()}
#' 
#' @return A running Plumber API
#' @export
#' 
#' @examples
#' \dontrun{
#' run_api()
#' run_api(.host = "127.0.0.1", port = 4242)}
run_api <- function(.host = "0.0.0.0", .port = 8000, ...) {
  pr <- plumber::plumb(dir = system.file("endpoints",
    package = "plungrexample"
  ))
  
  pr$run(host = .host, port = .port, ...)
}

library(plungrexample)

# TODO: function to automatically create the @param fields from the endpoint_functions definitions

#* @apiTitle Plumber Example API

#* Log requests
#* @filter log_request
plungrexample::log_request

#* Echo back the input
#* @param msg The message to echo
#* @get /echo
plungrexample::echo_back

#* Plot a histogram
#* @png
#* @get /plot
plungrexample::plot_histogram

#* Return the sum of two numbers
#* @param a The first number to add
#* @param b The second number to add
#* @post /sum
plungrexample::sum_numbers

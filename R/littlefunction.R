#' Make a ARIMA forecast
#'
#' This function takes a vector or time series of data,
#' fits a ARIMA function (selected with AIC), and
#' plots the data. This is different than \link{hello}.
#'
#' @param data This is a time-series of data. Must be a vector
#' or a ts object.
#' @param nyears Number of years in the future to forecast.
#' Must > 0.
#'
#' @examples
#' littleforecast(WWW2)
#' @export
littleforecast <- function(data, nyears=1){
  fit <- forecast::auto.arima(data)
  fc <- forecast::forecast(fit, h = nyears)
  ggplot2::autoplot(fc)
  class(fit) <- c("foo", class(fit))
  return(fit)
}

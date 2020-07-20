#' Fetch analytics
#'
#' @param metrics (chr) metrics to consider (see details)
#' @param dimensions (chr) dimensions to consider (see details)
#' @param email (chr, NULL) email linked to the account investigated,
#'   if NULL it will uses dg.
#' @param view_id (chr, NULL) project id to investigate, if NULL the
#'   #PRESTOinsieme will be used.
#' @param date_range (chr) a character vector of length two with the
#'   date range (first, last) of interest
#' @param all_results (lgl, FALSE) do you want to fetch all the results?
#' @param max (int) how many results do you want to fetch? Default is
#'   10 if `all_results` is `FALSE`, and -1 (ie "all) if `all_results`
#'  is `TRUE`.
#'
#' @details The first time a query is made for an account the system
#'   will ask to perform an OAuth authentication to the Google analytics
#'   account, and it will cache the token system wise (ie, accessible
#'   to all the user of the package
#'   [googleAnalyticsR][googleAnalyticsR]).
#'
#'   To auto-authenticate on package load, add an environment argument
#'   GARGLE_EMAIL via an .Renviron file or otherwise.
#'
#'   Eg in `.Renviron` set:
#'
#'   `GARGLE_EMAIL=your@email.com`
#'
#'   Metrics ad dimensions can be explored
#'   [here](https://ga-dev-tools.appspot.com/dimensions-metrics-explorer/)
#'
#' @seealso [googleAnalyticsR's setup](
#'   http://code.markedmondson.me/googleAnalyticsR/articles/setup.html
#' )
#'
#' @return a [tibble][tibble::tibble-package]
#' @export
#'
#' @examples
#' \dontrun{
#'   fetch_analytics()
#' }
fetch_analytics <- function(
  metrics = c("users", "newUsers"),
  dimensions = c("userType", "sessionCount"),
  email = NULL,
  view_id = NULL,
  date_range = c("2020-01-01", "yesterday"),
  all_results = FALSE,
  max = ifelse(all_results, -1, 10)
) {

  email <- email %||% "gregoridar@gmail.com"
  view_id <- view_id %||% "214106116"

  ga_auth(email = email)

  google_analytics(
    viewId = view_id,
    date_range = date_range,
    metrics = metrics,
    dimensions = dimensions,
    max = max
  )
}

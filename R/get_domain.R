#' Get domain
#' @param url (chr)
#' @seealso https://stackoverflow.com/questions/19020749/function-to-extract-domain-name-from-url-in-r
#' @export
get_domain <- function(url) {
  strsplit(gsub("http://|https://|www\\.", "", url), "/")[[c(1, 1)]]
}


#' Get domain
#'
#' @param url (chr) url from which extract the domain
#' @param include_suffix (lgl, default FALSE) would you like to get the
#'   suffix too (dot included)?
#'
#' @seealso https://stackoverflow.com/questions/19020749/function-to-extract-domain-name-from-url-in-r
#' @export
#' @examples
#' get_domain("www.example.com")
#' get_domain("http://www.example.com")
#' get_domain("https://www.example.com")
#' get_domain("example.com")
#' get_domain("https://www.example.com/foo/bar?tar")
#' get_domain("https://www.foo.example.com/bar?tar")
get_domain <- function(url, include_suffix = TRUE) {
  res <- paste0("\\3", c("\\4\\5")[include_suffix])
  sub(url_regexpr(), res, url)
}

url_regexpr <- function() {
  protocol <- "([^/]+://)*"  # could be
  sub <- "([^\\.\\?/]+\\.)*"  # could be
  domain <- "([^\\.\\?/]+)"  # must be
  dot <- "(\\.)"  # must be
  suffix <- "([^/]+)"  # must be
  folders <- "(/[^\\?]*)*"  # could be
  args <- "(\\?.*)*"  #could be

  .Internal(paste0(
    list("^",
      protocol, sub, domain, dot, suffix, folders, args,
    "$"),
    NULL
  ))
}

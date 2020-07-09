usethis::use_dev_package("googleAnalyticsR")
usethis::use_dev_package("googleAuthR")

usethis::use_test("fetch_analytics"); usethis::use_r("fetch_analytics")

## This should send you to your browser to authenticate your email.
# Authenticate with an email that has access to the
# Google Analytics View you want to use.
googleAnalyticsR::ga_auth()

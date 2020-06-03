devubesp::create_ubesp_analysis("presto")
use_directory("dev", TRUE)
# created this file

usethis::use_gpl3_license()
use_readme_rmd()
usethis::use_code_of_conduct()
usethis::use_lifecycle_badge("Maturing")
usethis::use_roxygen_md()
usethis::use_package_doc()
usethis::use_news_md()
usethis::use_logo("~/Downloads/prestoinsieme.png")

usethis::use_testthat()
usethis::use_data()

usethis::use_git()
usethis::git_vaccinate()

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
usethis::use_dev_package("autotestthat", type = "Suggests")
usethis::use_data()

usethis::use_git()
usethis::git_vaccinate()
usethis::use_github("UBESP-DCTV")
usethis::use_tidy_github()
usethis::use_github_action("lint")
usethis::use_github_action("test-coverage")
usethis::use_coverage()
usethis::use_tidy_github_actions()
use_tidy_description()
use_tidy_support()

usethis::use_pipe()
usethis::use_test("pipe")
usethis::use_tibble()

# remotes::install_github("CorradoLanera/usethis")
usethis::use_dev_package("usethis")
usethis::use_ui()
usethis::use_spell_check()

usethis::use_r("utils")
usethis::use_test("utils")
# added R/utils.R


usethis::use_tidy_description()
devtools::document(
  roclets = c('rd', 'collate', 'namespace', 'vignette')
)

renv::init()

lintr::lint_package()


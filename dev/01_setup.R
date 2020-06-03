# Wed Jun  3 17:08:37 2020 ------------------------------

# Creation --------------------------------------------------------

devubesp::create_ubesp_analysis("presto")
use_directory("dev", TRUE)
fs::file_create("dev/01_setup.R")
rstudioapi::navigateToFile("dev/01-setup.R")

# Documentation ---------------------------------------------------

usethis::use_gpl3_license()
usethis::use_roxygen_md()
usethis::use_package_doc()
usethis::use_news_md()

use_readme_rmd()
usethis::use_logo("~/Downloads/prestoinsieme.png")
usethis::use_lifecycle_badge("Maturing")
usethis::use_code_of_conduct()
usethis::use_spell_check()


# Interface -------------------------------------------------------

# remotes::install_github("CorradoLanera/usethis")
usethis::use_dev_package("usethis")
usethis::use_ui()

usethis::use_data()
usethis::use_pipe()
usethis::use_tibble()
usethis::use_r("utils")




# git/github ------------------------------------------------------

usethis::use_git()
usethis::git_vaccinate()

usethis::use_github("UBESP-DCTV")
usethis::use_tidy_github()


# CI --------------------------------------------------------------

usethis::use_testthat()
usethis::use_dev_package("autotestthat", type = "Suggests")

usethis::use_test("pipe")
usethis::use_test("utils")

usethis::use_tidy_github_actions()
usethis::use_github_action("lint")
usethis::use_github_action("test-coverage")
usethis::use_coverage()



# finalization ----------------------------------------------------

usethis::use_tidy_description()
spelling::spell_check_package()
lintr::lint_package()

devtools::document(
  roclets = c('rd', 'collate', 'namespace', 'vignette')
)



# renv ------------------------------------------------------------

renv::init()
fs::file_create("dev/02_dev.R")
rstudioapi::navigateToFile("dev/02_dev.R")


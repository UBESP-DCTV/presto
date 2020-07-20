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
usethis::use_dev_package("depigner")
depigner::use_ui()

usethis::use_pipe()
usethis::use_test("pipe")
usethis::use_tibble()
usethis::use_test("utils"); usethis::use_r("utils")




# git/github ------------------------------------------------------

usethis::use_git()
usethis::git_vaccinate()

usethis::use_github("UBESP-DCTV")
usethis::use_tidy_github()


# CI --------------------------------------------------------------

usethis::use_testthat()
usethis::use_dev_package("autotestthat", type = "Suggests")




# finalization ----------------------------------------------------

usethis::use_tidy_description()
devtools::check_man()
spelling::spell_check_package()
spelling::update_wordlist()
lintr::lint_package()

devtools::test()
devtools::check()


# `{renv}` (after git!) -------------------------------------------

renv::init()
renv::status()




# Actions (after `{renv}`!) ---------------------------------------

usethis::use_github_action(
  url = "https://raw.githubusercontent.com/CorradoLanera/actions/master/pkgdown.yaml"
)
usethis::use_github_actions_badge("pkgdown")

renv::install("GuangchuangYu/badger")
badger::badge_custom("WEBsite", "click-me", "orange", "https://ubesp-dctv.github.io/presto/")

usethis::use_github_action(
  url = "https://raw.githubusercontent.com/CorradoLanera/actions/master/lint-renv.yaml"
)
usethis::use_github_actions_badge("lint")

usethis::use_github_action(
  url = "https://raw.githubusercontent.com/CorradoLanera/actions/master/R-CMD-check-renv.yaml"
)
usethis::use_github_actions_badge("R-CMD-check")

usethis::use_github_action(
  url = "https://raw.githubusercontent.com/CorradoLanera/actions/master/covr-renv.yaml"
)
usethis::use_github_actions_badge("test-coverage")



# next steps ------------------------------------------------------

usethis::use_version("dev")
fs::file_create("dev/02_dev.R")
rstudioapi::navigateToFile("dev/02_dev.R")


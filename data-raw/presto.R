## code to prepare `presto` dataset goes here
library(tidyverse)
library(readxl)
library(janitor)
library(here)

presto <- here(
    "../data-raw/results-survey633699_20200706_10.04.xlsx"
  ) %>%
  read_xlsx(guess_max = 4000, .name_repair = "universal") %>%
  clean_names() %>%
  mutate(across(starts_with("data"), as.Date))

usethis::use_data(presto)


covid_prov <- covid19ita::dpc_covid19_ita_regioni

usethis::use_data(covid_prov)

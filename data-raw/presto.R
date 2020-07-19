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


covid_prov <- covid19ita::dpc_covid19_ita_province %>%
  dplyr::mutate(date = as.Date(data), .keep = "unused")
usethis::use_data(covid_prov)


presto_base <- presto %>%
  dplyr::select(
    id_risposta:ultima_pagina,
    data_di_inizio:url_di_riferimento,
    -data_dell_ultima_azione
  ) %>%
  dplyr::rename(
    id = id_risposta,
    date = data_di_inizio,
    last_page = ultima_pagina,
    ip = indirizzo_ip
  ) %>%
  dplyr::mutate(
    domain = get_domain(url_di_riferimento),
    completed = !is.na(data_invio),
    .keep = "unused"
  ) %>%
  mutate(rgeolocate::ip_api(ip, delay = TRUE))
usethis::use_data(presto_base)

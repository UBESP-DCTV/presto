test_that("get_domain works", {
  expect_equal(get_domain("www.google.com"), "google.com")
  expect_equal(get_domain("https://www.google.com"), "google.com")

  expect_equal(get_domain("www.CorradoLanera.it"), "CorradoLanera.it")

})

test_that("fetch analytics", {
  skip_if_not(interactive(),
              "Autentication works on interactive session only")
  expect_is(fetch_analytics(max = 2), "data.frame")
})

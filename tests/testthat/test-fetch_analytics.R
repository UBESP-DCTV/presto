test_that("fetch analytics", {
  expect_is(fetch_analytics(max = 2), "data.frame")
})

test_that("fetch analytics", {
  expect_is(fetch_analytics(), "tbl_df")
})

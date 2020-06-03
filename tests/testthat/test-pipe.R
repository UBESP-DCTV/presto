test_that("pipe", {
  expect_equal(sum(1, 2), 1 %>% sum(2))
})

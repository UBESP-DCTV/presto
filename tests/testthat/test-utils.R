test_that("not in", {
  expect_false(1 %not_in% 1:10)
  expect_true(0 %not_in% 1:10)
})

test_that("not NULL", {
  expect_false(not_null(NULL))
  expect_true(not_null(1))
})

test_that("not NA", {
  expect_false(not_na(NA))
  expect_true(not_na(1))
})


test_that("drop nulls", {
  expect_equal(
    drop_nulls(list(a = 1, b = NULL, c = "a")),
    list(a = 1, c = "a")
  )
})


test_that("default if NULL", {
  expect_equal(NULL %||% 1, 1)
  expect_equal(2 %||% 1, 2)
})

test_that("default if NA", {
  expect_equal(NA %|NA|% 1, 1)
  expect_equal(2 %|NA|% 1, 2)
})

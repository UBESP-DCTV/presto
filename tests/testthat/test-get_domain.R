test_that("get_domain works", {
  expect_equal(get_domain("https://www.example.com"), "example.com")
  expect_equal(get_domain("http://www.example.com"), "example.com")
  expect_equal(get_domain("www.example.com"), "example.com")

  expect_equal(get_domain("www.example.net"), "example.net")
  expect_equal(get_domain("www.example.net/baz"), "example.net")

  expect_equal(get_domain("https://www.example.net/baz"), "example.net")
  expect_equal(get_domain("https://www.example.net/baz/tar"), "example.net")

  expect_equal(get_domain("https://foo.example.net"), "example.net")
  expect_equal(get_domain("https://www.foo.example.net"), "example.net")
})

test_that("get_domain is vectorized", {
  urls <- c("www.example.com", "www.example.net")
  expect_equal(get_domain(urls), c("example.com", "example.net"))
})


test_that("can remove suffix", {
  expect_equal(
    get_domain("https://www.example.com", include_suffix = FALSE),
    "example"
  )
})


test_that("works with file extensions", {
  expect_equal(
    get_domain("https://www.example.com/foo.php"),
    "example.com"
  )
})


test_that("works against leading slash", {
  expect_equal(
    get_domain("http://m.example.com/"),
    "example.com"
  )
})


test_that("works against args after slash", {
  expect_equal(
    get_domain("http://example.com/?"),
    "example.com"
  )
})

test_that("works against multiple dots after slash", {
  expect_equal(
    get_domain("http://example.com/foo.net.bar"),
    "example.com"
  )
})

test_that("generalized protocols", {
  expect_equal(
    get_domain("android-app://example.com/foo.net.bar"),
    "example.com"
  )
})

test_that("strip_brackets strips straight brackets at ends", {
  expect_equal(strip_brackets("[m[o]b]"), "m[o]b")
})
test_that("strip_brackets strips forward slashes at ends", {
  expect_equal(strip_brackets("/m/o/b/"), "m/o/b")
})

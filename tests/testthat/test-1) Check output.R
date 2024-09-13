test_that("Dataframe has correct structure and correct number of points", {
  result <- sim_proj(u = 50, theta = 45, h = 10, n = 100)
  expect_true(all(c("t", "x", "y") %in% names(result)))
  expect_equal(nrow(result), 100)
  expect_equal(result$y[nrow(result)], 0, tolerance = 1e-2)
})


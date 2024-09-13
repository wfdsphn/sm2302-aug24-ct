test_that("Function stops with non-numeric inputs", {
  expect_error(sim_proj(u = "fifty", theta = 45, h = 10, n = 100))
  expect_error(sim_proj(u = 50, theta = "forty-five", h = 10, n = 100))
})

test_that("Function handles invalid u, theta, h, and n", {
  expect_error(sim_proj(u = -10, theta = 45, h = 10, n = 100))
  expect_error(sim_proj(u = 50, theta = 361, h = 10, n = 100))
  expect_error(sim_proj(u = 50, theta = -45))
  expect_error(sim_proj(u = 50, theta = 45, h = 10, n = 0))
})

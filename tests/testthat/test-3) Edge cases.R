test_that("Function handles edge angles correctly", {
  vertical_launch <- sim_proj(u = 50, theta = 90, h = 0, n = 100)
  horizontal_launch <- sim_proj(u = 50, theta = 0, h = 0, n = 100)
  expect_equal(max(vertical_launch$x), 0, tolerance = 1e-2)
  expect_equal(max(horizontal_launch$y), 0, tolerance = 1e-2)
})

test_that("Function handles extreme values for initial velocity and height", {
  high_velocity <- sim_proj(u = 1000, theta = 45, h = 0, n = 100)
  high_height <- sim_proj(u = 50, theta = 45, h = 1000, n = 100)
  expect_true(max(high_velocity$x) > 0)
  expect_true(max(high_height$y) > 1000)
})

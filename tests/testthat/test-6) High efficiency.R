test_that("high_eff filters and computes correctly", {
  expect_equal(dim(high_eff), c(88, 5),
               info = "Data frame should have 88 rows and 5 columns")

  tmp <- unlist(high_eff %>% filter(NAME == "Luka Doncic"))

  expect_equal(as.numeric(tmp["Efficiency"]), 0.878419452887538,
               info = "Correct calculation of efficiency")

})

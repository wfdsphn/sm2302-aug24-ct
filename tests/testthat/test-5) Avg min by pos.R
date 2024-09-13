test_that("avg_minutes_by_pos returns correct grouping and averages", {

  expect_equal(dim(avg_min_by_pos), c(7, 2),
               info = "Data frame should have 7 rows and 2 columns")

  tmp <- unlist(avg_min_by_pos %>% filter(POS == "C"))
  names(tmp) <- NULL

  expect_equal(tmp, c("C", "24.1333333333333"),
               info = "Average minutes for center should be 24.1")
})


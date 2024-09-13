test_that("top_players", {

  expect_true(all(c("NAME", "TEAM", "POS", "GP", "PPG") %in% names(top_players)),
              info = "Columns NAME, TEAM, POS, GP, PPG should be present")

  expect_equal(nrow(top_players), sum(nba_stats$GP > 10),
               info = "Number of rows should match players with more than 10 games")

  expect_equal(top_players, top_players[order(-top_players$PPG),],
               info = "Data should be ordered by PPG in descending order")
})

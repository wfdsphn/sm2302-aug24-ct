## Part 2: Data Wrangling (10 marks)

In this test, you will demonstrate your ability to manipulate data using `dplyr` in R. You are provided with a dataset containing NBA player statistics. You may continue writing your solutions in the same `solution.R` script as in Part 1.

## Dataset

You will work with an NBA player statistics dataset named `NBA Stats 202324 All Stats  NBA Player Props Tool (4).csv`.

## Tasks

Complete all the tasks below. You are required to create the objects (tibbles/data frames) as specified. The expected output is provided for each task. These will then be read by the autograder to evaluate your solutions.

### Task 1: Read data set

- **Task**: Read the dataset `NBA Stats 202324 All Stats  NBA Player Props Tool (4).csv` into R.
- **Object to create**: `nba_stats`
- **Expected Output**: A tibble/data frame containing NBA player statistics.

Note: You must use code to read the dataset, and this must be included in your R script.

### Task 2: Filter and Arrange 

- **Task**: Filter for players who have played more than 10 games (`GP > 10`) and arrange them in descending order based on points per game (`PPG`). Select the columns `NAME`, `TEAM`, `POS`, `GP`, and `PPG`.
- **Object to create**: `top_players`
- **Expected Output**: A tibble/data frame of players, ordered by `PPG` descending.

### Task 3: Summarize and Group 
- **Task**: Calculate the average minutes per game (`MPG`) for each position (`POS`).
- **Object to create**: `avg_min_by_pos`
- **Expected Output**: A tibble/data frame with columns `POS` and `AvgMPG`.

### Task 4: Mutate and Filter 
- **Task**: Add a new column `Efficiency` calculated as `PPG` divided by `USG%`. Then filter for players with an `Efficiency` greater than 0.5.
- **Object to create**: `high_eff`
- **Expected Output**: A tibble/data frame of players with `NAME`, `TEAM`, `PPG`, `USG%`, and `Efficiency`.

------------

*END* 

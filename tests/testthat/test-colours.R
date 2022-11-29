expect_equal(
  length(dfeReports::dfe_colours()), 30
)
expect_equal(
  length(dfeReports::dfe_colours("blue")), 5
)
expect_equal(
  length(dfeReports::dfe_colours(intensity = 100)), 6
)

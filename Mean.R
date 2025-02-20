sink("EDA__1output")
# Given values
values <- c(90, 50, 70, 80, 70, 60, 20, 30, 80, 90, 20)

# Compute Mean
mean_value <- mean(values)
cat("Mean:", mean_value, "\n")

# Compute Median
median_value <- median(values)
cat("Median:", median_value, "\n")

# Compute Mode function (handling multiple modes)
get_mode <- function(v) {
  uniq_vals <- unique(v)
  freq <- tabulate(match(v, uniq_vals))
  mode_vals <- uniq_vals[freq == max(freq)]
  return(mode_vals)
}

mode_value <- get_mode(values)
cat("Mode:", mode_value, "\n")

sink(file=NULL)
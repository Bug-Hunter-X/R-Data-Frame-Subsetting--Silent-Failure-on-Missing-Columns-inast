```r
# Improved code to handle missing columns gracefully

df <- data.frame(a = 1:3, b = 4:6, c = 7:9)
cols_to_select <- c("a", "b", "d")

# Method 1: Using %in% to check for existence of columns
cols_present <- cols_to_select %in% names(df)
selected_cols <- cols_to_select[cols_present]
subset_df <- df[, selected_cols]

# Method 2: Using `dplyr::select` with `vars()` and handling errors
# install.packages("dplyr")
library(dplyr)

# tryCatch helps handle errors and gives helpful messages if the specified column is missing.

subset_df_dplyr <- tryCatch(
  {dplyr::select(df, all_of(cols_to_select))},
  error = function(e) {
    message(paste0("Error selecting columns:", e))
    return(NULL) # or throw an error, etc.
  }
)
```
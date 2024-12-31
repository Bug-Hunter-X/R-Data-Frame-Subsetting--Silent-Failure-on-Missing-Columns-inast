This repository demonstrates a common, yet subtle, error in R when subsetting data frames.  The code attempts to select specific columns using a character vector, but doesn't handle the case where specified columns are missing.  This can lead to unexpected results and difficult-to-debug errors. The solution demonstrates safer methods for handling this scenario.
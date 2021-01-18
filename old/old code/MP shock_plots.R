library(readxl)
library(tseries)

setwd("~/Documents/Github/rp-ie/data")

term_structure_data <- read_excel("term_structure.xlsx")
View(term_structure_data)

### US MP shock from term yield

# nov_bef = 24/11/2008, nov_aft = 25/11/2008

nov_bef <- ts(term_structure_data$nov_bef, start = c(1))
nov_aft <- ts(term_structure_data$nov_aft, start = c(1))
ts.plot(nov_bef, nov_aft, main = "", xlab = "Maturity", ylab = "Percent", gpars = list(col = c("black", "red")))

diff_nov <- ts(term_structure_data$diff_nov, start = c(1))
plot.ts(diff_nov, col="red", main = "LSAP-1, Nov 25, 2008", xlab = "Maturity", ylab = "Percent")

# dec_bef = 15/12/2008, dec_aft = 16/12/2008

dec_bef <- ts(term_structure_data$nov_bef, start = c(1))
dec_aft <- ts(term_structure_data$nov_aft, start = c(1))
ts.plot(dec_bef, dec_aft, main = "", xlab = "Maturity", ylab = "Percent", gpars = list(col = c("black", "red")))

diff_dec <- ts(term_structure_data$diff_nov, start = c(1))
plot.ts(diff_dec, col="red", main = "Dec 16, 2008", xlab = "Maturity", ylab = "Percent")

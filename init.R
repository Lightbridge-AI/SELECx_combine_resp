# init.R
#
# Example R code to install packages if not already installed
#

my_packages = c("shinyFeedback", "tidyverse", "vroom",
                "tools","glue","readxl","openxlsx")

install_if_missing = function(p) {
  if (p %in% rownames(installed.packages()) == FALSE) {
    install.packages(p)
  }
}

invisible(sapply(my_packages, install_if_missing))
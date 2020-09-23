---
title: "MA22004 Labs (the package)"
author: "Eric Hall"
date: "9/23/2020"
---

# README

Welcome. The lab tutorials, templates, functions, and data files required for MA22004 - Statistics and Probability II at the University of Dundee are available at this repository as an `R` package. 

Instructions for installing `R` and RStudio can be found here:
[https://learnr-examples.shinyapps.io/ex-setup-r/](https://learnr-examples.shinyapps.io/ex-setup-r/)

**Please ensure that you have a current version of `R` (>= 4.0.2).** 

Older versions of `R` may work, but I have not been able to test them. 

## Installation

To install the package `MA22004labs` using RStudio: 

1.  Install the `devtools` package.
2.  Source the `MA22004labs` package from GitHub.
3.  Give permission to RStudio to install any required dependencies. 

The first two steps are initiated by running the following code in the console. 

```
install.packages("devtools")
devtools::install_github("dundeemath/MA22004labs")
```

The `MA22004labs` package has a list of dependencies (packages that are used in one or more of the lab tutorials). RStudio will ask if it is okay to install these packages. Please give permission to update/install packages as required. 


## Running Tutorials

The tutorials are labeled `lab0n` for $n = 1, 2, \dots, 7$, e.g., the first lab tutorial is `lab01`. There are a few ways to run tutorials. 

1.  You can run the tutorials directly from the console using the command:

```
learnr::run_tutorial("lab01", "MA22004labs")
```

2.  In newer versions of RStudio, the tutorials can also also be run from the *Tutorial* tab in the upper right-hand pane (a neighbor of *Environment*, *History*, etc). Navigate through the list to the appropriate tutorial and select "Start Tutorial >". The tutorial window can be enlarged by selecting the option between the little house and the stop sign in the upper left hand corner of the tutorial pane. 

![Enlarge tutorial window.](images/enlargetutorial.png)


3.  If all else fails, try downloading the associated `.Rmd` file (found in `inst/tutorials/lab0n`) and opening it in RStudio. Then you can "Run" the file. 
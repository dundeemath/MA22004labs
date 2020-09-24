# README

Welcome. The lab tutorials, templates, functions, and data files required for MA22004 - Statistics and Probability II at the University of Dundee are available at this repository as an `R` package. 

Instructions for installing `R` and RStudio can be found here:
[https://learnr-examples.shinyapps.io/ex-setup-r/](https://learnr-examples.shinyapps.io/ex-setup-r/).

**Please ensure that you have a current version of `R` (>= 4.0.2 "Taking Off Again" released on 2020/06/22).** 

`R` can be downloaded from *CRAN* at [https://cran.r-project.org/](https://cran.r-project.org/). 
Follow the appropriate link for your operating system. 

Older versions of `R` may work (probably not), but I have not been able to test them. 

## INSTALLATION

Follow these three steps to install the package `MA22004labs` using RStudio: 

### 1. Install the `devtools` package. 

From the RStudio console run:
```
install.packages("devtools")
```
### 2. Source the `MA22004labs` package from GitHub. 

From the RStudio console run:
```
devtools::install_github("dundeemath/MA22004labs")
```
### 3. Give permission to RStudio to install any required dependencies. 

The `MA22004labs` package includes a list of dependencies (packages that are used in one or more of the lab tutorials). RStudio will try to install these dependencies but will need to ask for your permission. Please give permission to install packages as required (you may update packages if you wish). RStudio will prompt you for permission in the console (either to enter a number "1"/"2"/"3" or "Yes") to proceed.

### Special instructions

#### Windows 7

- RStudio seems to require the **Microsoft Visual Studio Runtime** (`api-ms-crt-runtime-l1-1-0.dll`). This can be downloaded from Microsoft at [https://www.microsoft.com/en-in/download/details.aspx?id=48145](https://www.microsoft.com/en-in/download/details.aspx?id=48145) and you will be promted through an interactive install.

- If the installation of `devtools` complains about missing package **RTools**, then download and install it from CRAN: [https://cran.r-project.org/bin/windows/Rtools/](https://cran.r-project.org/bin/windows/Rtools/)
 
- Update the RStudio configuration setting at  **Tools > Global Options > Packages** by unchecking the *Use secure download* box.

- If you have trouble with the command `devtools::install_github` producing unintended results, then split the load `devtools` and installation command into two:
```
library(devtools)
install_github("dundeemath/MA2204labs")
```


## RUNNING TUTORIALS

The tutorials are labeled `lab0n` for `n = 1, 2, ..., 7`, e.g., the first lab tutorial is `lab01`. There are a few ways to run tutorials. 

### Launch in browser

You can run the tutorials directly from the console using the command:
```
learnr::run_tutorial("lab01", "MA22004labs")
```
This will open the tutorial in your favorite browser (tested with Firefox, Chrome, Safari). 

### Launch within RStudio

In newer versions of RStudio, the tutorials can also also be run from within RStudio via the *Tutorial* tab in the upper right-hand pane (a neighbor of *Environment*, *History*, etc). Navigate through the list to the appropriate tutorial and select "Start Tutorial >". The tutorial window can be enlarged by selecting the option between the little house and the stop sign in the upper left hand corner of the tutorial pane. 

![Enlarge tutorial window by selecting the option between the little house and the stop sign in the upper left hand corner of the tutorial pane.](assets/img/enlargetutorial.png)

### No package method 

If you the installation of `MA22004labs` fails, the associated `.Rmd` files for each lab tutorial can be downloaded from GitHub (the are located within the directory `inst/tutorials/lab0n`). After opening the `.Rmd` file in RStudio, you should have the option to "Run" the file. If it comes to this, please contact me. 


### Special instructions

#### Windows 7

I've had reports that the tutorials fail on Internet Explorer and older versions of Firefox. If you are running Windows 7, please use the **RStudio Start Tutorial method** above to launch the tutorials. 


## TUTORIAL STATE

As you progress through the tutorial, the state (i.e. the answers you have entered) will be preserved even if you close the tutorial window. There is a small option underneath the table of contents that says "Start Over". Pressing this will reset the state of the lab (after a confirmation prompt). 

![The tutorial state will be preserved unless you manually rest it by clicking "Start Over".](assets/img/state.png)

Pressing "Start Over" above an individual code chunk will reset the state of that individual code chunk. 

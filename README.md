# README

Welcome! The lab tutorials, templates, functions, and data files required for **MA22004 - Statistics and Probability II** at the University of Dundee are available as an `R` package at this repository. 

Please read these instructions carefully!

**To get set-up to run the labs and create lab reports you must complete the following steps in this order.**

1.  Install `R` (a programming language) and RStudio (an application for interacting with `R`) to your computer.
2.  Install the `MA22004labs` package in RStudio/`R`. 
3.  Install `tinytex` in RStudio/`R`. 

Below you will find instructions for steps 1, 2, and 3 above. You will also find instructions for launching the interactive tutorials at the end of this file. 

**Where to start?** A helpful tutorial on installing `R`, RStudio, and `R` packages can be found here:

- [https://learnr-examples.shinyapps.io/ex-setup-r/](https://learnr-examples.shinyapps.io/ex-setup-r/). 

Please work through this tutorial. 

**If you have already installed** the `MA22004labs` package (for example in a previous semester), then please make sure that you are running **Version: >= 2.0.2022**. The tutorials and exercise questions might have changed!

## INSTALLING `R` and RStudio

Please ensure that you have a current version of `R` (>= 4.0.2 "Taking Off Again" released on 2020/06/22). Older versions of `R` may work, but I have not been able to test them. `R` can be downloaded from *CRAN* at [https://cran.r-project.org/](https://cran.r-project.org/). 
Follow the appropriate link for your operating system. 

The most up-to-date version of RStudio can be downloaded from *RStudio* at [https://www.rstudio.com/download](https://www.rstudio.com/download). Select the Free version of RStudio Desktop appropriate for your computer and operating system. 

Once you have installed `R` and RStudio, open RStudio Desktop and follow the instructions below to install the `MA22004labs` package and `tinytex`. 

## INSTALLING THE `MA22004labs` PACKAGE

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

**If you are running Windows, this step may fail unless you also install RTools; if so see the special instructions below.**

### 3. Give permission to RStudio to install any required dependencies. You should not need to *update* any packages.

The `MA22004labs` package includes a list of *dependencies* (these are packages that are used in one or more of the lab tutorials). RStudio will try to install all dependencies but will need to ask for your permission. Please give permission to *install* packages as required (you may update packages if you wish). RStudio will prompt you for permission in the console (either to enter a number "1"/"2"/"3" or "Yes") to proceed. I would recommend first trying to install *without* updating anything by selecting "3 None". 

### 4. Restart RStudio

(This last step may not be necessary.) Completely quit RStudio (**File > Quite Session**) and relaunch the application.  

The lab package can be run from the RStudio console by entering:
```
library(MA22004labs)
```

You should now be able to access the tutorials in the RStudio *Tutorial* pane, the template when creating a new Rmarkdown document, and the data files for the module.

There are also some "special install instructions" below that you should read if you run into trouble.

### Special instructions for installing `MA22004labs` by operating system

#### Windows (General)

- Download and install **RTools** from CRAN: [https://cran.r-project.org/bin/windows/Rtools/](https://cran.r-project.org/bin/windows/Rtools/). RTools enables you to update certain packages when the newest version must be compiled from source. After installing **RTools** you will need to follow steps 1-4 in INSTALLING THE `MA22004labs` PACKAGE. 

- On some Windows installs, several dependencies silently fail to install during `MA22004labs` installation. If you cannot launch the lab tutorials after installing **RTools** and `MA22004labs`, then:
  - Delete the `gradethis` package through the *Packages* pane of RStudio.
  - Re-install `gradethis` using `devtools::install_github("rstudio/gradethis")`. 
  - When asked about updating dependencies, give option '1' (ALL). In particular, this might update to a newer version of `learnr` and `curl`. 

- Some folks have run into problems when updating packages. They were successfully able to install the lab by simply *NOT* updating any packages, i.e., when prompted to *update* packages select "3 None".

- If you receive an error that complains about `rlang` or `00LOCK-rlang`, then something went wrong with a package update/install. Please follow these steps:
  1.  First identify where your packages are installed to. This can be done by calling `packageStatus()` in the console. Some text will print; you are looking for a path that ends in `.../R/4.0/library`.
  2.  Quit RStudio and navigate to the path identified in (1) above. 
  3.  Manually delete `rlang` and any folder the begins with `00LOCK-rlang` from your `library` folder. 
  4.  Restart RStudio and re-install `rlang` by calling `install.packages("rlang")` in the console. Choose to compile the newest version from source (this will require typing "yes" and you must have RTools installed).
  5.  Return to trying to install `devtools` and/or `MA22004labs` package as normal. 

#### Windows 7

- RStudio seems to require the **Microsoft Visual Studio Runtime** (`api-ms-crt-runtime-l1-1-0.dll`). This can be downloaded from Microsoft at [https://www.microsoft.com/en-in/download/details.aspx?id=48145](https://www.microsoft.com/en-in/download/details.aspx?id=48145) and you will be promted through an interactive install.

- If the installation of `devtools` complains about missing package **RTools**, then download and install it from CRAN: [https://cran.r-project.org/bin/windows/Rtools/](https://cran.r-project.org/bin/windows/Rtools/). 
 
- Update the RStudio configuration setting at  **Tools > Global Options > Packages** by unchecking the *Use secure download* box.

- If you have trouble with the command `devtools::install_github` producing unintended results, then split the load `devtools` and installation command into two:
```
library(devtools)
install_github("dundeemath/MA22004labs")
```

#### Mac 

- If you receive an error relating to `Xcode`, then you tried to update/install a package from source without having the correct libraries present on your computer. Either retry the install and select "3 None"" when prompted to update packages or install command line tools for `Xcode`.

## INSTALLING `tinytex`

The `MA22004labs` package contains templates for generating lab reports that work best when paired a working $\LaTeX$ distribution. $\LaTeX$ is a system for typesetting mathematical texts and documents. You can add this functionality by installing `tinytex` through RStudio. If you have already installed a $\LaTeX$ distribution for another mathematics module, you might not have to complete this step. 

From the RStudio console run:
```
tinytex::install_tinytex()
```
and follow the onscreen prompts. This will download and install TinyTeX, a custom $\LaTeX$ distribution.

Once `tinytex` is installed, you will be able to generate PDF report documents that combine code, text, and mathematical formulas using the lab report template and RStudio. 

## RUNNING TUTORIALS

The tutorials are labeled `lab0n` for `n = 1, 2, ..., 7`, e.g., the first lab tutorial is `lab01`. There are a few ways to run tutorials. 

### Launch within RStudio

In newer versions of RStudio, the tutorials can also also be run from within RStudio via the *Tutorial* tab in the upper right-hand pane (a neighbor of *Environment*, *History*, etc). Navigate through the list to the appropriate tutorial and select "Start Tutorial >". The tutorial window can be enlarged by selecting the option between the little house and the stop sign in the upper left hand corner of the tutorial pane. 

![Enlarge tutorial window by selecting the option between the little house and the stop sign in the upper left hand corner of the tutorial pane.](assets/img/enlargetutorial.png)

### Launch in browser

You can run the tutorials directly from the console using the command:
```
learnr::run_tutorial("lab01", "MA22004labs")
```
This will open the tutorial in your favorite browser (tested with newer versions of Firefox, Chrome, Safari). 

### No package method 

If you the installation of `MA22004labs` fails, the associated `.Rmd` files for each lab tutorial can be downloaded from GitHub (the are located within the directory `inst/tutorials/lab0n`). After opening the `.Rmd` file in RStudio, you should have the option to "Run" the file. If it comes to this, please contact me. 


### Special instructions for running tutorials by operating system

#### Windows 7

I've had reports that the tutorials fail on Internet Explorer and older versions of Firefox. If you are running Windows 7, please use the **Launch within RStudio** method above. 


## TUTORIAL STATE

As you progress through the tutorial, the state (i.e. the answers you have entered) will be preserved even if you close the tutorial window. There is a small option underneath the table of contents that says "Start Over". Pressing this will reset the state of the lab (after a confirmation prompt). 

![The tutorial state will be preserved unless you manually rest it by clicking "Start Over".](assets/img/state.png)

Pressing "Start Over" above an individual code chunk will reset the state of that individual code chunk. 

## If you need help

If you are running into trouble with any part of the installation, please check/post to the "Technical hiccups" channel in our module Team on **MS Teams**. This is a good starting point for getting help. 

*** 

<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">![Creative Commons License](https://i.creativecommons.org/l/by-sa/4.0/88x31.png)</a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.

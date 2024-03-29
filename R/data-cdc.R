#' Behavioral Risk Factor Surveillance System (BRFSS) data
#'
#' This data set is for teaching and training purposes.
#' While there are over 200 variables in the full BRFSS data set, here we look at
#' 9 measurements/responses across a random sample of 20,000 participants (date of
#' responses unspecified).
#' Conducted by the United States Centers for Disease Control and Prevention (CDC),
#' the Behavioral Risk Factor Surveillance System (BRFSS) is an annual telephone
#' survey of 350,000 people in the United States. As its name implies, the BRFSS
#' is designed to identify risk factors in the adult population and report emerging
#' health trends. For example, respondents are asked about their diet and weekly
#' physical activity, their HIV/AIDS status, possible tobacco use, and even their
#' level of healthcare coverage. The BRFSS Web site
#' ([http://www.cdc.gov/brfss](http://www.cdc.gov/brfss))
#' contains a complete description of the survey, including the research questions
#' that motivate the study and many interesting results derived from the data.
#'
#'
#'
#' @name cdc
#' @docType data
#' @format A tbl_df with with 20,000 rows and 9 variables:
#' \describe{
#'   \item{genhlth}{Respondents were asked to evaluate their general health,
#'    responding either excellent, very good, good, fair or poor.}
#'   \item{exerany}{Indicates whether the respondent exercised in the past month
#'    (1) or did not (0).}
#'   \item{hlthplan}{Indicates whether the respondent had some form of health
#'    coverage (1) or did not (0).}
#'   \item{smoke100}{Indicates whether the respondent had smoked at least 100
#'    cigarettes in his/her lifetime, either yes (1) or no (0).}
#'   \item{height}{Height, in inches.}
#'   \item{weight}{Weight, in pounds.}
#'   \item{wtdesire}{Respondents were asked their desired weight, reported in
#'    pounds}
#'   \item{age}{Ages, in years.}
#'   \item{gender}{Gender, according to a binary classification of either male
#'   (m) or female (f).}
#' }
#' @source These data are from the OpenIntro lab data set `cdc` from
#' `source("http://www.openintro.org/stat/data/cdc.R")`.
#' @keywords datasets
#' @examples
#' data(cdc)
"cdc"

#' UK household income by ethnicity for period ending 2021
#'
#' This data set is for teaching and training purposes. The data is a subset of
#' UK household income data by ethnicity from the Family Resources Survey (FRS)
#' published by the Department for Work and Pensions (DWP).
#' The data summarises by ethnic group the count of households that belong
#' to an income bracket
#' and the total count of households that belong to an ethnic group,
#' according to ONS harmonised output guidance
#' \url{https://gss.civilservice.gov.uk/policy-store/ethnicity-harmonised-standard/#united-kingdom}.
#' Note, these are not extensive groupings
#' and represent a subset of of those groupings available from DWP for analysis.
#' The income brackets represent weekly household pre-tax income,
#' averaged over a three year period ending March 2021 (i.e., the data is an
#' average for the 3 years from April 2018 to March 2021).
#'
#'
#' @name frs_income_21
#' @docType data
#' @format A tbl_df with with 44 rows and 4 variables:
#' \describe{
#'   \item{bracket}{average weekly household income bracket}
#'   \item{ethnicity}{one of the ethnic groups: All (total; from all ethinic groups), Asian, Black, or White}
#'   \item{numerator}{count of FRS households that belong to a given income bracket}
#'   \item{denominator}{count of FRS households that belong to a given ethnic group}
#' }
#' @source Source: Department for Work and Pensions \url{https://www.gov.uk/government/organisations/department-for-work-pensions},
#' Crown Copyright.
#' Data extracted and curated by Eric Hall \email{ehall001@@dundee.ac.uk},
#' University of Dundee from
#' \url{https://www.ethnicity-facts-figures.service.gov.uk/work-pay-and-benefits/pay-and-income/household-income/latest#data-sources}, 2022.09.15.
#' @keywords datasets, income, UK, ethnicity
#' @examples
#' data(frs_income_21)
"frs_income_21"

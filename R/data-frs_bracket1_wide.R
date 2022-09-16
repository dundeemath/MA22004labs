#' UK household income by ethnicity for periods ending 2012 to 2021 (wide)
#'
#' This data set is for teaching and training purposes. The data is a subset of
#' UK household income data by ethnicity from the Family Resources Survey (FRS)
#' published by the Department for Work and Pensions (DWP).
#' The data summarises the percent of households that belong
#' to the first income bracket across four ethnic groups
#' according to ONS harmonised output guidance
#' \url{https://gss.civilservice.gov.uk/policy-store/ethnicity-harmonised-standard/#united-kingdom}.
#' Note, these are not extensive groupings
#' and represent a subset of of those groupings available from DWP for analysis.
#' The first income bracket represents an average weekly household pre-tax
#' income up to (but not including) £200. The average is taken over the
#' three year period ending in March of a given year
#' (e.g., 2021 indicates the data is an average for the 3 years
#' from April 2018 to March 2021).
#' Note that since the years represent reporting periods, they
#' are treated as categories and not as times.
#'
#' @name frs_bracket1_wide
#' @docType data
#' @format A tbl_df with with 10 rows and 5 variables:
#' \describe{
#'   \item{time}{year ending the three-year averaging period}
#'   \item{All}{percent of FRS households (from all ethnic groups) that belong to the first income bracket (up to £200)}
#'   \item{Asian}{percent of FRS households from the Asian ethnic group that belong to the first income bracket (up to £200)}
#'   \item{Black}{percent of FRS households from the Black ethnic group that belong to the first income bracket (up to £200)}
#'   \item{White}{percent of FRS households from the White ethnic group that belong to the first income bracket (up to £200)}
#' }
#' @source Source: Department for Work and Pensions \url{https://www.gov.uk/government/organisations/department-for-work-pensions},
#' Crown Copyright.
#' Data extracted and curated by Eric Hall \email{ehall001@@dundee.ac.uk},
#' University of Dundee from
#' \url{https://www.ethnicity-facts-figures.service.gov.uk/work-pay-and-benefits/pay-and-income/household-income/latest#data-sources}, 2022.09.15.
#' @keywords datasets, income, UK, ethnicity
#' @examples
#' data(frs_bracket1_wide)
"frs_bracket1_wide"

#' Synthetic survey of Scottish labour force participation and ethnicity
#'
#' A data set of fictitious survey of Scottish labour force participation and ethnicity.
#' The Scottish labour force refers to people in Scotland aged 16 and older who
#' are economically active. Unemployment here only relates to people in the labour
#' force, i.e., who are "economically active". Unemployment refers to people
#' without a job, who can start work within two weeks following their survey
#' interview, and who had either looked for work in the previous four weeks or
#' were waiting to start a job.
#'
#' @name aps_sco
#' @docType data
#' @format A tbl_df with with 38 rows and 8 variables:
#' \describe{
#'   \item{ethnicity}{identifies as belonging to white or minority (non-white) ethnic group}
#'   \item{unemployed}{identifies as unemployed, i.e., someone (1) without a job,
#'   (2) who can start work within two weeks, and (3) who had either looked for work in
#'   the previous four weeks or were waiting to start a job}
#' }
#' @source Synthetic data created by Eric Hall \email{ehall001@@dundee.ac.uk},
#' University of Dundee, 2022.08.18.
#' @keywords datasets, unemployment, Scotland, ethnicity
#' @examples
#' data(aps_sco_synth)
"aps_sco_synth"

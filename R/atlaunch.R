#' Init data raw
#'
#' @importFrom usethis use_data_raw
#' @return open devstuffs.R
#' @export
#'

init_data_raw <- function(){
  use_data_raw()
  file.create("data-raw/devstuffs.R")
  file.edit("data-raw/devstuffs.R")
}

#' Fill description
#'
#' @param name name of the package
#' @param Title Title of the package
#' @param Description Desc of the package
#' @param repo Github repo of the package
#' @importFrom desc description
#' @importFrom glue glue
#' @importFrom usethis use_tidy_description
#' @return a modified DESCRIPTION
#' @export
#'

fill_desc <- function(name, Title, Description, repo){
  unlink("DESCRIPTION")
  my_desc <- description$new("!new")
  my_desc$set("Package", name)
  my_desc$set("Authors@R", "person('Colin', 'Fay', email = 'contact@colinfay.me', role = c('cre', 'aut'))")
  my_desc$del("Maintainer")
  my_desc$set_version("0.0.0.9000")
  my_desc$set(Title = Title)
  my_desc$set(Description = Description)
  my_desc$set("URL", glue("https://github.com/ColinFay/{repo}"))
  my_desc$set("BugReports", glue("https://github.com/ColinFay/{repo}/issues"))
  my_desc$write(file = "DESCRIPTION")
}

#' Some docs
#'
#' @return MIT Licence, README and NEWS
#' @export
#' @importFrom usethis use_mit_license use_readme_rmd use_news_md use_testthat use_package

init_docs <- function(){
  use_mit_license(name = "Colin FAY")
  use_readme_rmd()
  use_news_md()
  use_testthat()
  use_package("attempt")
}


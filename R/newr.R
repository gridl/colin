#' @importFrom glue glue
#'
#' @export

new_r_file <- function(name){
  file.create(glue("R/{name}.R"))
  file.edit(glue("R/{name}.R"))
}

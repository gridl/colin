#' Check all rhub platforms
#'
#' @return rhub check_for_cran check_on_centos check_on_debian check_on_fedora check_on_linux check_on_macos check_on_ubuntu check_on_windows
#' @export
#'

bulk_rhub_for_lots_of_mails <- function(){
  print('check_for_cran()')
  check_for_cran()
  print('check_on_centos()')
  check_on_centos()
  print('check_on_debian()')
  check_on_debian()
  print('check_on_fedora()')
  check_on_fedora()
  print('check_on_linux()')
  check_on_linux()
  print('check_on_macos()')
  check_on_macos()
  print('check_on_ubuntu()')
  check_on_ubuntu()
  print('check_on_windows()')
  check_on_windows()
}

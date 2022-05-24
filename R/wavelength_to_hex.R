#' Wavelength to Hex
#'
#' @param wavelength
#' @param gamma
#'
#' @return
#' @export
#'
#' @examples
#'
wavelength_to_hex <- function(wavelength, gamma=0.8){
  RGB <- wavelength_to_rgb(wavelength, gamma)
  HEX <- rgb_to_hex(RGB)
  return(HEX)
}

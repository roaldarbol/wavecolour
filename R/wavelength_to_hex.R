#' Wavelength to Hex
#'
#' @param wavelength Wavelength in nm
#' @param gamma Gamma
#'
#' @return Hex code
#' @export
#'
wavelength_to_hex <- function(wavelength, gamma=0.8){
  RGB <- wavelength_to_rgb(wavelength, gamma)
  HEX <- rgb_to_hex(RGB)
  return(HEX)
}

#' Wavelength to RGB
#'
#' @param wavelength Wavelength in nm
#' @param gamma Gamma
#'
#' @return RGB values
#' @export
#'
wavelength_to_rgb <- function(wavelength, gamma=0.8){

  if (wavelength >= 380 & wavelength <= 440){
    attenuation <- 0.3 + 0.7 * (wavelength - 380) / (440 - 380)
    R <- ((-(wavelength - 440) / (440 - 380)) * attenuation) ** gamma
    G <- 0.0
    B <- (1.0 * attenuation) ** gamma
  } else if (wavelength >= 440 & wavelength <= 490){
    R <- 0.0
    G <- ((wavelength - 440) / (490 - 440)) ** gamma
    B <- 1.0
  } else if (wavelength >= 490 & wavelength <= 510){
    R <- 0.0
    G <- 1.0
    B <- (-(wavelength - 510) / (510 - 490)) ** gamma
  } else if (wavelength >= 510 & wavelength <= 580){
    R <- ((wavelength - 510) / (580 - 510)) ** gamma
    G <- 1.0
    B <- 0.0
  } else if (wavelength >= 580 & wavelength <= 645){
    R <- 1.0
    G <- (-(wavelength - 645) / (645 - 580)) ** gamma
    B <- 0.0
  } else if (wavelength >= 645 & wavelength <= 750){
    attenuation = 0.3 + 0.7 * (750 - wavelength) / (750 - 645)
    R <- (1.0 * attenuation) ** gamma
    G <- 0.0
    B <- 0.0
  } else {
    R <- 0.0
    G <- 0.0
    B <- 0.0
  }
  R <- R * 255
  G <- G * 255
  B <- B * 255
  return (c(as.integer(R), as.integer(G), as.integer(B)))
}



#' Wavelength Color and Fill Scales
#'
#' Color scales based on the USDA Pomological Watercolors paintings.
#'
#' @param palette Wavelength palette
#' @param alpha Transparency
#' @param reverse Logical, Reverse the order of the colours?
#'
#' @importFrom grDevices colorRampPalette
#'

wavelength_pal <- function(palette="wavelength", alpha = 1, reverse = FALSE) {
  wavl <- seq(from = 380, to = 750, by = ceiling((750-380)/256))
  wavelength_palette <- sapply(wavl, wavelength_to_hex)
  pal <- wavelength_palette
  if (reverse){
    pal <- rev(pal)
  }
  return(colorRampPalette(pal, alpha))
}


#' Wavelength Color and Fill Scales
#'
#' Color scales based on the USDA Pomological Watercolors paintings.
#' @param palette Wavelength palette
#' @param discrete Whether to use a discrete scale. Default is FALSE.
#' @param alpha Transparency
#' @param reverse Logical, Reverse the order of the colours?
#'
#' @importFrom ggplot2 discrete_scale scale_color_gradientn
#'
#' @rdname scale_wavelength
#' @export
#'
scale_colour_wavelength <- function(palette = "wavelength",
                                    discrete = FALSE,
                                    alpha = 1,
                                    reverse = FALSE){
  if (discrete) {
    discrete_scale(
      "colour",
      "wavelength",
      palette=wavelength_pal(palette, alpha = alpha, reverse = reverse)
      )
  } else {
    scale_color_gradientn(
      colours = wavelength_pal(palette, alpha = alpha, reverse = reverse)(256),
      limits=c(380,750),
      na.value = "black"
      )
  }
}

#' @rdname scale_wavelength
#' @export
scale_color_wavelength <- scale_colour_wavelength



#' @param palette Wavelength palette
#' @param discrete Whether to use a discrete scale. Default is FALSE.
#' @param alpha Transparency
#' @param reverse Logical, Reverse the order of the colours?
#'
#' @importFrom ggplot2 discrete_scale scale_fill_gradientn
#'
#' @rdname scale_wavelength
#' @export
#'
scale_fill_wavelength <- function(palette = "wavelength",
                                  discrete = FALSE,
                                  alpha = 1,
                                  reverse = FALSE){
  if (discrete) {
    discrete_scale(
      "fill",
      "wavelength",
      palette=wavelength_pal(palette, alpha = alpha, reverse = reverse)
      )
  } else {
    scale_fill_gradientn(
      colours = wavelength_pal(palette, alpha = alpha, reverse = reverse)(256),
      limits=c(380,750),
      na.value = "black"
      )
  }
}

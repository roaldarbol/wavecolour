#' RGB to Hex
#'
#' @param RGB 3 element vector of RGB values
#'
#' @importFrom grDevices rgb
#'
#' @return Hex code
#' @export
#'
rgb_to_hex <- function(RGB){
  rgb(RGB[1], RGB[2], RGB[3], maxColorValue = 255)
}

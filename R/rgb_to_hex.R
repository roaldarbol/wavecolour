#' RGB to Hex
#'
#' @param RGB
#'
#' @return
#' @export
#'
#' @examples
#'
rgb_to_hex <- function(RGB){
  rgb(RGB[1], RGB[2], RGB[3], maxColorValue = 255)
}

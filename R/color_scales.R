#' @importFrom ggplot2 discrete_scale
scale_fill_ypfs_d <- function(palette = "west_rock", ..., direction = 1) {
  discrete_scale("fill", palette, ypfs_palette(name = palette, reverse = reverse), ...)
}

#' @importFrom ggplot2 discrete_scale
scale_colour_ypfs_d <- function(palette = "west_rock", ..., reverse = FALSE) {
  discrete_scale("colour", palette, ypfs_palette(name = palette, reverse = reverse), ...)
}

scale_color_ypfs_d <- scale_colour_ypfs_d

#' @importFrom ggplot2 scale_fill_gradient scale_fill_gradient2 scale_fill_gradientn
scale_fill_ypfs_c <- function(type = c("sequential", "divergent", "yale_blues"), ..., reverse = FALSE) {
  type <- match.arg(type, c("sequential", "yale_blues", "divergent"))
  switch(type,
         sequential = scale_fill_gradient(ypfs_palette(type, reverse = reverse)(2), ...),
         yale_blues = scale_fill_gradientn(colours = ypfs_palette(type, reverse = reverse)(5), ...),
         divergent = scale_fill_gradient2(ypfs_palette(type, reverse = reverse)(3), ...))
}

#' @importFrom ggplot2 scale_fill_gradient scale_fill_gradient2 scale_fill_gradientn
scale_colour_ypfs_c <- function(type = c("sequential", "divergent", "yale_blues"), ..., reverse = FALSE) {
  type <- match.arg(type, c("sequential", "yale_blues", "divergent"))
  switch(type,
         sequential = scale_colour_gradient(..., low = ypfs_pal$sequential$low, high = ypfs_pal$sequential$high),
         divergent = scale_colour_gradient2(..., low = ypfs_pal$divergent$low, mid = ypfs_pal$divergent$mid, high = ypfs_pal$divergent$high),
         yale_blues = scale_colour_gradientn(colours = ypfs_palette(type, reverse = reverse)(5), ...))
}

scale_color_ypfs_c <- scale_colour_ypfs_c
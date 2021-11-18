#' YPFS color scales
#'
#' The YPFS color scales provide consistent colors across publications. The palettes are taken from New Haven's natural features and from a few particularly pretty academic papers
#'
#' @param palette A string that (partially) matches elements in \code{\link{ypfs_pal}}.
#' @param reverse A boolean that, if \code{TRUE}, indicates if the palette colors should be reversed.
#' @param ... Other arguments passed onto \code{\link[ggplot2]{scale_discrete}} or \code{\link[ggplot2]{scale_gradient}}.
#'
#' @details These functions differ in application to different types of data and different aesthetics. They are analogous to the \code{scale_[fill|color]_[discrete|continuous]} functions.
#'
#' @importFrom ggplot2 discrete_scale
#'
#' @export
scale_fill_ypfs_d <- function(palette = "west_rock", ..., reverse = FALSE) {
  discrete_scale("fill", palette, ypfs_palette(name = palette, reverse = reverse), ...)
}

#' @importFrom ggplot2 discrete_scale
#'
#' @rdname scale_fill_ypfs_d
#' @export
scale_colour_ypfs_d <- function(palette = "west_rock", ..., reverse = FALSE) {
  discrete_scale("colour", palette, ypfs_palette(name = palette, reverse = reverse), ...)
}

#' @aliases scale_colour_ypfs_d
#'
#' @rdname scale_fill_ypfs_d
#' @export
scale_color_ypfs_d <- scale_colour_ypfs_d

#' @importFrom ggplot2 scale_fill_gradient scale_fill_gradient2 scale_fill_gradientn
#'
#' @rdname scale_fill_ypfs_d
#' @export
scale_fill_ypfs_c <- function(palette = "yale_blues", ..., reverse = FALSE) {
  palette <- match.arg(palette, c("sequential", "yale_blues", "divergent"))
  switch(palette,
         sequential = scale_fill_gradient(..., low = ypfs_pal$sequential$low, high = ypfs_pal$sequential$high),
         divergent = scale_fill_gradient2(..., low = ypfs_pal$divergent$low, mid = ypfs_pal$divergent$mid, high = ypfs_pal$divergent$high),
         yale_blues = scale_fill_gradientn(colours = ypfs_palette(palette, reverse = reverse)(5), ...))
}

#' @importFrom ggplot2 scale_fill_gradient scale_fill_gradient2 scale_fill_gradientn
#'
#' @rdname scale_fill_ypfs_d
#' @export
scale_colour_ypfs_c <- function(palette = "yale_blues", ..., reverse = FALSE) {
  palette <- match.arg(palette, c("sequential", "yale_blues", "divergent"))
  switch(palette,
         sequential = scale_colour_gradient(..., low = ypfs_pal$sequential$low, high = ypfs_pal$sequential$high),
         divergent = scale_colour_gradient2(..., low = ypfs_pal$divergent$low, mid = ypfs_pal$divergent$mid, high = ypfs_pal$divergent$high),
         yale_blues = scale_colour_gradientn(colours = ypfs_palette(palette, reverse = reverse)(5), ...))
}

#' @aliases scale_colour_yfps_c
#'
#' @rdname scale_fill_ypfs_d
#' @export
scale_color_ypfs_c <- scale_colour_ypfs_c

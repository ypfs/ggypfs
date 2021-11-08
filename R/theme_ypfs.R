#' YPFS theme
#'
#' This theme will standardize the look and feel of our plots. It uses \code{\link[ggplot2]{theme_classic}} and default fonts, which makes it flexible enough the range of datasets that YPFS uses.
#'
#' @param ... Arguments passed on to \code{\link[ggplot2]{theme}}.
#'
#' @importFrom ggplot2 theme theme_classic
#' @export
theme_ypfs <- function(...) {  theme_classic() +
  suppressWarnings(theme(panel.grid.major.y = element_line(color = "grey92"),
        panel.grid.major.x = element_line(color = "grey92", size = rel(.4)),
        axis.text = element_text(),
        axis.title = element_text(face = "bold"),
        legend.title = element_text(face = "bold"),
        ...))
}

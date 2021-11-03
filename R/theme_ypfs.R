#' @export
theme_ypfs <- function(...) {  theme_classic() +
  suppressWarnings(theme(panel.grid.major.y = element_line(color = "grey92"),
        panel.grid.major.x = element_line(color = "grey92", size = rel(.2)),
        axis.text = element_text(),
        axis.title = element_text(face = "bold"),
        legend.title = element_text(face = "bold"),
        ...))
}

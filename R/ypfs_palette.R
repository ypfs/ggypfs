#' Return color hex values
#' @export
ypfs_palette <- function (name = "west_rock", reverse = FALSE) {
  pal <- ypfs_pal[[name]]
  if (is.null(pal))
    stop("Palette not found.")
  if (reverse) {
    pal <- rev(pal)
  }
  function(n) return(pal[1:n])
}

################### Utilities

# Hack to bring cet_color_maps into package to setup the below environment on
# package load
data(cet_color_maps, package = "cetcolor", envir = parent.env(environment()))

determine_group = function(name)  color_formal_names[grepl(name, color_formal_names)]

# For the nickname search see the cet_color_maps file for the mapping
color_nicknames = names(alt_color_pairs)

color_formal_names = names(cet_color_maps)

color_attribute_names = c("rainbow","linear","isoluminant","diverging","cyclic")

color_groups = sapply(color_attribute_names, FUN = determine_group)

# Search for proper scheme name
search_palettes = function(name) {

  # Search the proper name
  if(name %in% color_formal_names){ return(name) }

  # Search the nickname grid
  if(name %in% color_nicknames){ return(alt_color_pairs[[name]]) }

  # Otherwise, we need to default to rainbow palette
  warning("Requested palette '", name, "' does not exist. Defaulting to 'rainbow'.")

  alt_color_pairs[["rainbow"]]
}

# The main work horse that delivers the colormap for use within R.
# This function should also be used when the color map name is known
# as it does not have to search for a valid color map name.
#' @importFrom grDevices rgb
cet_make_scheme = function(n, name, alpha) {

  color_map = cetcolor::cet_color_maps[[name]]

  if(length(color_map) == 0L) stop("Not support named")

  if(n > 256) {
    warning("Requested 'n' of '",n,"' is too large for color map",name,".",
            "\nReturning the colormap with 256 colors.\n")
    n = 256
  }

  # Make an index
  idx = seq.int(from = 1, to = 256, length.out = n)

  # Guarantees no duplicates
  # e.g.
  # a = 1:256
  # f = function(n) { sum(duplicated(a[seq.int(from = 1, to = 256, length.out = n)])) }
  # sapply(a, f)

  # Convert to RGB Hex for R
  rgb(color_map$R[idx], color_map$G[idx], color_map$B[idx], alpha)
}


#' CET Perceptually Uniform Color Maps
#'
#' Extract \code{n} RGB Hexadecimal colors from the perceptually uniform color
#' maps developed by \href{http://peterkovesi.com/projects/colourmaps/}{Peter Kovesi}.
#' @export
#'
#' @param n      A \code{numeric} value greater than one indicating how
#'               many colors to use from the color map.
#'
#' @param name   A \code{string} indicating the color map to use. There
#'               are 51 options available. Please see \code{\link{cet_color_maps}}
#'               for more information. By default, the \code{"rainbow"} color
#'               scheme is used.
#'
#' @param alpha  A \code{numeric} value between [0, 1] that indicates the level
#'               of transparency.
#'
#' @return A \code{character} vector containing the RGB hexadecimal
#' representation of the requested color map.
#'
#' @examples
#' # Grab 8 colors from rainbow or rainbow_bgyr_35-85_c73_n256
#' colors = cet_pal(8)
#' plot(1:8, 1:8, col=colors, pch=19, cex=3, xlab="", ylab="")
#'
#' # Grab 25 colors from coolwarm or diverging_bwr_40-95_c42_n256
#' colors = cet_pal(25, name = "coolwarm")
#' plot(1:25, 1:25, col=colors, pch=19, cex=3, xlab="", ylab="")
#'
#' @references
#' Peter Kovesi. Good Colour Maps: How to Design Them.
#' \href{https://arxiv.org/abs/1509.03700}{arXiv:1509.03700 [cs.GR] 2015}
cet_pal = function(n, name = "rainbow", alpha = 1) {

  name = search_palettes(name)

  cet_make_scheme(n, name)
}

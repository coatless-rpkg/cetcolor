# Used for n > 1
set_display_dim = function(num) {
  switch(as.character(num),  #(r,c)
         "5"  = c(3,2),
         "6"  = c(3,2),
         "8"  = c(4,2),
         "14" = c(5,3),
         "23" = c(8,3),
         "51" = c(17,3)
  )
}

# Short function to make an image
#' @importFrom graphics image
display_gradient <- function(vals, scheme) {
  image(x = seq_along(vals), y = 1, z = matrix(seq_along(vals), ncol = 1),
        col = vals, xlab="", ylab = "", main = scheme,
        xaxt = "n", yaxt = "n", bty = "n")
}


make_gradient = function(n, name, alpha) {
  display_gradient(cet_make_scheme(n, name, alpha), name)
}

make_gradient_grid = function(n, color_maps, alpha) {
  par(mfrow = set_display_dim(length(color_maps)), mar = rep(1.3, 4))
  for(i in color_maps) {
    make_gradient(n, i, alpha)
  }

}

#' Display CET Color Maps
#'
#' Offers a variety of ways to preview CET Color Maps.
#' @inheritParams cet_pal
#' @rdname display_cet
#' @export
#' @importFrom graphics par
display_cet_pal = function(n = 256, name = "rainbow", alpha = 1) {
  color_map = cet_pal(n, name, alpha)
  display_gradient(color_map, name)
}

#' @param attribute A \code{character} string indicating the attribute.
#'                  Accepted values are: \code{"rainbow"} (Default),
#'                  \code{"linear"}, \code{"diverging"}, \code{"cyclic"}, and
#'                  \code{"isoluminant"}.
#' @rdname display_cet
#' @export
display_cet_attribute = function(n = 256, attribute = "rainbow", alpha = 1) {

  if(!attribute %in% color_attribute_names){
    stop("Requested attribute '", attribute, "' is not a valid! Please supply a valid 'attribute'!")
  }

  make_gradient_grid(n, color_groups[[attribute]], alpha)
}

#' @rdname display_cet
#' @export
display_cet_all = function(n = 256, alpha = 1) {
  make_gradient_grid(n, color_formal_names, alpha)
}

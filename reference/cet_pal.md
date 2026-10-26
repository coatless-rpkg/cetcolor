# CET Perceptually Uniform Color Maps

Extract `n` RGB Hexadecimal colors from the perceptually uniform color
maps developed by [Peter
Kovesi](http://peterkovesi.com/projects/colourmaps/).

## Usage

``` r
cet_pal(n, name = "rainbow", alpha = 1)
```

## Arguments

- n:

  A `numeric` value greater than one indicating how many colors to use
  from the color map.

- name:

  A `string` indicating the color map to use. There are 51 options
  available. Please see
  [`cet_color_maps()`](https://r-pkg.thecoatlessprofessor.com/cetcolor/reference/cet_color_maps.md)
  for more information. By default, the `"rainbow"` color scheme is
  used.

- alpha:

  A `numeric` value between \\\[0, 1\]\\ that indicates the level of
  transparency.

## Value

A `character` vector containing the RGB hexadecimal representation of
the requested color map.

## References

Peter Kovesi. Good Colour Maps: How to Design Them. [arXiv:1509.03700
cs.GR 2015](https://arxiv.org/abs/1509.03700)

## Examples

``` r
# Grab 8 colors from rainbow or rainbow_bgyr_35-85_c73_n256
colors = cet_pal(8)
plot(1:8, 1:8, col=colors, pch=19, cex=3, xlab="", ylab="")


# Grab 25 colors from coolwarm or diverging_bwr_40-95_c42_n256
colors = cet_pal(25, name = "coolwarm")
plot(1:25, 1:25, col=colors, pch=19, cex=3, xlab="", ylab="")

```

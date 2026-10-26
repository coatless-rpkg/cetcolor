# Display CET Color Maps

Offers a variety of ways to preview CET Color Maps.

## Usage

``` r
display_cet_pal(n = 256, name = "rainbow", alpha = 1)

display_cet_attribute(n = 256, attribute = "rainbow", alpha = 1)

display_cet_all(n = 256, alpha = 1)
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

- attribute:

  A `character` string indicating the attribute. Accepted values are:
  `"rainbow"` (Default), `"linear"`, `"diverging"`, `"cyclic"`
  `"isoluminant"`, and `"colorblind"`.

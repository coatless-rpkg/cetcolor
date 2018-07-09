#' RGB Value Map of the CET Perceptually Uniform Colour Maps
#'
#' A `list` of `data.frame`s that have the RGB values of the CET
#' Perceptually Uniform Colour Maps as released in June 2016.
#'
#' @format A `list` with each entry coded as a data frame with 256
#'         observations and 3 variables:
#'
#' - `R`: Red value
#' - `G`: Green value
#' - `B`: Blue value
#'
#'
#' The following color maps have been included:
#'
#' - `_bgyr_35-85_c73_n256`
#' - `c1`, formerly: `cyclic_mrybm_35-75_c68_n256`
#' - `c1s`, formerly: `cyclic_mrybm_35-75_c68_n256_s25`
#' - `c2`, formerly: `cyclic_mygbm_30-95_c78_n256`
#' - `c2s`, `colorwheel`, formerly: `cyclic_mygbm_30-95_c78_n256_s25`
#' - `c4`, formerly: `cyclic_wrwbw_40-90_c42_n256`
#' - `c4s`, formerly: `cyclic_wrwbw_40-90_c42_n256_s25`
#' - `c5`, formerly: `cyclic_grey_15-85_c0_n256`
#' - `c5s`, formerly: `cyclic_grey_15-85_c0_n256_s25`
#' - `d1`, `coolwarm`, formerly: `diverging_bwr_40-95_c42_n256`
#' - `d2`, `gwv`, formerly: `diverging_gwv_55-95_c39_n256`
#' - `d3`, formerly: `diverging_gwr_55-95_c38_n256`
#' - `d4`, `bkr`, formerly: `diverging_bkr_55-10_c35_n256`
#' - `d6`, `bky`, formerly: `diverging_bky_60-10_c30_n256`
#' - `d7`, `bjy`, formerly: `diverging-linear_bjy_30-90_c45_n256`
#' - `d8`, formerly: `diverging-linear_bjr_30-55_c53_n256`
#' - `d9`, formerly: `diverging_bwr_55-98_c37_n256`
#' - `d10`, formerly: `diverging_cwm_80-100_c22_n256`
#' - `d11`, formerly: `diverging-isoluminant_cjo_70_c25_n256`
#' - `d12`, formerly: `diverging-isoluminant_cjm_75_c23_n256`
#' - `diverging-isoluminant_cjm_75_c24_n256`
#' - `diverging-rainbow_bgymr_45-85_c67_n256`
#' - `diverging_gkr_60-10_c40_n256`
#' - `isoluminant_cgo_70_c39_n256`
#' - `isoluminant_cgo_80_c38_n256`, `isolum`
#' - `isoluminant_cm_70_c39_n256`
#' - `linear_bgy_10-95_c74_n256`, `bgy`
#' - `linear_bgyw_15-100_c67_n256`
#' - `linear_bgyw_15-100_c68_n256`, `bgyw`
#' - `linear_blue_5-95_c73_n256`
#' - `linear_blue_95-50_c20_n256`, `blues`
#' - `linear_bmw_5-95_c86_n256`
#' - `linear_bmw_5-95_c89_n256`, `bmw`
#' - `linear_bmy_10-95_c71_n256`
#' - `linear_bmy_10-95_c78_n256`, `inferno`
#' - `linear_gow_60-85_c27_n256`
#' - `linear_gow_65-90_c35_n256`
#' - `linear_green_5-95_c69_n256`, `kgy`
#' - `linear_grey_0-100_c0_n256`, `gray`
#' - `linear_grey_10-95_c0_n256`, `dimgray`
#' - `linear_kry_5-95_c72_n256`
#' - `linear_kry_5-98_c75_n256`
#' - `linear_kryw_5-100_c64_n256`
#' - `linear_kryw_5-100_c67_n256`, `fire`
#' - `linear_ternary-blue_0-44_c57_n256`, `kb`
#' - `linear_ternary-green_0-46_c42_n256`, `kg`
#' - `linear_ternary-red_0-50_c52_n256`, `kr`
#' - `rainbow_bgyr_35-85_c72_n256`
#' - `rainbow_bgyr_35-85_c73_n256`, `rainbow`
#' - `rainbow_bgyrm_35-85_c69_n256`
#' - `rainbow_bgyrm_35-85_c71_n256`
#'
#' @references
#' <http://peterkovesi.com/projects/colourmaps/>
#' @source
#' <http://peterkovesi.com/projects/colourmaps/CETperceptual_csv_0_1.zip>
"cet_color_maps"

# Map old to new
old_to_new_names = c(
  "cyclic_mrybm_35-75_c68_n256" = "c1",
  "cyclic_mrybm_35-75_c68_n256_s25" = "c1s",
  "cyclic_mygbm_30-95_c78_n256" = "c2",
  "cyclic_mygbm_30-95_c78_n256_s25" = "c2s",
  "cyclic_wrwbw_40-90_c42_n256" = "c4",
  "cyclic_wrwbw_40-90_c42_n256_s25" = "c4s",
  "cyclic_grey_15-85_c0_n256" = "c5",
  "cyclic_grey_15-85_c0_n256_s25" = "c5s",
  "diverging_bwr_40-95_c42_n256" = "d1",
  "diverging_gwv_55-95_c39_n256" = "d2",
  "diverging_gwr_55-95_c38_n256" = "d3",
  "diverging_bkr_55-10_c35_n256" = "d4",
  "diverging_bky_60-10_c30_n256" = "d6",
  "diverging-linear_bjy_30-90_c45_n256" = "d7",
  "diverging-linear_bjr_30-55_c53_n256" = "d8",
  "diverging_bwr_55-98_c37_n256" = "d9",
  "diverging_cwm_80-100_c22_n256" = "d10",
  "diverging-isoluminant_cjo_70_c25_n256" = "d11",
  "diverging-isoluminant_cjm_75_c23_n256" = "d12"
)

# Need to remove these... At some point?
deprecated_palettes = c(
  "diverging-isoluminant_cjm_75_c24_n256",
  "diverging-rainbow_bgymr_45-85_c67_n256",
  "diverging_gkr_60-10_c40_n256"
)

# Alt name array
alt_color_pairs = c(
  bgy        = "linear_bgy_10-95_c74_n256",
  bgyw       = "linear_bgyw_15-100_c68_n256",
  kbc        = "linear_blue_5-95_c73_n256",
  blues      = "linear_blue_95-50_c20_n256",
  bmw        = "linear_bmw_5-95_c89_n256",
  inferno    = "linear_bmy_10-95_c78_n256",
  kgy        = "linear_green_5-95_c69_n256",
  gray       = "linear_grey_0-100_c0_n256",
  dimgray    = "linear_grey_10-95_c0_n256",
  fire       = "linear_kryw_5-100_c67_n256",
  kb         = "linear_ternary_blue_0-44_c57_n256",
  kg         = "linear_ternary_green_0-46_c42_n256",
  kr         = "linear_ternary_red_0-50_c52_n256",
  bkr        = "d4",
  bky        = "d6",
  coolwarm   = "d1",
  gwv        = "d2",
  bjy        = "d7",
  colorwheel = "c2s",
  isolum     = "isoluminant_cgo_80_c38_n256",
  rainbow    = "rainbow_bgyr_35-85_c73_n256"
)

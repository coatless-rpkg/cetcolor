# cetcolor 0.2.0

## New

- Added new color maps to pre-existing types
    - **Linear** 
        - `l3`, long: `linear_kryw_0-100_c71_n256`
        - `l4`, long: `linear_kry_0-97_c73_n256`
        - `l9`, long: `linear_bgyw_20-98_c66_n256`
        - `l14`, long: `linear_ternary-green_0-46_c42_n256`
        - `l16`, long: `linear_kbgyw_5-98_c62_n256`
        - `l17`, long: `linear_worb_100-25_c53_n256`
        - `l18`, long: `linear_wyor_100-45_c55_n256`
        - `l19`, long: `linear_wcmr_100-45_c42_n256`
    - **Divergent**
        - `d1a`, long: `diverging_bwr_20-95_c54_n256`
        - `d13`, long: `diverging_bwg_20-95_c41_n256`
- Added new colourmap palettes for users with colour blindness
    - `cbl1`,  long: `linear-protanopic-deuteranopic_kbjyw_5-95_c25_n256`
    - `cbl2`,  long: `linear-protanopic-deuteranopic_kbw_5-98_c40_n256`
    - `cbd1`,  long: `diverging-protanopic-deuteranopic_bwy_60-95_c32_n256`
    - `cbc1`,  long: `cyclic-protanopic-deuteranopic_bwyk_16-96_c31_n256`
    - `cbc2`,  long: `cyclic-protanopic-deuteranopic_wywb_55-96_c33_n256`
    - `cbtl1`, long: `linear-tritanopic_krjcw_5-98_c46_n256`
    - `cbtl2`, long: `linear-tritanopic_krjcw_5-95_c24_n256`
    - `cbtd1`, long: `diverging-tritanopic_cwr_75-98_c20_n256`
    - `cbtc1`, long: `cyclic-tritanopic_cwrk_40-100_c20_n256`
    - `cbtc2`, long: `cyclic-tritanopic_wrwc_70-100_c20_n256`
- Added new naming scheme to access elements.

## Changes

- Renamed old palettes to use the new shortnaming scheme. Please switch from 
  using the long palette names to the short names.
  - `c1` = `cyclic_mrybm_35-75_c68_n256`
  - `c1s` = `cyclic_mrybm_35-75_c68_n256_s25`
  - `c2` = `cyclic_mygbm_30-95_c78_n256`
  - `c2s` = `cyclic_mygbm_30-95_c78_n256_s25`
  - `c4` = `cyclic_wrwbw_40-90_c42_n256`
  - `c4s` = `cyclic_wrwbw_40-90_c42_n256_s25`
  - `c5` = `cyclic_grey_15-85_c0_n256`
  - `c5s` = `cyclic_grey_15-85_c0_n256_s25`
  - `d1` = `diverging_bwr_40-95_c42_n256`
  - `d2` = `diverging_gwv_55-95_c39_n256`
  - `d3` = `diverging_gwr_55-95_c38_n256`
  - `d4` = `diverging_bkr_55-10_c35_n256`
  - `d6` = `diverging_bky_60-10_c30_n256`
  - `d7` = `diverging-linear_bjy_30-90_c45_n256`
  - `d8` = `diverging-linear_bjr_30-55_c53_n256`
  - `d9` = `diverging_bwr_55-98_c37_n256`
  - `d10` = `diverging_cwm_80-100_c22_n256`
  - `d11` = `diverging-isoluminant_cjo_70_c25_n256`
  - `d12` = `diverging-isoluminant_cjm_75_c23_n256`
  - `r1` = `rainbow_bgyrm_35-85_c69_n256`
  - `r2` = `rainbow_bgyr_35-85_c72_n256`
  - `r3` = `diverging-rainbow_bgymr_45-85_c67_n256`
  - `i1` = `isoluminant_cm_70_c39_n256`
  - `i2` = `isoluminant_cgo_80_c38_n256`
  - `i3` = `isoluminant_cgo_70_c39_n256`
  - `l1` = `linear_grey_0-100_c0_n256`
  - `l2` = `linear_grey_10-95_c0_n256`
  - `l5` = `linear_green_5-95_c69_n256`
  - `l6` = `linear_blue_5-95_c73_n256`
  - `l7` = `linear_bmw_5-95_c86_n256`
  - `l8` = `linear_bmy_10-95_c71_n256`
  - `l10` = `linear_gow_60-85_c27_n256`
  - `l11` = `linear_gow_65-90_c35_n256`
  - `l12` = `linear_blue_95-50_c20_n256`
  - `l13` = `linear_ternary-red_0-50_c52_n256`
  - `l15` = `linear_ternary-blue_0-44_c57_n256`
- Documentation switched from using Rd format to using Markdown in Roxygen2.

## Deprecation

- Several of the initial color palettes have been deprecated. These palettes 
  will be phased out within the year. Please find a new palette.
    - `diverging-isoluminant_cjm_75_c24_n256`
    - `diverging-rainbow_bgymr_45-85_c67_n256`
    - `diverging_gkr_60-10_c40_n256`
    - `rainbow_bgyr_35-85_c73_n256`
    - `rainbow_bgyrm_35-85_c71_n256`
    - `linear_bgy_10-95_c74_n256`
    - `linear_bgyw_15-100_c67_n256`
    - `linear_bgyw_15-100_c68_n256`
    - `linear_bmw_5-95_c89_n256`
    - `linear_bmy_10-95_c78_n256`
    - `linear_kry_5-95_c72_n256`
    - `linear_kry_5-98_c75_n256`
    - `linear_kryw_5-100_c64_n256`
    - `linear_kryw_5-100_c67_n256`
    - `linear_ternary-green_0-46_c42_n256`

# cetcolor 0.1.0

## Features

- 51 perceptually uniform colour maps by Peter Kovesi
- Nicknamed frequently used colour maps.
- Colour map accessor functions similar to [`RColorBrewer`](https://cran.r-project.org/package=RColorBrewer)
- Vignette displaying the colour maps within _R_.

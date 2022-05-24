# 🌈 Wavecolour
![GitHub R package version](https://img.shields.io/github/r-package/v/roaldarbol/wavecolour)
![GitHub](https://img.shields.io/github/license/roaldarbol/wavecolour?color=blue&label=License)

## Overview
Convert visible wavelengths to Hex values in R.

## Installation
```r
# Install from GitHub:
install.packages("devtools")
devtools::install_github("roaldarbol/wavecolour")
```

## Usage
`wavecolour` supplies 3 low-level functions for converting wavelengths into colour codes:
  - `wavelength_to_hex()`
  - `wavelength_to_rgb()`
  - `rgb_to_hex()`

Additionally, it supplies a colour palette which can be used with `ggplot2` as:
  - `scale_colour_wavelength()` / `scale_color_wavelength()`
  - `scale_fill_wavelength()`


## Examples
```r
# Create single colour
col <- wavelength_to_hex(560)

# Create palette
wavelengths <- seq(from = 380, to = 750, by = 1)
hex_pal <- sapply(wavelengths, wavelength_to_hex)
rgb_pal <- sapply(wavelengths, wavelength_to_rgb)
```
![image](https://github.com/roaldarbol/wavecolour/blob/main/man/figures/palette.png)

```r
library(ggplot2)
library(dplyr)
library(wavecolour)

# Create data
wavl <- seq(from = 300, to = 790, length.out = 500)
wavl_sin <- sin((wavl * pi) / (180)) + 1.5
wavl <- bind_cols(wavl, wavl_sin)
names(wavl) <- c("wavelength", "intensity")

# Create plot
ggplot(wavl, aes(wavelength, intensity)) +
  geom_segment(aes(xend=wavelength, yend=0, colour = wavelength), size = 1) +
  geom_line() +
  scale_colour_wavelength() +
  theme_minimal()
```
![image](https://github.com/roaldarbol/wavecolour/blob/main/man/figures/wavelengths.png)


## Acknowledgements
Adapted from [Noah's Python implementation](http://noah.org/wiki/Wavelength_to_RGB_in_Python), who adapted from [Dan Bruton's Fortran implementation](http://www.physics.sfasu.edu/astro/color/spectra.html).

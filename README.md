# wavecolour 🌈

## Overview
Convert visible wavelengths to Hex values in R.

## Installation
```r
# Install from GitHub:
install.packages("devtools")
devtools::install_github("roaldarbol/wavecolour")
```

## Usage
`wavecolour` supplies 3 functions. The main function is `wavelength_to_hex()`, which converts a visible wavelength into a hex code. Similarly, `wavelength_to_rgb()` converts to RGB and `rgb_to_hex()` does what it says. 
```r
# Create single colour
col <- wavelength_to_hex(560)

# Create palette
wavelengths <- seq(from = 380, to = 750, by = 1)
hex_pal <- sapply(wavelengths, wavelength_to_hex)
rgb_pal <- sapply(wavelengths, wavelength_to_rgb)
```
![image](https://github.com/roaldarbol/wavecolour/blob/main/man/figures/palette.png)

## Acknowledgements
Adapted from [Noah's Python implementation](http://noah.org/wiki/Wavelength_to_RGB_in_Python), who adapted from [Dan Bruton's Fortran implementation](http://www.physics.sfasu.edu/astro/color/spectra.html).

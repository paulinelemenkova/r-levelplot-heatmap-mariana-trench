# R Level Plot / Heatmap — Mariana Trench Sediment Thickness

R script drawing a level plot (heatmap) of sedimental thickness across the Mariana Trench as a function of trench slope angle and depth, using the lattice package.

## Related publication

This script produced Figure 19 (right) in:

Lemenkova, P. Statistical Analysis of the Mariana Trench Geomorphology Using R Programming Language. Geodesy and Cartography 2019, 45(2), 57-84.

- DOI: https://doi.org/10.3846/gac.2019.3785
- figshare: https://doi.org/10.6084/m9.figshare.9762860
- HAL: https://hal.science/hal-02277500
- Zenodo: https://zenodo.org/record/3385005
- SSRN: https://papers.ssrn.com/sol3/papers.cfm?abstract_id=3447481
- ISSN: 2029-6991 (Scopus)

## Script

- Levelplot_Sedimental-Thickness.R: reads Morphology.csv and draws a lattice::levelplot in which a colour-graded grid encodes sedimental-thickness values over two geomorphic axes, i.e. a heatmap of the sediment-thickness field.

## Methods

- Level plot / heatmap: colour-mapped 2-D field visualisation (lattice trellis graphics).

## Data

- Morphology.csv: per-profile morphometric and geological factors of the Mariana Trench.

## Requirements

- R (>= 3.5); packages: lattice, RColorBrewer

## Author and citation

Polina Lemenkova — ORCID https://orcid.org/0000-0002-5759-1089

Cite: Lemenkova, P. Statistical Analysis of the Mariana Trench Geomorphology Using R Programming Language. Geodesy and Cartography 2019, 45(2), 57-84. https://doi.org/10.3846/gac.2019.3785

## License

MIT — see LICENSE (Copyright Polina Lemenkova).

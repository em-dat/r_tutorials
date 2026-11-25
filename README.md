# EM-DAT R Tutorials

R counterparts of the [EM-DAT Python Tutorials](https://github.com/em-dat/python_tutorials).

- [EM-DAT R Tutorial 1: Basic Operations and Plotting](./r_tutorial_1_basic_operations_and_plotting.ipynb)
- [EM-DAT R Tutorial 2: Making Maps](./r_tutorial_2_making_maps.ipynb)

**Note:** Additional resources are available on the [EM-DAT Documentation Website](https://doc.emdat.be/docs/additional-resources-and-tutorials/)

## Setting up

### 1. Install R

These tutorials were written with **R 4.5.3**. Download R from [CRAN](https://cran.r-project.org/).

### 2. Restoring the `renv` setup

Run the following commands from an R console, in the project root directory.

```R
renv::activate() # may be redundant when called from RStudio.renv
renv::restore()
```

This action installs all the required version-specific dependencies `readxl`, `dplyr`, `tidyr`, `ggplot2`, `sf`, `jsonlite`, and `scales` as defined in the renv.lock file.

## Data

The tutorials rely on data that is **not included in this repository**. Place downloaded
files in a `data/` folder (git-ignored), or adjust the paths in the notebooks.

| File | Used by | Source |
|---|---|---|
| `*_emdat_archive.xlsx` | Tutorials 1 & 2 | [EM-DAT Archive on Dataverse](https://doi.org/10.14428/DVN/I0LTPH) — or the latest release from [public.emdat.be](https://public.emdat.be/) (registration required, see [Data Accessibility](https://doc.emdat.be/docs/data-accessibility/)) |
| `ne_110m_admin_0_countries/` | Tutorial 2 | [Natural Earth 1:110m Admin 0 – Countries](https://www.naturalearthdata.com/downloads/110m-cultural-vectors/) |
| `gadm41_JPN.gpkg` | Tutorial 2 | [GADM 4.1 – Japan geopackage](https://geodata.ucdavis.edu/gadm/gadm4.1/gpkg/gadm41_JPN.gpkg) (~33 MB) |

**Note on administrative units:** these tutorials use the `GADM Admin Units` column and
[GADM 4.1](https://gadm.org/) geometries. The legacy `Admin Units` column refers to GAUL,
which is no longer supported.

## Generating the reports

The Rmarkdown notebooks are intended for interactive use from Rstudio, Positron or other R GUI environments. It is however possible to render the full html or pdf reports from the R REPL.

```R
# html rendering (default)
rmarkdown::render("r_tutorial_1_basic_operations_and_plotting.Rmd")
rmarkdown::render("r_tutorial_2_making_maps.Rmd")

# pdf rendering
rmarkdown::render("r_tutorial_1_basic_operations_and_plotting.Rmd", output_format="pdf_document")
rmarkdown::render("r_tutorial_2_making_maps.Rmd", output_format="pdf_document")
```

## License

MIT — see [LICENSE](./LICENSE).

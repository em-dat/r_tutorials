# EM-DAT R Tutorials

R counterparts of the [EM-DAT Python Tutorials](https://github.com/em-dat/python_tutorials).

- [EM-DAT R Tutorial 1: Basic Operations and Plotting](./r_tutorial_1_basic_operations_and_plotting.ipynb)
- [EM-DAT R Tutorial 2: Making Maps](./r_tutorial_2_making_maps.ipynb)

**Note:** The Tutorials are also available on the [EM-DAT Documentation Website](https://doc.emdat.be/docs/additional-resources-and-tutorials/)

## Setting up

### 1. Install R

These tutorials were written with **R 4.5.3**. Download and install R from [CRAN](https://cran.r-project.org/).

RTools is also required to install `sf`. Download and install RTools from [CRAN](https://cran.r-project.org/bin/windows/Rtools/rtools45/rtools.html)

RStudio is optional to render the RMarkdown tutorials as html but will ease the interaction with the provided code.

### 2. Restore the `renv` setup

A list of dependencies along with the versions to use is provided using the `renv` package (which comes installed with r).
The local environment can be restored with the following calls from the R Console :

```R
renv::activate()
renv::restore()
```

If errors occur for a given package installation, please refer to their respective documentation for additional installation steps.
For example, the [`sf` package installation](https://r-spatial.github.io/sf/#installing) may require additional steps on MacOS and Linux.

### 3. Using the RMarkdown notebooks

The required tools are normally installed after the `renv` restoration. The RMarkdown notebooks may be openned and interacted with from RStudio or Visual Studio Code.

Alternatively, the users may generate the reports using knitr, for HTML or PDF static outputs.


## Retrieve datasets

The tutorials rely on data that is **not included in this repository**.
Place the downloaded files in a `data/` folder (git-ignored), or adjust the paths in the notebooks.

| File | Used by | Source |
|---|---|---|
| `*_emdat_archive.xlsx` | Tutorials 1 & 2 | [EM-DAT Archive on Dataverse](https://doi.org/10.14428/DVN/I0LTPH) — or the latest release from [public.emdat.be](https://public.emdat.be/) (registration required, see [Data Accessibility](https://doc.emdat.be/docs/data-accessibility/)) |
| `ne_110m_admin_0_countries/` | Tutorial 2 | [Natural Earth 1:110m Admin 0 – Countries](https://www.naturalearthdata.com/downloads/110m-cultural-vectors/) |
| `gadm41_JPN.gpkg` | Tutorial 2 | [GADM 4.1 – Japan geopackage](https://geodata.ucdavis.edu/gadm/gadm4.1/gpkg/gadm41_JPN.gpkg) (~33 MB) |

**Note on administrative units:** these tutorials use the `GADM Admin Units` column and
[GADM 4.1](https://gadm.org/) geometries. The legacy `Admin Units` column refers to GAUL,
which is no longer supported.

## License

MIT — see [LICENSE](./LICENSE).

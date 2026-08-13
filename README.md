# EM-DAT R Tutorials

R counterparts of the [EM-DAT Python Tutorials](https://github.com/em-dat/python_tutorials).

- [EM-DAT R Tutorial 1: Basic Operations and Plotting](./r_tutorial_1_basic_operations_and_plotting.ipynb)
- [EM-DAT R Tutorial 2: Making Maps](./r_tutorial_2_making_maps.ipynb)

**Note:** The Tutorials are also available on the [EM-DAT Documentation Website](https://doc.emdat.be/docs/additional-resources-and-tutorials/)

## Setting up

### 1. Install R

These tutorials were written with **R 4.5.3**. Download R from [CRAN](https://cran.r-project.org/).

### 2. Install the R packages

```bash
Rscript install_packages.R
```

This installs `readxl`, `dplyr`, `tidyr`, `ggplot2`, `sf`, `jsonlite`, `scales`, and `IRkernel`.

### 3. Register the R kernel with Jupyter

The tutorials are Jupyter notebooks running an R kernel. Register it once:

```bash
Rscript -e "IRkernel::installspec()"
```

Then start the notebook server:

```bash
jupyter notebook
```

Select the **R** kernel when opening a notebook.

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

## License

MIT — see [LICENSE](./LICENSE).

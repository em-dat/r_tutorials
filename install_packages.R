# Install the R packages required by the EM-DAT R Tutorials.
# Run once with:  Rscript install_packages.R

pkgs <- c(
  "readxl",    # read the EM-DAT .xlsx file
  "dplyr",     # data manipulation (filter, group_by, summarise)
  "tidyr",     # reshaping (pivot_wider)
  "ggplot2",   # plotting
  "sf",        # simple features: read shapefiles, spatial joins, maps
  "jsonlite",  # parse the EM-DAT 'Admin Units' JSON column
  "scales",    # axis label formatting
  "IRkernel"   # R kernel for Jupyter
)

missing <- pkgs[!pkgs %in% rownames(installed.packages())]
if (length(missing)) {
  install.packages(missing, repos = "https://cloud.r-project.org")
} else {
  message("All required packages are already installed.")
}

# Register the R kernel with Jupyter (run once, then restart Jupyter)
# IRkernel::installspec()

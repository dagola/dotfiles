## User specified executables
Sys.setenv("PATH" = paste("/usr/local/bin", Sys.getenv("PATH"), "/Users/DGola/bin", sep=":"))
options(texi2dvi = "/usr/bin/texi2dvi")

## Set repos and installation dir for specific R version
r_version <- sprintf("%s.%s", R.Version()$major,
                     unlist(strsplit(R.Version()$minor, split = "\\."))[1])
local({
  r <- getOption("repos")
  r["CRAN"] <- "https://cran.rstudio.com/"
  r["BioCsoft"] <- sprintf("http://bioconductor.org/packages/%s/bioc", r_version)
  r["BioCann"] <- sprintf("http://bioconductor.org/packages/%s/data/annotation", r_version)
  r["BioCexp"] <- sprintf("http://bioconductor.org/packages/%s/data/experiment", r_version)
  r["BioCextra"] <- sprintf("http://bioconductor.org/packages/%s/extra", r_version)
  r["CRANextra"] <- "http://www.stats.ox.ac.uk/pub/RWin"
  options(repos = r)
})

r_user_lib <- sprintf("/Users/DGola/Library/R/%s/library", r_version)

dir.create(r_user_lib, showWarnings = FALSE, recursive = TRUE)

.libPaths(c(r_user_lib, .libPaths()))

# Clean up
rm(r_version)
rm(r_user_lib)

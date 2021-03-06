cluster.functions = batchtools::makeClusterFunctionsSlurm(
  template = "~/.batchtools.slurm.tmpl", 
  nodename = "login01"
)
sleep = 3
default.resources = list(
  ntasks = 1, ncpus = 1,
  memory = 6000, partition = "batch",
  chunks.as.arrayjobs = TRUE
)
## ---- eval = FALSE-------------------------------------------------------
#  dir_example = "~/liftr-minimal/"
#  dir.create(dir_example)
#  file.copy(system.file("examples/liftr-minimal.Rmd", package = "liftr"), dir_example)

## ---- eval = FALSE-------------------------------------------------------
#  library("liftr")
#  
#  input = paste0(dir_example, "liftr-minimal.Rmd")
#  lift(input)

## ---- eval = FALSE-------------------------------------------------------
#  render_docker(input)

## ---- eval = FALSE-------------------------------------------------------
#  purge_image(paste0(dir_example, "liftr-minimal.docker.yml"))


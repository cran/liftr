#' RStudio Addin: Containerize R Markdown Document
#'
#' RStudio addin for containerizing the current document.
#'
#' @importFrom rstudioapi getActiveDocumentContext
#'
#' @keywords internal
addin_lift = function() {
  context = rstudioapi::getActiveDocumentContext()
  path = normalizePath(context$'path')
  lift(path)
}

#' RStudio Addin: Containerize and Render R Markdown Document with Docker
#'
#' RStudio addin for containerizing and rendering the current document.
#'
#' @importFrom rstudioapi getActiveDocumentContext
#'
#' @keywords internal
addin_lift_render_docker = function() {
  context = rstudioapi::getActiveDocumentContext()
  path = normalizePath(context$'path')
  lift(path)
  render_docker(path)
}

#' RStudio Addin: Remove Dangling Container + Image
#'
#' RStudio addin for removing any dangling Docker
#' containers and images automatically.
#'
#' @importFrom rstudioapi getActiveDocumentContext
#'
#' @keywords internal
addin_prune_dangling = function() {
  prune_container_auto()
  prune_image_auto()
}

#' RStudio Addin: Remove the Built Docker Image
#'
#' RStudio addin for removing the Docker images used for
#' rendering the current document.
#'
#' @importFrom rstudioapi getActiveDocumentContext
#'
#' @keywords internal
addin_prune_image = function() {
  context = rstudioapi::getActiveDocumentContext()
  path = normalizePath(context$'path')
  path = paste0(file_dir(path), '/', file_name_sans(path), '.docker.yml')
  prune_image(path)
}

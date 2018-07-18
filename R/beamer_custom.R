beamer_custom <- function(...){

  # Define filepaths
  logo <- system.file(package = "template", "logo.png")
  template <- system.file(package = "template", "template.tex")

  # supply files to your custom format
  rmarkdown::beamer_presentation(...,
                                 template = template,
                                 pandoc_args = rmarkdown::pandoc_variable_arg("titlegraphic", logo))
}



#' Create a package for a Plumber API using plungr
#'
#' @param path Name of the folder to create the package in. This will also be
#'     used as the package name.
#' @param check_name When using this function in the console, you can prevent
#'      the package name from being checked.
#' @param open Boolean open the created project
#' @param package_name Package name to use by default it's `basename(path)` but if path == '.' and `package_name`
#' not explicitly given, then `basename(getwd())` will be used.
#'
#' @export
create_plungr <- function(path,
                          check_name = TRUE,
                          open = TRUE,
                          package_name = basename(path)) {
  
  if (path == "." & package_name == fs::path_file(path)) {
    package_name <- fs::path_file(getwd())
  }

  if (check_name) {
    cli::cat_rule("Checking package name")
    utils::getFromNamespace("check_package_name", "usethis")(package_name)
  }

  # if (fs::dir_exists(path)) {
  #   res <- yesno(
  #     paste("The path", path, "already exists, override?")
  #   )
  #   if (!res) {
  #     return(invisible(NULL))
  #   }
  # }

  cli::cat_rule("Creating dir")
  fs::dir_create(
    path,
    recurse = TRUE
  )
  cat_green_tick("Created package directory")

  cli::cat_rule("Copying package skeleton")
  from <- system.file("plumberexample", package = "plungr", 
                      lib.loc = NULL, mustWork = FALSE)
  
  ll <- list.files(
    path = from,
    full.names = TRUE,
    all.files = TRUE,
    no.. = TRUE
  )
  # remove `..`
  file.copy(
    ll,
    path,
    overwrite = TRUE,
    recursive = TRUE
  )

  t1 <- list.files(
    path,
    all.files = TRUE,
    recursive = TRUE,
    include.dirs = FALSE,
    full.names = TRUE
  )
  t <- grep(
    x = t1,
    pattern = "ico$",
    invert = TRUE,
    value = TRUE
  )


  for (i in t) {
    fs::file_move(
      path = i,
      new_path = gsub("REMOVEME", "", i)
    )

    try(
      {
        replace_word(
          file = i,
          pattern = "plumberexample",
          replace = package_name
        )
      },
      silent = TRUE
    )
  }
  cat_green_tick("Copied app skeleton")

  cli::cat_rule("Done")

  cli::cat_line(
    paste0(
      "A new API named ",
      package_name,
      " was created at ",
      fs::path_abs(path),
      " .\n"
    )
  )

  if (open & rstudioapi::isAvailable()) {
    rstudioapi::openProject(path = path)
  }

  return(
    invisible(
      fs::path_abs(path)
    )
  )
}

# to be used in RStudio "new project" GUI
create_plungr_gui <- function(path) {
  create_plungr(
    path = path,
    open = FALSE
  )
}

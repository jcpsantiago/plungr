# Functions from golem's utils.R

cat_green_tick <- function(...){
  cli::cat_bullet(
    ..., 
    bullet = "tick", 
    bullet_col = "green"
  )
}

cat_red_bullet <- function(...){
  cli::cat_bullet(
    ..., 
    bullet = "bullet",
    bullet_col = "red"
  )
}

cat_info <- function(...){
  cli::cat_bullet(
    ..., 
    bullet = "arrow_right",
    bullet_col = "grey"
  )
}

cat_exists <- function(where){
  cat_red_bullet(
    sprintf(
      "%s already exists, skipping the copy.", 
      path_file(where)
    )
  )
  cat_info(
    sprintf(
      "If you want replace it, remove the %s file first.", 
      path_file(where)
    )
  )
}

cat_created <- function(where, file = "File"){
  cat_green_tick(glue::glue("{file} created at {where}"))
}

# Functions from golem's utils.R

cat_green_tick <- function(...) {
  cli::cat_bullet(
    ...,
    bullet = "tick",
    bullet_col = "green"
  )
}

cat_red_bullet <- function(...) {
  cli::cat_bullet(
    ...,
    bullet = "bullet",
    bullet_col = "red"
  )
}

cat_info <- function(...) {
  cli::cat_bullet(
    ...,
    bullet = "arrow_right",
    bullet_col = "grey"
  )
}

replace_word <- function(file, pattern, replace) {
  suppressWarnings(tx <- readLines(file))
  tx2 <- gsub(pattern = pattern, replacement = replace, x = tx)
  writeLines(tx2, con = file)
}

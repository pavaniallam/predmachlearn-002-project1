
pml.training [, `:=` (
  classe = as.factor (classe)
  )]

# ensure all of the numeric columns are of the same type
cols <- setdiff (names (pml.training), c("classe"))
pml.training [, (cols) := lapply (.SD, as.numeric), .SDcols = cols]
pml.testing  [, (cols) := lapply (.SD, as.numeric), .SDcols = cols]

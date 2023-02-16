data(mtcars)
attach(mtcars)
mpg_per_cyl <- aggregate(mpg, by = list(cyl), FUN = mean)
names(mpg_per_cyl) <- c("cyl", "avg_mpg")
mpg_per_cyl

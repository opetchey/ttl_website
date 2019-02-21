---
title: Importing data update
author: admin
date: '2019-02-05'
slug: importing-data-update
categories: []
tags: []
image:
  caption: ''
  focal_point: ''
---


As the Second Edition of *Getting Started with R* was going to press, Rstudio changed the function it uses to import data in the **Import Dataset** tool, from the base function `read.csv()` to the `read_csv()` function in the **readr** package. Since then, the **Import Dataset** button gives a menu with an option to use either ("base" uses `read.csv` and "readr" uses `read_csv`) From the Rstudio Blog about the **readr** package:

Compared to base equivalents like `read.csv`, readr is much faster and gives more convenient output: it never converts strings to factors, can parse date/times, and it doesn’t munge the column names.

Great! If you have dates and times in a column, its possible that `read_csv` will see this and then correctly format them as dates. So you wouldn’t need to do this yourself (covered in Appendix of Chapter 2 of the Second Edition).

Something else you might notice is that the data appears different if you look at it in the Console. This is because `read_csv` brings the data in as a special type of object called a *tibble*. (The standard `read.csv` function bring the data in as a standard data.frame.) You can read all about tibbles on the RStudio blog. Why are they better than data.frames? First, they only show the first ten lines and as many variables as will comfortably fit when you look at them in the Console, and the type of variable is given, and the number of additional rows and variables not displayed. E.g.:


```r
library(readr)
dd <- read_csv(readr_example("mtcars.csv"))
```

```
## Parsed with column specification:
## cols(
##   mpg = col_double(),
##   cyl = col_double(),
##   disp = col_double(),
##   hp = col_double(),
##   drat = col_double(),
##   wt = col_double(),
##   qsec = col_double(),
##   vs = col_double(),
##   am = col_double(),
##   gear = col_double(),
##   carb = col_double()
## )
```

```r
dd
```

```
## # A tibble: 32 x 11
##      mpg   cyl  disp    hp  drat    wt  qsec    vs    am  gear  carb
##    <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl>
##  1  21       6  160    110  3.9   2.62  16.5     0     1     4     4
##  2  21       6  160    110  3.9   2.88  17.0     0     1     4     4
##  3  22.8     4  108     93  3.85  2.32  18.6     1     1     4     1
##  4  21.4     6  258    110  3.08  3.22  19.4     1     0     3     1
##  5  18.7     8  360    175  3.15  3.44  17.0     0     0     3     2
##  6  18.1     6  225    105  2.76  3.46  20.2     1     0     3     1
##  7  14.3     8  360    245  3.21  3.57  15.8     0     0     3     4
##  8  24.4     4  147.    62  3.69  3.19  20       1     0     4     2
##  9  22.8     4  141.    95  3.92  3.15  22.9     1     0     4     2
## 10  19.2     6  168.   123  3.92  3.44  18.3     1     0     4     4
## # … with 22 more rows
```

In summary, everything in the Second Edition will work just fine, but what you see in the Console might look a little different at times.

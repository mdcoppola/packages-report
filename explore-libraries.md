explore-libraries.R
================
mattcoppola
2020-01-27

``` r
library(dplyr)
```

    ## 
    ## Attaching package: 'dplyr'

    ## The following objects are masked from 'package:stats':
    ## 
    ##     filter, lag

    ## The following objects are masked from 'package:base':
    ## 
    ##     intersect, setdiff, setequal, union

``` r
packages_tbl <- installed.packages() %>%
  as_tibble()

packages_tbl %>% nrow()
```

    ## [1] 97

``` r
packages_tbl %>%
  count(LibPath, Priority)
```

    ## # A tibble: 3 x 3
    ##   LibPath                                                       Priority       n
    ##   <chr>                                                         <chr>      <int>
    ## 1 /Library/Frameworks/R.framework/Versions/3.6/Resources/libra… base          14
    ## 2 /Library/Frameworks/R.framework/Versions/3.6/Resources/libra… recommend…    15
    ## 3 /Library/Frameworks/R.framework/Versions/3.6/Resources/libra… <NA>          68

``` r
packages_tbl %>%
  group_by(NeedsCompilation) %>%
  summarise(n())
```

    ## # A tibble: 3 x 2
    ##   NeedsCompilation `n()`
    ##   <chr>            <int>
    ## 1 no                  38
    ## 2 yes                 55
    ## 3 <NA>                 4

``` r
packages_tbl %>%
  group_by(Built) %>%
  summarise(n())
```

    ## # A tibble: 2 x 2
    ##   Built `n()`
    ##   <chr> <int>
    ## 1 3.6.0    65
    ## 2 3.6.2    32

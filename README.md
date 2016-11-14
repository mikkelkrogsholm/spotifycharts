
<!-- README.md is generated from README.Rmd. Please edit that file -->
spotifycharts
=============

The goal of spotifycharts is to make it easy to get chart data from Spotify.

The package is a wrapper for <https://spotifycharts.com/>

Installation
------------

You can install spotifycharts from github with:

``` r
# install.packages("devtools")
devtools::install_github("56north/spotifycharts")
```

Example
-------

Here is how you get chart data

``` r
spotifycharts::chart_top200_daily()
#> # A tibble: 200 × 5
#>    position                            track.name           artist streams
#>       <int>                                 <chr>            <chr>   <int>
#> 1         1                                Closer The Chainsmokers 4253187
#> 2         2                               Starboy       The Weeknd 4099319
#> 3         3                         Black Beatles     Rae Sremmurd 3880878
#> 4         4                       Let Me Love You         DJ Snake 3386492
#> 5         5                      Don't Wanna Know         Maroon 5 3082648
#> 6         6                          The Greatest              Sia 2893495
#> 7         7 Cold Water (feat. Justin Bieber & MØ)      Major Lazer 2849117
#> 8         8                          Side To Side    Ariana Grande 2791376
#> 9         9                  Say You Won't Let Go     James Arthur 2626436
#> 10       10                                My Way    Calvin Harris 2554720
#> # ... with 190 more rows, and 1 more variables: url <chr>
```

You can also specify country (region) and dates.

``` r
spotifycharts::chart_top200_daily(region = "us", days = "2016-11-03")
#> # A tibble: 200 × 5
#>    position                  track.name           artist streams
#>       <int>                       <chr>            <chr>   <int>
#> 1         1                     Starboy       The Weeknd 1378812
#> 2         2                      Closer The Chainsmokers 1214659
#> 3         3                   Fake Love            Drake 1142117
#> 4         4               Black Beatles     Rae Sremmurd  980615
#> 5         5 Broccoli (feat. Lil Yachty)         D.R.A.M.  803460
#> 6         6            Don't Wanna Know         Maroon 5  738741
#> 7         7                Side To Side    Ariana Grande  737283
#> 8         8             Let Me Love You         DJ Snake  722714
#> 9         9                    Sneakin’            Drake  653065
#> 10       10                    Caroline            Aminé  638905
#> # ... with 190 more rows, and 1 more variables: url <chr>
```

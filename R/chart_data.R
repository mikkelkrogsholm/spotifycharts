####################################################################################################
#' Spotify Top 200 chart - daily
#'
#' @description This function collects the 200 most popular tracks on Spotify.
#'
#' @param region A region defined for the chart. See \code{\link{chart_regions}} for available regions.
#' @param days A date defining the day for the chart. See \code{\link{chart_daily}} for available days.
#'
#' @return A data frame with the chart data
#'
#' @examples
#' spotifycharts::chart_top200_daily()
#'
#' spotifycharts::chart_top200_daily(region = "dk")
#'
#' spotifycharts::chart_top200_daily(region = "us", days = "2016-11-03")
#'
#' @export

chart_top200_daily <- function(region = "global", days = "latest"){

  url <- paste0("https://spotifycharts.com/regional/", region,"/daily/", days,"/download")

  chartdata <- readr::read_csv(url, col_types = "iccic")

  names(chartdata) <- stringr::str_replace_all(tolower(names(chartdata)), " ", ".")

  return(chartdata)
}

####################################################################################################
#' Spotify Top 200 chart - weekly
#'
#' @description This function collects the 200 most popular tracks on Spotify.
#'
#' @param region A region defined for the chart. See \code{\link{chart_regions}} for available regions.
#' @param weekdates A date defining the week for the chart. See \code{\link{chart_weekly_top200}} for available weeks.
#'
#' @return A data frame with the chart data
#'
#' @examples
#' spotifycharts::chart_top200_weekly()
#'
#' spotifycharts::chart_top200_weekly(region = "dk")
#'
#' spotifycharts::chart_top200_weekly(region = "us", weekdates = "2016-09-30--2016-10-07")
#'
#' @export

chart_top200_weekly <- function(region = "global", weekdates = "latest"){

  url <- paste0("https://spotifycharts.com/regional/", region,"/weekly/", weekdates,"/download")

  chartdata <- readr::read_csv(url, col_types = "iccic")

  names(chartdata) <- stringr::str_replace_all(tolower(names(chartdata)), " ", ".")

  return(chartdata)
}

####################################################################################################
#' Spotify Viral 50 chart - daily
#'
#' @description This function collects the 50 most viral tracks on Spotify.
#'
#' @param region A region defined for the chart. See \code{\link{chart_regions}} for available regions.
#' @param days A date defining the day for the chart. See \code{\link{chart_daily}} for available days.
#'
#' @return A data frame with the chart data
#'
#' @examples
#' spotifycharts::chart_viral50_daily()
#'
#' spotifycharts::chart_viral50_daily(region = "dk")
#'
#' spotifycharts::chart_viral50_daily(region = "us", days = "2016-11-03")
#'
#' @export

chart_viral50_daily <- function(region = "global", days = "latest"){

  url <- paste0("https://spotifycharts.com/viral/", region,"/daily/", days,"/download")

  chartdata <- readr::read_csv(url, col_types = "iccc")

  names(chartdata) <- stringr::str_replace_all(tolower(names(chartdata)), " ", ".")

  return(chartdata)
}

####################################################################################################
#' Spotify Viral 50 chart - weekly
#'
#' @description This function collects the 50 most viral tracks on Spotify.
#'
#' @param region A region defined for the chart. See \code{\link{chart_regions}} for available regions.
#' @param weekdates A date defining the week for the chart. See \code{\link{chart_weekly_viral50}} for available weeks.
#'
#' @return A data frame with the chart data
#'
#' @examples
#' spotifycharts::chart_viral50_weekly()
#'
#' spotifycharts::chart_viral50_weekly(region = "dk")
#'
#' spotifycharts::chart_viral50_weekly(region = "us", weekdates = "2016-10-27--2016-10-27")
#'
#' @export

chart_viral50_weekly <- function(region = "global", weekdates = "latest"){

  url <- paste0("https://spotifycharts.com/viral/", region,"/weekly/", weekdates,"/download")

  chartdata <- readr::read_csv(url, col_types = "iccc")

  names(chartdata) <- stringr::str_replace_all(tolower(names(chartdata)), " ", ".")

  return(chartdata)
}


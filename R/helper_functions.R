####################################################################################################
#' Spotify chart regions
#'
#' @description This function gets available regions for Spotify charts
#'
#' @return A data frame with the regions
#'
#' @examples
#'
#' chart_regions()
#'
#' @export

chart_regions <- function(){

  url <- "https://spotifycharts.com/regional"
  html_data <- xml2::read_html(url)

  countries <- rvest::html_nodes(html_data, xpath = '//*[@id="content"]/div/div/div/span/div[1]/div/div/div/div[1]/ul/li')
  countries <- rvest::html_text(countries)
  countrycodes <- rvest::html_nodes(html_data, xpath = '//*[@id="content"]/div/div/div/span/div[1]/div/div/div/div[1]/ul/li')
  countrycodes <- rvest::html_attr(countrycodes, "data-value")

  country_df <- dplyr::data_frame(countries, countrycodes)

  return(country_df)
}

####################################################################################################
#' Spotify Top 200 chart weeks
#'
#' @description This function gets available weeks for the Spotify Top 200 chart
#'
#' @return A data frame with the weeks
#'
#' @examples
#'
#' chart_weekly_top200()
#'
#' @export

chart_weekly_top200 <- function(){
  url <- "https://spotifycharts.com/regional/global/weekly/latest"
  html_data <- xml2::read_html(url)

  weeks <- rvest::html_nodes(html_data, xpath = '//*[@id="content"]/div/div/div/span/div[1]/div/div/div/div[3]/ul/li')
  weeks <- rvest::html_text(weeks)

  weekdates <- rvest::html_nodes(html_data, xpath = '//*[@id="content"]/div/div/div/span/div[1]/div/div/div/div[3]/ul/li')
  weekdates <- rvest::html_attr(weekdates, "data-value")

  weeks_df <- dplyr::data_frame(weeks, weekdates)

  return(weeks_df)
}

####################################################################################################
#' Spotify Viral 50 chart weeks
#'
#' @description This function gets available weeks for the Spotify Viral 50 chart
#'
#' @return A data frame with the weeks
#'
#' @examples
#'
#' chart_weekly_viral50()
#'
#' @export

chart_weekly_viral50 <- function(){
  url <- "https://spotifycharts.com/viral/global/weekly/latest"
  html_data <- xml2::read_html(url)

  weeks <- rvest::html_nodes(html_data, xpath = '//*[@id="content"]/div/div/div/span/div[1]/div/div/div/div[3]/ul/li')
  weeks <- rvest::html_text(weeks)

  weekdates <- rvest::html_nodes(html_data, xpath = '//*[@id="content"]/div/div/div/span/div[1]/div/div/div/div[3]/ul/li')
  weekdates <- rvest::html_attr(weekdates, "data-value")

  weeks_df <- dplyr::data_frame(weeks, weekdates)

  return(weeks_df)
}

####################################################################################################
#' Spotify chart days
#'
#' @description This function gets available days for the charts
#'
#' @return A data frame with the days
#'
#' @examples
#'
#' chart_daily()
#'
#' @export

chart_daily <- function(){
  url <- "https://spotifycharts.com/regional/global/daily/latest"
  html_data <- xml2::read_html(url)

  days <- rvest::html_nodes(html_data, xpath = '//*[@id="content"]/div/div/div/span/div[1]/div/div/div/div[3]/ul/li')
  days <- rvest::html_attr(days, "data-value")

  days_df <- dplyr::data_frame(days)

  return(days_df)
}


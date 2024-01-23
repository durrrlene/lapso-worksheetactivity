library(xml2)
library(httr)
library(rvest)
library(purrr)
library(stringr)
library(dplyr)
library(polite)

#FASHION
HTML_fashion <- read_html("https://www.amazon.com/s?i=specialty-aps&bbn=16225018011&rh=n%3A7141123011%2Cn%3A16225018011%2Cn%3A1040660&ref=nav_em__nav_desktop_sa_intl_clothing_0_2_12_2")


#DESCRIPTION
HTML_fashion %>%
  html_nodes('.s-line-clamp-4') %>%
  html_text() -> fash_brand_desc

#PRICE
HTML_fashion %>% 
  html_nodes('.a-price') %>%
  html_text() -> fash_price

#REVIEWS
HTML_fashion %>%
  html_nodes('.a-size-base.s-underline-text') %>%
  html_text() -> fash_reviews

# STARS
HTML_fashion %>%
  html_nodes('.aok-align-bottom') %>%
  html_text() -> fash_stars


cat("Length of brand description:", length(fash_brand_desc), "\n")
cat("Length of price:", length(fash_price), "\n")
cat("Length of reviews:", length(fash_reviews), "\n")
cat("Number of stars:", length(fash_stars), "\n")


fash_Reviews <- data.frame(
  Description = fash_brand_desc[1:min_length],
  Price = fash_price[1:min_length],
  Reviews = fash_reviews[1:min_length],
  Stars = fash_stars[1:min_length],
  stringsAsFactors = FALSE
)

#DATA OF WOMEN'S FASHION CATEGORY
dim(fash_Reviews)
View(fash_Reviews)

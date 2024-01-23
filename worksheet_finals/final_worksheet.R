# load the packages

library(rvest)
library(tidyverse)
library(httr)
library(dplyr) # use of pipeline %>%
library(polite)
library(kableExtra)

polite::use_manners(save_as = 'polite_scrape.R')

# url object

url <- "https://www.amazon.com/Amazon-Basics-Lightweight-Microfiber-14-Inch/dp/B0154ASID6/ref=sr_1_1_ffob_sspa?adgrpid=142292971629&hvadid=630081699498&hvdev=c&hvlocphy=9066797&hvnetw=g&hvqmt=b&hvrand=17439966261373388638&hvtargid=kwd-1960938220760&hydadcr=21379_13414969&keywords=best%2Bsellers%2B2023%2Bproducts&qid=1702811995&sr=8-1-spons&sp_csd=d2lkZ2V0TmFtZT1zcF9hdGY&th=1"

# convert url to html object

page <- read_html(url)

# asking permission to scrape
session <- bow(url,
               user_agent = "Educational")
session


#review date
review_dates <- page %>%
  html_elements(xpath = "//*[@class='a-size-base a-color-secondary review-date']") %>%
  html_text()


review_dates

#review rating

review_ratings <- page %>%
  html_elements(xpath = "//*[@class='a-icon a-icon-star a-star-5 review-rating']") %>%
  html_attrs()
review_ratings


#review text


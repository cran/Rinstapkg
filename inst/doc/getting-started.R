## ---- echo = FALSE-------------------------------------------------------
NOT_CRAN <- identical(tolower(Sys.getenv("NOT_CRAN")), "true")
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  purl = NOT_CRAN,
  eval = NOT_CRAN
)

## ----auth, include=FALSE, message=FALSE, warning=FALSE-------------------
library(Rinstapkg)

# OAuth2.0 token authentication, which we won't use here
#token_path <- here::here("tests", "testthat", "Rinstapkg_token.rds")
#suppressMessages(ig_auth(token = token_path, verbose = FALSE))

# Username-Password authentication
settings <- readRDS(here::here("tests", "testthat", "Rinstapkg_test_settings.rds"))
ig_auth(username=settings$dev$username, password=settings$dev$password)

## ----load-package, eval=FALSE--------------------------------------------
#  library(Rinstapkg)
#  ig_auth(username = "MY_USERNAME", password = "MY_PASSWORD")

## ----timeline-feed-------------------------------------------------------
timeline_results <- ig_my_timeline()
timeline_results

## ----get-followers-1-----------------------------------------------------
# Get Justin's Biebers beliebers!
# Side Note: A belieber is a HUGE Justin Bieber fan.
bieber_user_id <- ig_get_user_id("justinbieber")
follower_results <- ig_get_followers(bieber_user_id)
follower_results

## ----get-followers-2, eval=FALSE-----------------------------------------
#  # return all 100M+ followers of Justin Bieber
#  follower_results <- ig_get_followers(bieber_user_id, max_pages = Inf)

## ----get-following-------------------------------------------------------
following_results <- ig_get_following(bieber_user_id)
following_results


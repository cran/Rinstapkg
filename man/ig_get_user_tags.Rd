% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/retrieve.R
\name{ig_get_user_tags}
\alias{ig_get_user_tags}
\title{Get Feed of Posts for a Tagged User}
\usage{
ig_get_user_tags(user_id, max_id = NULL, ranked_content = TRUE,
  return_df = TRUE, paginate = TRUE, max_pages = 10,
  verbose = FALSE)
}
\arguments{
\item{user_id}{numeric; the unique id to identify an Instagram user which can be 
found in the \code{"pk"} field on a \code{user} object}

\item{max_id}{integer; the unique id identifying the oldest post that you 
would want to retrieve in this function call}

\item{ranked_content}{logical; do you want the feed content to be sorted by rank?}

\item{return_df}{logical; do you want to return the results as a \code{tbl_df} 
with one row per entity or as a list with one element per entity?}

\item{paginate}{logical; do you want to paginate through results or just return 
the first page?}

\item{max_pages}{integer; a limit to the number of pages to retrieve from 
paginated endpoints. Instagram feeds have the potential to paginate forever, 
so by default we stop after pulling 10 pages. If you would like more or less 
pages returned, then modify this argument.}

\item{verbose}{logical; do you want informative messages?}
}
\description{
This fuction returns all of the posts that the specified user was tagged in.
}
\examples{
\donttest{
bieber_user_id <- ig_get_user_id("justinbieber")
tagged_bieber_posts <- ig_get_user_tags(bieber_user_id)
}
}

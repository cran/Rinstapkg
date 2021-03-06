% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/activity.R
\name{ig_my_recent_activity}
\alias{ig_my_recent_activity}
\title{Get news feed of recent activities by you}
\usage{
ig_my_recent_activity(return_df = TRUE, verbose = FALSE)
}
\arguments{
\item{return_df}{logical; do you want to return the results as a \code{tbl_df} 
with one row per entity or as a list with one element per entity?}

\item{verbose}{logical; do you want informative messages?}
}
\description{
This function returns notifications regarding the actions you have recently took, 
such as what posts you've liked or when you've started following other people.
}
\examples{
\donttest{
my_recent_activity <- ig_my_recent_activity()
}
}

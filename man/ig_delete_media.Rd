% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/media.R
\name{ig_delete_media}
\alias{ig_delete_media}
\title{Delete a Post}
\usage{
ig_delete_media(media_id, verbose = FALSE)
}
\arguments{
\item{media_id}{numeric; the unique id to identify a post which can be 
found in the \code{id}, not the \code{pk} field, of posts returned via many of 
the functions retrieving feeds.}

\item{verbose}{logical; do you want informative messages?}
}
\description{
This function can be used to delete a post.
}
\examples{
\donttest{
last_post_media_id <- ig_my_timeline(paginate = FALSE)$id[1]
deletion_result <- ig_delete_media(last_post_media_id)
}
}

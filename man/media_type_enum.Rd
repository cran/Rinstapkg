% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{media_type_enum}
\alias{media_type_enum}
\title{Lookup Media Type Enum}
\usage{
media_type_enum(media_type = c("PHOTO", "VIDEO", "ALBUM"))
}
\arguments{
\item{media_type}{character; one of three types of media \code{PHOTO}, 
\code{VIDEO}, or \code{ALBUM}.}
}
\description{
This function returns the integer value of a specified type of media
}
\examples{
# photo media are mapped to 1
media_type_enum("PHOTO")

# an unknown media type returns NULL
media_type_enum("FAKE_MEDIA_TYPE")
}

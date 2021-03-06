% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/icpsrdownload.R
\name{icpsr_download}
\alias{icpsr_download}
\title{Download datasets from ICPSR}
\usage{
icpsr_download(
  file_id,
  email = getOption("icpsr_email"),
  password = getOption("icpsr_password"),
  reset = FALSE,
  download_dir = "icpsr_data",
  msg = TRUE,
  unzip = TRUE,
  delete_zip = unzip
)
}
\arguments{
\item{file_id}{The unique identifier (or optionally a vector of these identifiers)
for the dataset(s) to be downloaded (see details).}

\item{email, password}{Your ICPSR email and password (see details)}

\item{reset}{If TRUE, you will be asked to re-enter your ICPSR email and password.}

\item{download_dir}{The directory (relative to your working directory) to
which files from the ICPSR will be downloaded.}

\item{msg}{If TRUE, outputs a message showing which data set is being downloaded.}

\item{unzip}{If TRUE, the downloaded zip files will be unzipped.}

\item{delete_zip}{If TRUE, the downloaded zip files will be deleted.}
}
\value{
The function returns downloaded files.
}
\description{
\code{icpsr_download} provides a programmatic and reproducible means to download datasets from the Inter-university Consortium for Political and Social Research
}
\details{
\code{icpsr_download} provides a programmatic and reproducible means to download 
 datasets from the Inter-university Consortium for Political and Social Research,
 which requires a user account. Sign up for an account at https://www.icpsr.umich.edu
 before proceeding.

 To avoid requiring others to edit your scripts to insert their own email and  
 password or to force them to do so interactively, the default is set to fetch 
 this information from the user's .Rprofile.  Before running \code{icpsr_download}, 
 then, you should be sure to add these options to your .Rprofile substituting your 
 info for the example below:

 \code{
  options("icpsr_email" = "juanita-herrara@uppermidwest.edu",
         "icpsr_password" = "password123!")
 }
 
 If this information is not found a user's .Rprofile, the function will also 
 check in the .Renviron file.  Either file may be easily edited via 
 \code{usethis::edit_r_profile()} or \code{usethis::edit_r_environ()}.
}
\examples{
\dontrun{
 icpsr_download(file_id = c(3730, 36138),
                download_dir = tempdir()) # remember to specify a directory for your download
}

}

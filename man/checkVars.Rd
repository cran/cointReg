% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/check-arguments.R
\name{checkVars}
\alias{checkVars}
\title{Multiple variable checks for certain values.}
\usage{
checkVars(..., out = "assign", .env)
}
\arguments{
\item{...}{[\code{any}]\cr
Variables to check, see details.}

\item{out}{[\code{character}]\cr
Whether to \code{"return"} or to \code{"assign"} the checked
(and converted) object. Also possible: \code{c("return", "assign")}.}

\item{.env}{[\code{environment}]\cr
Environment to which to assign the converted \code{obj} (usually the
same on that contains \code{obj}, if it's a variable).\cr
Required, if argument \code{out} contains \code{"assign"}.}
}
\value{
The checked and converted arguments are assigned to
  the given environment (\code{.env}) or invisibly returned as a \code{list}.
}
\description{
Checking the arguments and convert them for internal use, if necessary.
}
\details{
See \code{\link{checkObject}} for details.
}
\examples{
env = environment()
x.data = data.frame(a = 1:10, b = 20:11)
y.data = 1:10
checkVars(x.coint = x.data, y = y.data, .env = env)
x.coint
y

test = checkVars(x.coint = x.data, y = y.data, out = "return")
str(test)

# If the variables already have the "right" name,
# there's no need to do something like
# checkVars(kernel = kernel, bandwidth = bandwidth) -
# just call checkVars without specifing the arguments:
kernel = "q"
bandwidth = "a"
(checkVars(kernel, bandwidth, out = "return"))

}
\seealso{
Other check: \code{\link{checkDoptions}},
  \code{\link{checkObject}}
}


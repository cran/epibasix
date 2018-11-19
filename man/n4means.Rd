\name{n4means}
\alias{n4means}
\alias{print.n4means}
\alias{summary.n4means}

\title{Number of Subjects Required for a Randomized Trial with a Continuous Outcome}

\description{
This function provides detailed sample size estimation information to determine
the number of subjects that must be enrolled in a randomized trial with a continuous
outcome.}

\usage{n4means(delta, sigma, alpha=0.05, power=0.8, AR=1, two.tailed=TRUE, digits=3)}

\arguments{
\item{delta}{The minimum detectable difference between population means.}
\item{sigma}{The standard error of the outcome.}
\item{AR}{The Allocation Ratio: One implies an equal number of subjects per treatment and control
group (maximum efficiency), > 1, implies more subjects will be enrolled in the control group 
(e.g. in the case of costly intervention), < 1 implies more in the
tretment group (rarely used).}
\item{alpha}{The desired Type I Error Rate}
\item{power}{The desired level of power, recall power = 1 - Type II Error.}
\item{two.tailed}{Logical, If TRUE calculations are based on a two-tailed Type I error,
if FALSE, a one-sided calculation is performed.}
\item{digits}{Number of Digits to round calculations}
}

\details{
This function provides detailed information, similar to PROC POWER in SAS, but with less
functionality and more concise output.  It is used for sample size estimation in 
a randomized trial where the outcome is continuous, such as blood pressure, or weight.
}

\value{
\item{nE}{The minimum number of subjects required in the Experimental group.}
\item{nC}{The minimum number of subjects required in the Control group.}
\item{delta}{The minimum detectable difference between population means.}
\item{sigma}{The standard error of the outcome.}
\item{alpha}{The desired Type I Error Rate}
\item{power}{The desired level of power, recall power = 1 - Type II Error.}
\item{AR}{The Allocation Ratio}
}


\references{
Matthews JNS.  Introduction to Randomized Controlled Clinical Trials (2nd Ed.) Chapman & Hall: New York, 2006.
}

\author{Michael Rotondi, \email{mrotondi@yorku.ca}}

\seealso{\code{\link{n4props}}}

\examples{
\dontrun{Suppose we wish to test whether a blood pressure medication reduces diastolic blood
pressure by 10 mm Hg, at standard significance and power, assume the standard deviation is 10 mm Hg.}
n4means(delta=10, sigma=10, alpha=0.05, power=0.80);
}

\keyword{design}
\name{n4props}
\alias{n4props}
\alias{print.n4props}
\alias{summary.n4props}
\title{Number of Subjects Required for a Randomized Trial with Binary Outcomes}

\description{
This function provides detailed sample size estimation information to determine
the number of subjects that must be enrolled in a randomized trial with a binary
outcome.}

\usage{n4props(pe, pc, alpha=0.05, power = 0.80, AR=1, two.tailed=TRUE, digits=3)}


\arguments{
\item{pe}{The anticipated proportion of individuals in the experimental group with the outcome.}
\item{pc}{The anticipated proportion of individuals in the control group with the outcome.}
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
a randomized trial where the response is binary.  A simple example may include whether
an individual dies from a heart attack.  In epidemiological terms, pe and pc can be thought
of as the expected prevalence of the outcome in the experimental and control group.
}

\value{
\item{nE}{The minimum number of subjects required in the Experimental group.}
\item{nC}{The minimum number of subjects required in the Control group.}
\item{pe}{The anticipated proportion of individuals in the experimental group with the outcome.}
\item{pc}{The anticipated proportion of individuals in the control group with the outcome.}
\item{alpha}{The desired Type I Error Rate}
\item{power}{The desired level of power, recall power = 1 - Type II Error.}
\item{AR}{The Allocation Ratio}
}

\references{
Matthews JNS.  Introduction to Randomized Controlled Clinical Trials (2nd Ed.) Chapman & Hall: New York, 2006.
}

\author{Michael Rotondi, \email{mrotondi@uwo.ca}}

\seealso{\code{\link{n4means}}}

\examples{
\dontrun{Suppose a new drug is thought to reduce heart attack mortality from 0.10 to 0.03. Calculate the required number of subjects that must be enrolled in a study to detect this difference with alpha = 0.05 and power = 0.80.}
n4props(0.03, 0.10, AR=1, alpha=0.05, power=0.80);
}

\keyword{design}

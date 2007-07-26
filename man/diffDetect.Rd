\name{diffDetect}
\alias{diffDetect}
\alias{Mean Difference}
\alias{summary.diffDetect}
\alias{print.diffDetect}
\title{Mean Difference Detetion Tool}

\description{Provides Minimum Detectable Difference in Means Between Two Populations
for fixed values of sigma and n.  Useful for experimental design for randomized trials.
}

\usage{diffDetect(N,sigma,alpha=0.05, power=0.8, two.tailed=TRUE)}

\arguments{
\item{N}{A Vector (or single value) of fixed sample sizes.}
\item{sigma}{A Vector (or single value) of fixed standard deviations sizes.}
\item{alpha}{The desired Type I Error Rate}
\item{power}{The desired level of power, recall power = 1 - Type II Error.}
\item{two.tailed}{Logical, If TRUE calculations are based on a two-tailed Type I error,
if FALSE, a one-sided calculation is performed.}
}

\details{
This function can be used as a tool for sensitivity analysis on the choice of population
standard deviation.  As is often the case, the sample size is fixed by practical considerations,
such as cost or difficulty recruiting subjects.  This simple tool may help determine whether
it is worth performing an experiment that can only detect a given calculated difference
between means.
}

\value{
\item{delta}{A Matrix of minimum detectable differences for fixed values of n and sigma}
\item{N}{A Vector (or single value) of specified sample sizes.}
\item{sigma}{A Vector (or single value) of specified standard deviations sizes.}
\item{alpha}{The desired Type I Error Rate}
\item{power}{The desired level of power, recall power = 1 - Type II Error.}
\item{two.tailed}{Logical, If TRUE calculations are based on a two-tailed Type I error,
if FALSE, a one-sided calculation is performed.}
}

\references{
Matthews JNS.  Introduction to Randomized Controlled Clinical Trials (2nd Ed.) Chapman & Hall: New York, 2006.
}

\author{Michael Rotondi, \email{mrotondi@uwo.ca}}

\examples{
\dontrun{Suppose, for financial considerations we can only enroll 100 people in a blood
pressure medication trial.  What is the minimum difference we can detect between means if 
sigma = 1, 5 or 10 mmHg, at standard levels?}
n <- 100;
sigma <- c(1, 5, 10);
diffDetect(n,sigma);
}

\keyword{design}

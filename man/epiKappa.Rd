\name{epiKappa}
\alias{epiKappa}
\alias{print.epiKappa}
\alias{summary.epiKappa}
\title{Computation of the Kappa Statistic for Agreement Between Two Raters}

\description{
Computes the Kappa Statistic for agreement between Two Raters, performs
Hypothesis tests and calculates Confidence Intervals.
}

\usage{epiKappa(C, alpha=0.05, k0=0.4, digits=3)}

\arguments{
\item{C}{An nxn classification matrix or matrix of proportions.}
\item{k0}{The Null hypothesis, kappa0 = k0}
\item{alpha}{The desired Type I Error Rate for Hypothesis Tests and Confidence Intervals}
\item{digits}{Number of Digits to round calculations}
}

\details{
The Kappa statistic is used to measure agreement between two raters.  For simplicity,
consider the case where each rater can classify an object as Type I, or Type II.  Then,
the diagonal elements of a 2x2 matrix are the agreeing elements, that is where both
raters classify an object as Type I or Type II.  The discordant observations are on the off-diagonal.
Note that the alternative hypothesis is always greater then, as we are interested in whether
kappa exceeds a certain threshold, such as 0.4, for Fair agreement.
}

\value{
\item{kappa}{The computation of the kappa statistic.}
\item{seh}{The standard error computed under H0}
\item{seC}{The standard error as computed for Confidence Intervals}
\item{CIL}{Lower Confidence Limit for \eqn{\kappa}{kappa}}
\item{CIU}{Upper Confidence Limit for \eqn{\kappa}{kappa}}
\item{Z}{Hypothesis Test Statistic, \eqn{\kappa = K0}{kappa = K0} = K0 vs. \eqn{\kappa > K0}{kappa > K0}}
\item{p.value}{P-Value for hypothesis test}
\item{Data}{Returns the original matrix of agreement.}
\item{k0}{The Null hypothesis, kappa = k0}
\item{alpha}{The desired Type I Error Rate for Hypothesis Tests and Confidence Intervals}
\item{digits}{Number of Digits to round calculations}
}

\references{
Szklo M and Nieto FJ.  Epidemiology: Beyond the Basics, Jones and Bartlett: Boston, 2007.

Fleiss J.  Statistical Methods for Rates and Proportions, 2nd ed.  New York: John Wiley and Sons; 1981.
}

\author{Michael Rotondi, \email{mrotondi@uwo.ca}}

\seealso{\code{\link{sensSpec}}}

\examples{
X <- cbind(c(28,5), c(4,61));
summary(epiKappa(X, alpha=0.05, k0 = 0.6));
}

\keyword{design}
\keyword{multivariate}
\keyword{htest}
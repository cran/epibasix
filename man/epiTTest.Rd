\name{epiTTest}
\alias{epiTTest}
\alias{print.epiTTest}
\alias{summary.epiTTest}
\title{Epidemiological T-Test Function}
\description{
This function computes the standard two sample T-Test, as well as performing
hypothesis tests and computing confidence intervals for the equality of both
population means.
}

\usage{epiTTest(X,Y, alpha=0.05, pooled=FALSE, digits=3)}

\arguments{
\item{X}{A vector of observed values of a continuous random variable.}
\item{Y}{A vector of observed values of a continuous random variable.}
\item{alpha}{The desired Type I Error Rate for Confidence Intervals}
\item{pooled}{Logical: If TRUE, a pooled estimate of the variance is used.  That is,
the variance is assumed to be equal in both groups.  If FALSE, the Satterthwaite estimate of the variance is used.}
\item{digits}{Number of Digits to round calculations}

}


\details{
This function performs the simple two-sample T-Test, while providing detailed
information regarding the analysis and summary information for both groups.  Note
that this function requires the input of two vectors, so if the data is stored in
a matrix, it must be separated into two distinct vectors, X and Y.
}

\value{
\item{nx}{The number of observations in X.}
\item{ny}{The number of observations in Y.}
\item{mean.x}{The sample mean of X.}
\item{mean.y}{The sample mean of Y.}
\item{s.x}{The standard deviation of X.}
\item{s.y}{The standard deviation of Y.}
\item{d}{The difference between sample means, that is, mean.x - mean.y.}
\item{s2p}{The pooled variance, when applicable.}
\item{df}{The degrees of freedom for the test.}
\item{TStat}{The test statistic for the null hypothesis \eqn{\mu_X - \mu_Y = 0}{mu_X - mu_Y = 0}.}
\item{p.value}{The P-value for the test statistic for \eqn{\mu_X - \mu_Y = 0}{mu_X - mu_Y = 0}.}
\item{CIL}{The lower bound of the constructed confidence interval for \eqn{\mu_X - \mu_Y = 0}{mu_X - mu_Y = 0}.}
\item{CIU}{The lower bound of the constructed confidence interval for \eqn{\mu_X - \mu_Y = 0}{mu_X - mu_Y = 0}.}
\item{pooled}{Logical: as above for assuming variances are equal.}
\item{alpha}{The desired Type I Error Rate for Confidence Intervals}
}

\references{
Casella G and Berger RL.  Statistical Inference (2nd Ed.) Duxbury: New York, 2002.

Szklo M and Nieto FJ.  Epidemiology: Beyond the Basics, Jones and Bartlett: Boston, 2007.

}

\author{Michael Rotondi, \email{mrotondi@yorku.ca}}

\examples{
X <- rnorm(100,10,1);
Y <- rnorm(100);
summary(epiTTest(X,Y, pooled = FALSE));
}

\keyword{multivariate}
\keyword{htest}

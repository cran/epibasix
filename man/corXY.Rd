\name{corXY}
\alias{corXY}
\alias{summary.corXY}
\alias{print.corXY}
\title{Correlation of Two Vectors}

\description{
This function displays the simple correlation of two vectors of equal length, as well
as providing confidence limits and hypothesis tests.}

\usage{corXY(X, Y, alpha=0.05, rho0 = 0, HA="not.equal", digits=3)}

\arguments{
\item{X}{A Vector of the same length as Y}
\item{Y}{A Vector of the same length as X, This function requires the input of Vectors}
\item{alpha}{The Type I error rate for Hypothesis Tests and Confidence Intervals}
\item{rho0}{The Null Hypothesis for Hypothesis Tests}
\item{HA}{The alternative hypothesis can be one of "less.than", "greater.than", or "not.equal"}
\item{digits}{The number of digits to round results}
}

\details{This function provides the required information, such as the Pearson correlation
Hypothesis Tests and confidence intervals, while providing suitable detail in the and print
statements for epidemiologists to understand the information at hand.}

\value{
\item{rho}{The Sample Pearson Correlation, as calculated in the cor function.}
\item{n}{The sample size.}
\item{Test}{The Test Statistic for the desired hypothesis test based on Fisher's Transformation.}
\item{p.Value}{The p-value for the Hypothesis Test.}
\item{CIL}{The lower bound of the constructed confidence interval for \eqn{\rho}{rho}, again based on Fisher's Z Transformation.}
\item{CIU}{The Upper bound of the constructed confidence interval for \eqn{\rho}{rho}, again based on Fisher's Z Transformation.}
\item{alpha}{The desired Type I Error Rate}
\item{rho0}{The Null Hypothesis}
\item{HA}{The supplied Alternative Hypothesis}
}

\references{
Casella G and Berger RL.  Statistical Inference (2nd Ed.) Duxbury: New York, 2002.
Koepsell TD and Weiss NS.  Epidemiologic Methods.  Oxford University Press: New York, 2003.
}

\author{Michael Rotondi, \email{mrotondi@yorku.ca}}

\examples{
\dontrun{Suppose we want to test whether two randomly generated normal vectors are uncorrelated}
x <- rnorm(100);
y <- rnorm(100);
corXY(x,y);
}

\keyword{multivariate}
\keyword{htest}

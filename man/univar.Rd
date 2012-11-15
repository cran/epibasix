\name{univar}
\alias{univar}
\alias{print.univar}
\alias{summary.univar}
\title{Univariate Analysis of a Single Variable}

\description{
This function provides detailed univariate analysis for a single variable.  Values
include the sample mean, median, standard deviation and range, as well as tools
for hypothesis tests and confidence intervals.
}

\usage{univar(X, alpha=0.05, mu0 = 0, shapiro=FALSE, digits=3)}

\arguments{
\item{X}{A Vector of observed values from a continuous distribution}
\item{alpha}{The desired Type I Error Rate for Hypothesis Tests and Confidence Intervals}
\item{mu0}{The null hypothesis for the true population mean}.
\item{shapiro}{Logical: TRUE returns the Shapiro-Wilks Test for normality, this portion
calls the shapiro.test function.}
\item{digits}{Number of Digits to round calculations}
}

\details{
This function provides a thorough summary of information within a vector.  It
conveniently calculates useful statistics at the call of a single command.  Furthermore,
it provides methods to test the hypothesis/construct confidence intervals for the
true population mean.}

\value{
\item{n}{Number of Observations Used}
\item{mean}{The sample mean of the observations in X.}
\item{median}{The sample median of the observations in X.}
\item{min}{The sample minimum of the observations in X.}
\item{max}{The sample maximum of the observations in X.}
\item{s}{The sample standard deviation of the observations in X.}
\item{var}{The sample variance of the observations in X.}
\item{test}{The test statistic for the null hypothesis \eqn{\mu}{mu}}
\item{p.value}{The p.value for the test statistic for \eqn{\mu}{mu}}
\item{CIL}{The lower bound of the constructed confidence interval for \eqn{\mu}{mu}}
\item{CIU}{The upper bound of the constructed confidence interval for \eqn{\mu}{mu}}
\item{shapiro.statistic}{The value of the Shapiro-Wilks Statistic for Normality.}
\item{shapiro.p.value}{The P-value of the Shapiro-Wilks Statistic for Normality.}
\item{alpha}{The desired Type I Error Rate for Hypothesis Tests and Confidence Intervals}
\item{mu0}{The null hypothesis for the true population mean}.
\item{shapiro}{Logical: TRUE returns the Shapiro-Wilks Test for normality}
\item{digits}{Number of Digits to round calculations}
}

\references{
Casella G and Berger RL.  Statistical Inference (2nd Ed.) Duxbury: New York, 2002.
}
\author{Michael Rotondi, \email{mrotondi@uwo.ca}}

\examples{
x <- rexp(100);
univar(x);
}

\keyword{univar}

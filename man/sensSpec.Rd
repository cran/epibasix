\name{sensSpec}
\alias{sensSpec}
\alias{print.sensSpec}
\alias{summary.sensSpec}

\title{Sensitivity and Specificity Analysis of a 2x2 Matrix}

\description{
This function provides detailed information regarding the comparison of two competing methods,
for example self-report and gold-standard treatment through a sensitivity/specificity analysis.
}

\usage{sensSpec(X, alpha=0.05, CL=TRUE, digits=3)}

\arguments{
\item{X}{A 2x2 matrix, with Gold Standard Class A and B in the columns and Comparison Method A and B in the rows.}
\item{CL}{Logical: If TRUE, Confidence Intervals are calculated and displayed in summary method.}
\item{alpha}{The desired Type I Error Rate for Hypothesis Tests and Confidence Intervals}
\item{digits}{Number of Digits to round calculations}
}

\details{
This function is designed to calculate Sensitivity, Specificity, Youden's J and Percent Agreement.
These tools are used to assess the validity of a new instrument or self-report against the
current gold standard.  In general, self-report is less expensive, but may be subject to
information bias.  Computational formulae can be found in the reference.  
}

\value{
\item{X}{The original input matrix.}
\item{sens}{The point estimate of sensitivity}
\item{spec}{The point estimate of specificity}
\item{PA}{The point estimate of Percent Agreement}
\item{YoudenJ}{The point estimate of Youden's J}
\item{sens.s}{The standard deviation of sensitivity}
\item{spec.s}{The standard deviation of specificity}
\item{PA.s}{The standard deviation of Percent Agreement}
\item{YoudenJ.s}{The standard deviation of Youden's J}
\item{sens.CIL}{The lower bound of the constructed confidence interval for true sensitivity.}
\item{sens.CIU}{The upper bound of the constructed confidence interval for true sensitivity}
\item{spec.CIL}{The lower bound of the constructed confidence interval for true specificity.}
\item{spec.CIU}{The upper bound of the constructed confidence interval for true specificity.}
\item{PA.CIL}{The lower bound of the constructed confidence interval for Percent Agreement.}
\item{PA.CIU}{The upper bound of the constructed confidence interval for Percent Agreement.}
\item{YoudenJ.CIL}{The lower bound of the constructed confidence interval for Youden's J.}
\item{YoudenJ.CIU}{The upper bound of the constructed confidence interval for Youden's J.}
\item{alpha}{The desired Type I Error Rate for Hypothesis Tests and Confidence Intervals}
\item{digits}{Number of Digits to round calculations}
}

\references{
Szklo M and Nieto FJ.  Epidemiology: Beyond the Basics, Jones and Bartlett: Boston, 2007.
}

\note{
All confidence limits rely on simple asymptotic theory, as such, confidence limits
may lie outside of [0,1].  A more accurate method is available in the twoby2 function
of the Epi package, which employs a logit transformation.
}

\author{Michael Rotondi, \email{mrotondi@yorku.ca}}

\seealso{\code{\link{kappa}}}

\examples{
\dontrun{From Szklo and Nieto, p. 315}
dat <- cbind(c(18,1), c(19,11));
summary(sensSpec(dat));
}

\keyword{multivariate}
\keyword{design}
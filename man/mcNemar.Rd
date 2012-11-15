\name{mcNemar}
\alias{mcNemar}
\alias{print.mcNemar}
\alias{summary.mcNemar}
\title{Pair-Matched Analysis Tool}
\description{
This function performs elemenentary pair-matched analysis using McNemar's test and
computing risk differences.
}

\usage{mcNemar(X, alpha= 0.05, force=FALSE, digits=3)}

\arguments{
\item{X}{A 2x2 matrix, with disease status (Yes/No) for the exposed individual in the columns and disease status (Yes/No) for the control individuals in the rows.  Note that for a matched-pair analysis, each entry corresponds to a pair of subjects.}
\item{alpha}{The desired Type I Error Rate for Hypothesis Tests and Confidence Intervals}
\item{force}{Logical: McNemar's test is typically valid when the number of discordant pairs
exceeds 30.  The function may be forced to work, without regards to this concern with FORCE=TRUE.}
\item{digits}{Number of Digits to round calculations}
}

\details{
McNemar's OR is computed as b/c.  While standard errors are computed using a transformation.
The risk difference is computed as \eqn{(b - c)/n}{(b-c)/n}.  Note that this technique can be used for
cohort studies as well as matched trials.
}

\value{
\item{X}{The original input matrix.}
\item{ORMc}{McNemar's Odds Ratio}
\item{ORMC.CIL}{Lower Confidence Limit for McNemar's OR}
\item{ORMC.CIU}{Upper Confidence Limit for McNemar's OR}
\item{rd}{Point Estimate of the risk difference}
\item{rd.CIL}{Lower Confidence Limit for the risk difference}
\item{rd.CIU}{Upper Confidence Limit for the risk difference}
\item{XMc}{Value for McNemar's Chi-squared statistic}.
\item{XMc.p.Value}{P-value for the hypothesis test of no association.}
\item{alpha}{The desired Type I Error Rate for Hypothesis Tests and Confidence Intervals}
\item{digits}{Number of Digits to round calculations}
}

\references{
Szklo M and Nieto FJ.  Epidemiology: Beyond the Basics, Jones and Bartlett: Boston, 2007.
}

\author{Michael Rotondi, \email{mrotondi@uwo.ca}}

\seealso{\code{\link{epi2x2}}}

\examples{
\dontrun{Data for matched-cohort study, comparing smokers to non-smokers for the presence
of lung cancer.}
X <- cbind(c(15,5), c(19,61));
summary(mcNemar(X, alpha=0.05, force=TRUE));
}

\keyword{multivariate}
\keyword{design}
\name{epi2x2}
\alias{epi2x2}
\alias{Contingency Table}
\alias{print.epi2x2}
\alias{summary.epi2x2}

\title{Epidemiological 2x2 Contingency Table Analysis Tool}
\description{
This function analyzes 2x2 tables assuming either a case-control or cohort study.  
Information such as Pearson's chi-squared test, the odds ratio, risk difference and relative risk are computed, as well as confidence intervals.}

\usage{epi2x2(X,alpha=0.05, digits=3)}

\arguments{
\item{X}{A 2x2 matrix in standard epidemiological format, that is, column one represents
outcome present, column two outcome absent, while row one represents risk present and row two
represents risk absent.  This is crucial for correct computation of odds ratio and parameters.}
\item{alpha}{The desired Type I Error Rate for Hypothesis Tests and Confidence Intervals}
\item{digits}{Number of Digits to round calculations}
}

\details{
This function is similar to PROC FREQ in SAS, as it provides the comprehensive analysis
of a 2x2 contingency table.  Again, I must stress that the table must be entered in the appropriate
format, or unsuitable estimates will result.  In a case control study, cases should be entered
as column one and controls as column two.
}

\value{
\item{X}{The original input matrix.}
\item{Sy}{Value for Pearson's Chi-squared statistic (with continuity correction).}
\item{Sy.p.value}{P-value for the hypothesis test of no association.}
\item{Fisher.p.value}{P-value for the hypothesis test of no association. (Using Fisher's Exact Test)}
\item{OR}{Point Estimate of the odds ratio.}
\item{OR.CIL}{Lower Confidence Limit for the odds ratio.}
\item{OR.CIU}{Upper Confidence Limit for the odds ratio.}
\item{p1Co}{Row One Risk (Cohort Study)}
\item{p2Co}{Row Two Risk (Cohort Study)}
\item{rdCo}{Risk difference (Cohort Study).  That is p1Co - p2Co.}
\item{rdCo.CIL}{Lower Confidence Limit for Risk Difference in a cohort study.}
\item{rdCo.CIU}{Upper Confidence Limit for Risk Difference in a cohort study.}
\item{RR}{Relative Risk (Cohort Study)}
\item{RR.CIL}{Lower Confidence Limit for Relative Risk in a cohort study.}
\item{RR.CIU}{Upper Confidence Limit for Relative Risk in a cohort study.}
\item{p1CC}{Column One Risk (Case-Control Study)}
\item{p2CC}{Column Two Risk (Case-Control Study)}
\item{rdCC}{Risk difference (Case-Control Study).  That is p1CC - p2CC.}
\item{rdCC.CIL}{Lower Confidence Limit for Risk Difference in a case-control study.}
\item{rdCC.CIU}{Upper Confidence Limit for Risk Difference in a case-control study.}
\item{alpha}{The desired Type I Error Rate for Hypothesis Tests and Confidence Intervals}
\item{digits}{Number of Digits to round calculations}
}

\references{
Szklo M and Nieto FJ.  Epidemiology: Beyond the Basics, Jones and Bartlett: Boston, 2007.
}

\author{Michael Rotondi, \email{mrotondi@uwo.ca}}

\seealso{\code{\link{mcNemar}}}

\examples{
data <- cbind(c(100, 225), c(58, 45));
summary(epi2x2(data));
}

\keyword{multivariate}
\keyword{design}
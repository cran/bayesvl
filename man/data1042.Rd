\encoding{UTF-8}
\name{data1042}
\alias{data1042}
\title{Dataset on Health, Insurance, and Financial Destitution in Vietnam}
\description{
A dataset of 1,042 inpatients from hospitals in Northern Vietnam, collected over 20 months (August 2014 – March 2016). The dataset covers healthcare access, health insurance, treatment costs, financial burden, and socio-demographic variables. It has been used in multiple peer-reviewed publications.
}
\usage{
data(data1042)
}

\format{
A data frame with 1,042 observations and 45 variables. Selected variables:

\describe{
  \item{\code{Age}}{Patient's age.}
  \item{\code{Burden}}{Financial burden after treatment.}
  \item{\code{Days}}{Length of hospital stay.}
  \item{\code{Dcost}}{Daily hospital cost.}
  \item{\code{Edu}}{Educational attainment.}
  \item{\code{End}}{Treatment outcome.}
  \item{\code{IfHigher}}{Expected financial impact if treatment continued.}
  \item{\code{Illness}}{Severity/type of illness.}
  \item{\code{Income}}{Annual income.}
  \item{\code{Insured}}{Whether the patient had insurance.}
  \item{\code{Pchar}}{Portion covered by charity.}
  \item{\code{Pinc}}{Portion covered by income.}
  \item{\code{Pins}}{Portion covered by insurance reimbursement.}
  \item{\code{Ploan}}{Portion covered by loans.}
  \item{\code{Res}}{Region of residence.}
  \item{\code{SES}}{Socioeconomic status.}
  \item{\code{SatIns}}{Satisfaction with insurance.}
  \item{\code{Saving}}{Percentage of savings used.}
  \item{\code{Sex}}{Patient's gender (1 = female, 2 = male).}
  \item{\code{Spent}}{Total amount spent on treatment.}

  \item{\code{AvgCost}}{Not yet documented.}
  \item{\code{Dcost_USD}}{Not yet documented.}
  \item{\code{EnvL}}{Not yet documented.}
  \item{\code{Hospital}}{Not yet documented.}
  \item{\code{ID}}{Not yet documented.}
  \item{\code{Ill2}}{Not yet documented.}
  \item{\code{IncRank}}{Not yet documented.}
  \item{\code{Income_USD}}{Not yet documented.}
  \item{\code{InsGap}}{Not yet documented.}
  \item{\code{InsL}}{Not yet documented.}
  \item{\code{InsL2}}{Not yet documented.}
  \item{\code{Jcond}}{Not yet documented.}
  \item{\code{LoanL}}{Not yet documented.}
  \item{\code{MaxIns}}{Not yet documented.}
  \item{\code{SatServ}}{Not yet documented.}
  \item{\code{Senv}}{Not yet documented.}
  \item{\code{Spent_USD}}{Not yet documented.}
  \item{\code{Srel}}{Not yet documented.}
  \item{\code{Stay}}{Not yet documented.}
  \item{\code{Streat}}{Not yet documented.}
  \item{\code{WkYrs}}{Not yet documented.}

}

}

\references{
Ho, M.T.; La, V.P.; Nguyen, M.H.; Vuong, Q.H. et al. (2019). "Health care, health insurance and economic destitution: A dataset of 1042 stories." \emph{Data}, 4. \cr
\url{https://www.mdpi.com/journal/data} \cr

Related studies:
\itemize{
  \item Vuong, Q.H. (2015). Be rich or don’t be sick. \emph{SpringerPlus}. \doi{10.1186/s40064-015-1279-x}
  \item Vuong, Q.H. (2016). Data on Vietnamese patients’ financial burdens. \emph{Data in Brief}. \doi{10.1016/j.dib.2016.09.040}
  \item Vuong, Q.H. (2017). Health insurance thresholds in Vietnam. \emph{Biomedical Research}.
}
}
\examples{
data(data1042)

# View structure
str(data1042)

# Summarize financial burden
table(data1042$Burden)
}
\keyword{datasets}

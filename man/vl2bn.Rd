\name{bayesvl bnlearn utilities}
\alias{bayesvl bnlearn utilities}
\alias{bayesvl bnlearn}
\alias{bvl_bnBayes,bayesvl-method}
\alias{bvl_bnScore,bayesvl-method}
\alias{bvl_bnStrength,bayesvl-method}
\alias{bvl_bnBarchart,bayesvl-method}
\alias{bvl_bnPlot,bayesvl-method}

\alias{bvl_bnBayes}
\alias{bvl_bnScore}
\alias{bvl_bnStrength}
\alias{bvl_bnBarchart}

\alias{bvl_modelData}
\alias{bvl_compareLoo}
\alias{bvl_compareWAIC}

\title{bnlearn interface for bayesvl objects}
\description{

  Provides the interface to the functions in the bnlearn package for network diagnostics of an object of class \code{bayesvl}.

}
\usage{

# Interface to bn.fit function to fit the parameters of 
# a Bayesian network conditional on its structure.
bvl_bnBayes(dag, data = NULL, method = "bayes", iss = 10, ...)

# Interface to bnlearn score function to compute the score of the Bayesian network.
bvl_bnScore(dag, data = NULL, ...)

# Interface to arc.strength function to measure the strength of the probabilistic 
# relationships expressed by the arcs of a Bayesian network.
bvl_bnStrength(dag, data = NULL, criterion = "x2", ...)

# Interface to bn.fit.barchart function to plot fit 
# the parameters of a Bayesian network conditional on its structure.
bvl_bnBarchart(dag, data = NULL, method = "bayes", iss = 10, ...) 

bvl_modelData (net, data)

bvl_compareLoo (dag1, dag2, ...)

bvl_compareWAIC (dag1, dag2, ...)

}
\arguments{
  \item{dag}{an object of class \code{bayesvl}}
  
  \item{data}{a data frame containing the variables in the model.}
  
  \item{method}{a character string, either mle for Maximum Likelihood parameter estimation or bayes 
  for Bayesian parameter estimation (currently implemented only for discrete data).}
  
  \item{iss}{a numeric value, the imaginary sample size used by the bayes method to estimate 
  the conditional probability tables associated with discrete nodes}

  \item{criterion}{a character string, the method using for measuring}

  \item{net}{network graph}

  \item{dag1}{first model to compare}

  \item{dag2}{second model to compare}
  
  \item{...}{extra arguments from the generic method}
}
\value{

  \code{bvl_bnScore()} return a number, value of score. \cr

}
\references{
For documentation, case studies, worked examples, and other tutorial materials, visit the References section on our GitHub:

\itemize{
  \item \href{https://github.com/sshpa/bayesvl/tree/master/References}{https://github.com/sshpa/bayesvl/tree/master/References}
}

For case studies using the package in research articles, see:

\itemize{
  \item \href{https://www.nature.com/articles/s41599-020-0442-3}{https://www.nature.com/articles/s41599-020-0442-3}
}
}
\author{La Viet-Phuong, Vuong Quan-Hoang}
\keyword{directed acyclic graphs}
\keyword{bayesvl}
\keyword{bayesvl bnlearn}

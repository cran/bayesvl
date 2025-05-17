\name{bayesvl-stan-utilities}
\alias{bayesvl-stan-utilities}
\alias{bvl_model2Stan}
\alias{bvl_modelFit}
\alias{bvl_stanPriors}
\alias{bvl_stanParams}
\alias{bvl_formula}
\alias{bvl_stanLikelihood}
\alias{bvl_stanLoo}
\alias{bvl_stanWAIC}

\title{Build Stan Models from Directed Acyclic Graphs}

\description{
Functions to generate Stan code and run simulations using a model object of class \code{bayesvl}, which represents a Bayesian directed acyclic graph (DAG).
}

\usage{
bvl_model2Stan(dag, ppc = "")

bvl_modelFit(dag, data, warmup = 1000, iter = 5000, chains = 2, ppc = "", ...)

bvl_stanPriors(dag)

bvl_stanParams(dag)

bvl_formula (dag, nodeName, outcome = T, re = F)

bvl_stanLikelihood (dag)

bvl_stanLoo (dag, ...)

bvl_stanWAIC (dag, ...)
}

\arguments{
  \item{dag}{An object of class \code{bayesvl} representing the model DAG.}
  \item{data}{A data frame or list containing the observed data for model fitting.}
  \item{warmup}{Number of warmup iterations; defaults to half of \code{iter}.}
  \item{iter}{Total number of iterations for sampling. Default is 5000.}
  \item{chains}{Number of MCMC chains to run. Default is 2.}
  \item{ppc}{Optional: a character string containing Stan code for posterior predictive checks.}
  \item{...}{Additional arguments passed to underlying functions.}
  \item{nodeName}{The name of the node to generate formula for.}
  \item{outcome}{Logical. Whether to include outcome distribution. Default is \code{TRUE}.}
  \item{re}{Logical. Whether to recursively trace all upstream nodes. Default is \code{FALSE}.}
}

\value{
The following outputs are returned depending on the function used:

\itemize{
  \item{\code{bvl_model2Stan}: Returns a character string containing the generated Stan model code.}
  \item{\code{bvl_modelFit}: Returns an object of class \code{bayesvl} with the following slots:
    \itemize{
      \item{\code{model}: The Stan model code.}
      \item{\code{stanfit}: A \code{stanfit} object returned by \code{rstan}.}
      \item{\code{standata}: The data list used in sampling.}
      \item{\code{pars}: A list of parameter names being monitored.}
      \item{\code{formula}: The formula representation of the model.}
    }
  }
  \item{\code{bvl_stanPriors}: Returns a character string of the prior distributions used in the model.}
  \item{\code{bvl_stanParams}: Returns a character string of parameter block content for Stan.}
  \item{\code{bvl_formula}: Returns the formula associated with the specified node.}
}
}

\references{
For documentation, case studies, worked examples, and other tutorial materials, see:

\itemize{
  \item \href{https://github.com/sshpa/bayesvl/tree/master/References}{User Guide and Examples on GitHub}
  \item \href{https://www.nature.com/articles/s41599-020-0442-3}{Published Case Study in Humanities and Social Sciences Communications}
}
}

\examples{
# Design the model using a directed acyclic graph
model <- bayesvl()
model <- bvl_addNode(model, "Lie", "binom")
model <- bvl_addNode(model, "B", "binom")
model <- bvl_addNode(model, "C", "binom")
model <- bvl_addNode(model, "T", "binom")

model <- bvl_addArc(model, "B", "Lie", "slope")
model <- bvl_addArc(model, "C", "Lie", "slope")
model <- bvl_addArc(model, "T", "Lie", "slope")

# Generate Stan model code
model_string <- bvl_model2Stan(model)
cat(model_string)

# Display priors in generated Stan model
bvl_stanPriors(model)
}

\author{
La Viet-Phuong, Vuong Quan-Hoang
}

\keyword{Bayesian}
\keyword{models}
\keyword{graph}
\keyword{rstan}

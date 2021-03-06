\name{bayesvl stan utilities}
\alias{bayesvl stan}
\alias{bayesvl stan utilities}
\alias{bvl_model2Stan}
\alias{bvl_modelFit}
\alias{bvl_stanPriors}
\alias{bvl_stanParams}
\alias{bvl_formula}
\title{Build RStan models from directed acyclic graph}
\description{

  Build Stan models from directed acyclic graph of an object of class \code{bayesvl}.

}
\usage{
# build Stan models from directed acyclic graph.
bvl_model2Stan(dag, ppc = "")

# compile and simulate samples from the model.
bvl_modelFit(dag, data, warmup = 1000, iter = 5000, chains = 2, ppc = "", ...)

# summarize the stan priors used for the model.
bvl_stanPriors(dag)

# summarize the stan parameters used for the model.
bvl_stanParams(dag)

# summarize the generated formula at the node.
bvl_formula(dag, nodeName, outcome = T, re = F)
}
\arguments{
  \item{dag}{an object of class \code{bayesvl}}
  \item{data}{a data frame or list containing the data}

  \item{warmup}{Optional: Number of warmup iterations. By default, half of iter}
  \item{iter}{Optional: Number of iterations of sampling. Default is 5000}
  \item{chains}{Optional: Number of independent chains to sample from. Default is 2}
  \item{ppc}{Optional: a character string contains posterior predictive check scripts}
  \item{...}{extra arguments from the generic method}
  
  \item{nodeName}{A character string contains the node name}
  \item{outcome}{Optional: Whether show out distribution}
  \item{re}{Optional: Whether run recursive for all up-level nodes}
}
\value{

  \code{bvl_model2Stan()} return character string of rstan code generated from the model. \cr

  \code{bvl_modelFit()} return an object class \code{bayesvl} which contains result with the following slots.
    \item{model}{Stan model code}
    \item{stanfit}{\code{stanfit} object returned by \code{\link{stan}}}
    \item{standata}{The data}
    \item{pars}{Parameter names monitored in samples}
    \item{formula}{Generated formula from the model}

  \code{bvl_stanPriors()} return character string of rstan priors generated from the model. \cr

  \code{bvl_stanParams()} return character string of rstan parameters generated from the model. \cr
}
\references{
For documentation, case studies and worked examples, and other
  tutorial information visit the References section on our Github:
  
  \itemize{
  \item \href{https://github.com/sshpa/bayesvl/raw/master/References/bvl_ug_en08.pdf}{github.com/sshpa/bayesvl/master/References/bvl_ug_en08.pdf}
  }
}
\examples{

# Design the model in directed acyclic graph
model <- bayesvl()
model <- bvl_addNode(model, "Lie", "binom")
model <- bvl_addNode(model, "B", "binom")
model <- bvl_addNode(model, "C", "binom")
model <- bvl_addNode(model, "T", "binom")

model <- bvl_addArc(model, "B", "Lie", "slope")
model <- bvl_addArc(model, "C", "Lie", "slope")
model <- bvl_addArc(model, "T", "Lie", "slope")

# Generate the Stan model's code
model_string <- bvl_model2Stan(model)
cat(model_string)

# Show priors in generated Stan model
bvl_stanPriors(model)

}
\author{La Viet-Phuong, Vuong Quan-Hoang}
\keyword{directed acyclic graphs, bayesvl}

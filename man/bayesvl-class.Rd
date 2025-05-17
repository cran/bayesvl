\name{bayesvl-class}
\Rdversion{1.0}
\docType{class}
\alias{bayesvl-class}
\alias{show,bayesvl-method}
\alias{summary,bayesvl-method}
\alias{bvl_addNode,bayesvl-method}
\alias{bvl_addArc,bayesvl-method}
\alias{bvl_modelFit,bayesvl-method}
\alias{bvl_stanParams,bayesvl-method}

\title{Class \code{bayesvl}: Object Class for BayesVL Models}

\description{
An S4 class that represents a Bayesian model created using the \code{bayesvl} package.
This object is typically returned by functions such as \code{\link[bayesvl]{bayesvl}}.
}

\section{Slots}{
  \describe{
    \item{\code{call}}{Original function call that created the model.}
    \item{\code{nodes}}{List of nodes in the model.}
    \item{\code{arcs}}{List of arcs (edges) connecting the nodes.}
    \item{\code{pars}}{List of model parameters.}
    \item{\code{stanfit}}{An object of class \code{stanfit}, representing the fitted Stan model.}
    \item{\code{rawdata}}{A data frame containing observed input data.}
    \item{\code{standata}}{Data list used for Stan sampling.}
    \item{\code{posterior}}{A data frame representation of posterior draws from the \code{stanfit} object.}
    \item{\code{elapsed}}{Elapsed time for the MCMC simulation (in seconds).}
  }
}

\section{Methods}{
  \describe{
    \item{\code{show}}{\code{signature(object = "bayesvl")}: Prints a default summary of the model.}
    \item{\code{summary}}{Displays a more detailed overview of the model structure and output.}
  }
}

\references{
For documentation, case studies, worked examples, and other tutorial materials, visit our GitHub:

\itemize{
  \item \href{https://github.com/sshpa/bayesvl/tree/master/References}{https://github.com/sshpa/bayesvl/tree/master/References}
}

For case studies using the package in research articles, refer to:

\itemize{
  \item \href{https://www.nature.com/articles/s41599-020-0442-3}{https://www.nature.com/articles/s41599-020-0442-3}
}
}

\seealso{
  \code{\link[bayesvl]{bayesvl}}
}

\examples{
# Design the model in a directed acyclic graph
model <- bayesvl()

# Add observed data nodes to the model
model <- bvl_addNode(model, "Lie", "binom")
model <- bvl_addNode(model, "B", "binom")
model <- bvl_addNode(model, "C", "binom")
model <- bvl_addNode(model, "T", "binom")

# Add paths between nodes
model <- bvl_addArc(model, "B", "Lie", "slope")
model <- bvl_addArc(model, "C", "Lie", "slope")
model <- bvl_addArc(model, "T", "Lie", "slope")

# Summarize the model
summary(model)
}

\keyword{classes}

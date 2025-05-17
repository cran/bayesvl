\name{bayesvl-package}
\alias{bayesvl-package}
\alias{bayesvl}
\docType{package}
\title{BayesVL: Visual Learning and Bayesian Statistical Analysis in R}
\description{
An R package for visually constructing graphical models of Bayesian networks and performing Hamiltonian Monte Carlo (HMC) via Stan, using functions such as \code{\link[bayesvl]{bvl_model2Stan}} and \code{\link[bayesvl]{bvl_modelFit}}.
}
\details{
\tabular{ll}{
  Package: \tab bayesvl\cr
  Type: \tab Package\cr
  Version: \tab 0.8.0\cr
  Date: \tab 2019-05-13\cr
  License: \tab GPL-3\cr
  Website: \tab \href{https://github.com/sshpa/bayesvl}{https://github.com/sshpa/bayesvl}\cr
}
}
\author{
Quan-Hoang Vuong, Viet-Phuong La
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
\examples{
# Create a new model
model <- bayesvl()

# Add observed data nodes
model <- bvl_addNode(model, "Lie", "binom")
model <- bvl_addNode(model, "B", "binom")
model <- bvl_addNode(model, "C", "binom")
model <- bvl_addNode(model, "T", "binom")

# Add directed arcs
model <- bvl_addArc(model, "B", "Lie", "slope")
model <- bvl_addArc(model, "C", "Lie", "slope")
model <- bvl_addArc(model, "T", "Lie", "slope")

# View model summary
summary(model)
}
\seealso{
\code{\link[bayesvl]{bayesvl-class}}, 
\code{\link[bayesvl]{bvl_modelFit}}, 
\code{\link[bayesvl]{bvl_model2Stan}}
}
\keyword{Bayesian}
\keyword{package}

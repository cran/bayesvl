\name{bayesvl-news}
\alias{bayesvl-changelog}
\title{News for Package 'bayesvl'}

\description{
This page documents major changes and updates in the development of the \pkg{bayesvl} package.
}

\section{Changes in version 1.0.0}{
\itemize{
  \item Updated many functions.
  \item Added posterior predictive check (PPC) support.
}
}

\section{Changes in version 0.9.0}{
\itemize{
  \item Added WAIC estimation functions.
  \item Added LOO 2.0 estimation functions.
  \item Added model comparison functions.
  \item Updated \code{.Rd} documentation and other metadata.
}
}

\section{Changes in version 0.8.5}{
\itemize{
  \item Updated \code{.Rd} documentation and other metadata.
  \item Fixed bugs for CRAN submission.
}
}

\section{Changes in version 0.7.6}{
\itemize{
  \item Fixed error in single-node models.
  \item Updated \code{.Rd} documentation and other metadata.
}
}

\section{Changes in version 0.7.0}{
\itemize{
  \item Fixed alpha intercept in varying intercept models.
  \item Fixed \code{lower = 0} constraint for varying intercept models.
  \item Renamed \code{net2stan.r} to \code{bayesvl2stan.r}.
  \item Added WAIC calculation support.
}
}

\section{Changes in version 0.6.8}{
\itemize{
  \item Added arc templates.
  \item Added model validation functions.
  \item Added automatic generation of data list for Stan.
  \item Added log-likelihood comparison function.
}
}

\section{Changes in version 0.6.5}{
\itemize{
  \item Supported node type \code{Dummy} for temporary parameters.
  \item Supported node type \code{Trans} for transformed data.
  \item Supported custom \code{generated quantities} block.
  \item Supported \code{y_rep} and \code{log_lik} output.
  \item Updated \code{README.md}.
}
}

\section{Changes in version 0.6.0}{
\itemize{
  \item Added more distribution templates.
  \item Updated Stan code generator from network graph.
  \item Updated \code{README.md}.
}
}

\section{Changes in version 0.5.1}{
\itemize{
  \item Numerous documentation updates.
}
}

\section{Changes in version 0.5.0}{
\itemize{
  \item Added functions for Stan code generation.
  \item Added distribution templates.
  \item Updated \code{README.md}.
}
}

\section{Changes in version 0.3.0}{
\itemize{
  \item Added \code{bnPlot()}, \code{bnScore()}, \code{bnStrength()} to interface with \code{bnlearn}.
  \item Added utilities to convert between bayesvl and bnlearn structures.
  \item Updated \code{README.md}.
}
}

\section{Changes in version 0.2.0}{
\itemize{
  \item Added functions to add/remove nodes and arcs in the network graph.
  \item Added network initialization function.
  \item Implemented \code{bayesvl} class.
  \item First fully documented release.
}
}

\section{Changes in version 0.1.0}{
\itemize{
  \item Initial package description and metadata.
  \item First public release.
}
}

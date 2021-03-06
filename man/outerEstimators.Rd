% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/matrixpls.outer.R
\name{outerEstimators}
\alias{outer.gsca}
\alias{outer.modeA}
\alias{outer.modeB}
\alias{outerEstimators}
\title{PLS outer estimation}
\usage{
outer.modeA(S, W, E, W.model, ...)

outer.modeB(S, W, E, W.model, ...)

outer.gsca(S, W, E, W.model, model, ...)
}
\arguments{
\item{S}{Covariance matrix of the data.}

\item{W}{Weight matrix, where the indicators are on colums and composites are on the rows.}

\item{E}{Inner weight matrix. A square matrix of inner estimates between the composites.}

\item{W.model}{A matrix specifying the weight relationships and their starting values.}

\item{...}{All other arguments are ignored.}

\item{model}{There are two options for this argument: 1. lavaan script or lavaan parameter
table, or 2. a list containing three matrices
\code{inner}, \code{reflective}, and \code{formative} defining the free regression paths
in the model.}
}
\value{
A matrix of unscaled outer weights \code{W} with the same dimesions as \code{W.model}.
}
\description{
Calculates a set of unstandardized outer weights.

Mode A outer weights are correlations between indicators and composites.
Mode B outer weights are regression coefficients of composites on indicators. 

For information about GSCA weights, see \link{GSCA}.
}
\section{Functions}{
\itemize{
\item \code{outer.modeA}: Mode A outer estimation.

\item \code{outer.modeB}: Mode B outerestimation.

\item \code{outer.gsca}: outer estimation with generalized structured component analysis.
}}
\references{
Lohmöller J.-B. (1989) \emph{Latent variable path modeling with partial least squares.} Heidelberg: Physica-Verlag.
}


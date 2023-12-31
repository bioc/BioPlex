% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/corum.R
\name{corum2graphlist}
\alias{corum2graphlist}
\title{Represent CORUM protein complex data as a list of graph instances}
\usage{
corum2graphlist(corum.df, subunit.id.type = c("UNIPROT", "ENTREZID"))
}
\arguments{
\item{corum.df}{A \code{data.frame} storing the CORUM protein complex data.
Typically obtained via \code{\link{getCorum}}.}

\item{subunit.id.type}{character. Supported options include \code{"UNIPROT"}
(default) and \code{"ENTREZID"}.}
}
\value{
A \code{list} with an entry for each complex. Each entry is an
object of class \code{graphNEL} connecting all subunit IDs with each other
by undirected edges.
}
\description{
Functionality for storing CORUM protein complex data in a
\code{list} of \code{graph} instances.
}
\examples{
 # (1) Obtain the core set of CORUM complexes ...
 core <- getCorum(set = "core")
 
 # (2) ... turn into a list of graphs
 core.glist <- corum2graphlist(core)
}
\references{
CORUM: \url{http://mips.helmholtz-muenchen.de/corum/#download}
}

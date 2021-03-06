% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/unitedSimOne.R
\name{unitedSimOne}
\alias{unitedSimOne}
\title{Simulating a formation}
\usage{
unitedSimOne(
  home,
  away,
  r,
  penaltyProb = 0.1,
  preventGoalGK = 1/14,
  preventGoalSW = 1/15,
  hardnessMatrix,
  overtime = FALSE
)
}
\arguments{
\item{home}{home team (an object of the \code{S4}class \code{formation})}

\item{away}{away team (an object of the \code{S4}class \code{formation})}

\item{r}{number of replications for the simulation of hardness and penalties, can 
be \code{missing} (exact results will be computed)}

\item{penaltyProb}{occurrence probability of a penalty}

\item{preventGoalGK}{factor multiplicied with the strength of the GK for computing the 
probability of preventing a goal by the goalkeeper}

\item{preventGoalSW}{factor multiplicied with the strength of the SW for computing the 
probability of preventing a goal by the sweeper}

\item{hardnessMatrix}{\code{matrix} matrix with eleven columns which contain the probability 
for yellow cards dependent on the used hardness}

\item{overtime}{\code{logical}, if True overtime win probabilites are calculated. Only
available if total hardness is zero or one.}
}
\value{
Creates an object of the \code{unitedSim} class.
}
\description{
Simulates a formation against another formation.
}
\examples{
home <- formation(10, NA, c(7,5,3), c(8,8), c(10,10,8))
away <- formation(5, 8, c(8,8), c(10,10), c(10,10,10),
 hardness = c(0,0,0,0,1))
set.seed(123)
unitedSimOne(home, away)
# results with overtime
# Note: Only key statistics are adjusted for overtime
unitedSimOne(home, away, overtime = TRUE)
# simulating the game
unitedSimOne(home, away, r = 100)

}
\seealso{
\code{\link{unitedSim}}
}
